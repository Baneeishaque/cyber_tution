using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Questions : System.Web.UI.Page
{
    DBhandler DH = new DBhandler();
    static int id;
    int c = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;

        //FillTable();
        if (!IsPostBack)
        {

            DataTable dt = DH.GetTable("select ''exam_id,'Select' exam_name union all select exam_id,exam_name from exam");
            DropDownList1.DataSource = dt;

            DropDownList1.DataTextField = "exam_name";
            DropDownList1.DataValueField = "exam_id";
            DropDownList1.DataBind();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        Session["exam_id"] = DropDownList1.SelectedValue.ToString();
        //FillTable();
       // GridView1.Visible = true;

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind(); 

    }
    public void FillTable()
    {
        DataTable dt = DH.GetTable("select examd_id 'Id',qstn_no 'No',qustn 'Question' from ExamDetails where exam_id="+Session ["exam_id"]);

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            dt.Rows[i][1] = dt.Rows[i][1].ToString();
        }

        dt.AcceptChanges();
        GridView1.DataSource = dt;
        GridView1.DataBind();
        //MultiView1.ActiveViewIndex = 1;


    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            id = Convert.ToInt32(GridView1.SelectedRow.Cells[2].Text);
           DH.Ins_Up_Del("delete from ExamDetails where examd_id=" + id);
            FillTable();
            Labelerror.Text = "Deleted!";
            MultiView1.ActiveViewIndex = 1;
        }
        catch (Exception ex)
        {

            Labelerror.Text = "Please select a question";
            MultiView1.ActiveViewIndex = 1;
            //Labelerror.Text = "Error on Deletion!";
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        id = Convert.ToInt32(GridView1.SelectedRow.Cells[2].Text);
        MultiView1.ActiveViewIndex = 1;
        /*DataTable dt1 = DH.GetTable("Select * from examdetails where examd_id= " + id);
        if (dt1.Rows.Count > 0)
        {
            txt_1.Text = dt1.Rows[0]["ans1"].ToString();
            txt_2.Text = dt1.Rows[0]["ans2"].ToString();
            txt_3.Text = dt1.Rows[0]["ans3"].ToString();
            txt_4.Text = dt1.Rows[0]["ans4"].ToString();
            dropdwn_ans.SelectedValue= dt1.Rows[0]["ans"].ToString();
            txt_qno.Text = dt1.Rows[0]["qstn_no"].ToString();
            txt_qstion.Text = dt1.Rows[0]["qustn"].ToString();
            //txt_exam.Text = dt1.Rows[0]["exam_name"].ToString();
            //txtchapter.Text = dt1.Rows[0]["chapter_no"].ToString();
            //txtpass.Text = dt1.Rows[0]["exam_passmark"].ToString();
            //txtmax.Text = dt1.Rows[0]["exam_maxmark"].ToString();
        }*/
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            //int c = 0;
            String count = DH.GetValue("SELECT        MAX(qstn_no) FROM            examdetails ");
            if (count.Equals(null))
            {
                c = 1;
            }
            else
            {
                c++;
            }
            DH.Ins_Up_Del("insert into ExamDetails values(" + DropDownList1.SelectedValue.ToString() + "," + c + ",'" + txt_qstion.Text + "','" + txt_1.Text + "','" + txt_2.Text + "','" + txt_3.Text + "','" + txt_4.Text + "','" + dropdwn_ans.SelectedValue.ToString() + "')");
            Labelerror.Text = "Saved Successfully !";
            FillTable();
            ClearAll();
            MultiView1.ActiveViewIndex = 1;


        }
        catch (Exception ex)
        {
            Labelerror.Text = "Error in Saving!";

        }
    }
    
        

    private void ClearAll()
    {
        txt_1.Text = "";
        txt_2.Text = "";
        txt_3.Text = "";
        txt_4.Text = "";
        //txt_qno.Text = "";
        txt_qstion.Text = "";

    }
    
}
