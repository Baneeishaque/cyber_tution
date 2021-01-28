using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
//using System.Windows.Forms;
using System.Text;

public partial class TakeTest2 : System.Web.UI.Page
{
    static string sno, tno;
    static int examd_id, marks;
    static Int32 totalQs;
    static bool IsLastQs = false;
    //ConnectToDb mydb = new ConnectToDb();
    DBhandler dh = new DBhandler();
    static DataSet Questions;
    long timerStartValue = 1800;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user_id"] == null)
        {
            Response.Write("<script>alert('Your Session Timer has Expired! We are Sorry!')</script>");
            Response.Redirect("StudentHome.aspx");
        }

        if (!IsPostBack)
        {
            this.timerStartValue = 60000;//long.Parse(ConfigurationManager.AppSettings["Delay"].ToString());
            this.TimerInterval = 500;
            tno = Request.QueryString["exam_id"].ToString();

            Questions = GetDataSet();

            totalQs = Convert.ToInt32(dh.GetValue("select count(*) from ExamDetails where exam_id=" + tno + ""));
            LoadQuestion();

            DataSet questions = new DataSet("Questions");
            questions.Tables.Add();
            marks = 0;


        }
    }

    public DataSet GetDataSet()
    {
        DataSet QuestionSet = new DataSet();
        DataTable QTable = new DataTable();

        string query = "select * from ExamDetails where exam_id=" + tno + "";

        QTable = dh.GetTable(query);
        QuestionSet.Tables.Add(QTable);
        return QuestionSet;

    }


    void Page_PreRender(object sender, EventArgs e)
    {
        StringBuilder bldr = new StringBuilder();
        bldr.AppendFormat("var Timer = new myTimer({0},{1},'{2}','timerData');", this.timerStartValue, this.TimerInterval, this.lblTimerCount.ClientID);
        bldr.Append("Timer.go()");
        ClientScript.RegisterStartupScript(this.GetType(), "TimerScript", bldr.ToString(), true);
        ClientScript.RegisterHiddenField("timerData", timerStartValue.ToString());
    }

    void Page_PreInit(object sender, EventArgs e)
    {
        string timerVal = Request.Form["timerData"];
        if (timerVal != null || timerVal == "")
        {
            timerVal = timerVal.Replace(",", String.Empty);
            timerStartValue = long.Parse(timerVal);
        }
    }

    private Int32 TimerInterval
    {
        get
        {
            object o = ViewState["timerInterval"];
            if (o != null) { return Int32.Parse(o.ToString()); }
            return 50;
        }
        set { ViewState["timerInterval"] = value; }

    }

    void RedirectToResults()
    {



        Response.Redirect("Student_marklist.aspx");
    }

    protected void LoadQuestion()
    {
        if (Questions.Tables[0].Rows.Count > 0)
        {
            //Load Question;
            DataRow DR = Questions.Tables[0].Rows[0];
            examd_id = Convert.ToInt32(DR["examd_id"].ToString());
            Question.Text = DR["qstn_no"].ToString() + " of " + totalQs;
            sno = DR["qstn_no"].ToString();
            //TestName.Text = "";// DR[2].ToString();
            //TestNo.Text = "";//DR[3].ToString();

            Questionlbl.Text = DR["qustn"].ToString();

            rbtnAns.Items.Clear();
            rbtnAns.Items.Add(DR["ans1"].ToString());
            rbtnAns.Items.Add(DR["ans2"].ToString());
            rbtnAns.Items.Add(DR["ans3"].ToString());
            rbtnAns.Items.Add(DR["ans4"].ToString());

            Questions.Tables[0].Rows.Remove(DR);

            if (Questionlbl.Text.Equals(totalQs.ToString()))
            {
                IsLastQs = true;
            }
        }
        else
        {
            //End Of File;
            //Response.Write("<script>alert('Thanks For Your Presence! You Can Leave Now.')</script>");

            try
            {
                dh.Ins_Up_Del("insert into ResultTable values(" + tno + "," + Session["user_id"].ToString() + "," + marks + ",'" + System.DateTime.Now.ToShortDateString() + "')");

                string pass = dh.GetValue("select exam_passmark from Exam where exam_id="+tno);
                int passmark = Convert.ToInt32(pass);

              /*  if (marks >= passmark)
                {

                   // string chap = dh.GetValue("select Chapter from ChapterDetails where stud_id=" + Session["user_id"].ToString());
                   // int chapter = Convert.ToInt32(chap) + 1;
                   // dh.Ins_Up_Del("update ChapterDetails set chapter=" + chapter + " where stud_id=" + Session["user_id"].ToString());
                    Session.Abandon();
                    Response.Redirect("StudentHome.aspx");
                }*/

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(''" + ex.Message + "'')</script>");

            }


           

            RedirectToResults();
        }
    }




    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            //Write your code here to save the question

            //Displays the Next Question


            string ans = rbtnAns.SelectedIndex.ToString();

            string correct = dh.GetValue("select ans from ExamDetails where examd_id=" + examd_id);

            int answrd = Convert.ToInt32(ans) + 1;
            int corct = Convert.ToInt32(correct);
            if (answrd == corct)
            {
                marks = marks + 1;
            }

            LoadQuestion();

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert(''" + ex.Message + "'')</script>");
        }



    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //When Skip Button is pressed it loads the next question
        LoadQuestion();
    }
}
