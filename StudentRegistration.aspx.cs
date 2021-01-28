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
using System.Data.SqlClient;

public partial class StudentRegistration : System.Web.UI.Page
{
    DBhandler dh=new DBhandler ();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            imgUser.Visible =false ;
            lblUser.Text = "";
            imgUser0.Visible = false;
            lblUser0.Text = "";

            Labelerror1.Text = "";
            DataTable dt = dh.GetTable("select ''sub_id,'Select' sub_name union all select sub_id,sub_name from Subjects");
            DropDownList1.DataSource = dt;

            DropDownList1.DataTextField = "sub_name";
            DropDownList1.DataValueField = "sub_id";
            DropDownList1.DataBind();


        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedItem.Text == "Teacher")
        {
            MultiView1.ActiveViewIndex =1;
        }
        else
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
    protected void imgBtnLogin_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void FileUpload1_Unload(object sender, EventArgs e)
    {

    }
    protected void btn_Save_Click(object sender, EventArgs e)
    {
       // SqlCommand cmd = new SqlCommand();
      //  LabelError.Text = "";
        string path = "~/Photos/" + FileUpload1.FileName;
        FileUpload1.SaveAs(MapPath(path));
        
        
        try
        {
            dh.Ins_Up_Del("insert into Student values('"+txt_name.Text +"','"+txt_address .Text +"','"+txt_mobile .Text +"','"+txt_email .Text +"','"+dropdown_quali.SelectedItem .Text +"','"+txt_uname .Text +"','"+txt_pass .Text +"','"+  rdb_gender.SelectedItem.Text+"','"+path +"','False','False',0,"+DropDownList1.SelectedValue.ToString ()+",'','','','','','')");
            // string stud_id=dh.GetValue ("select max(stud_id) from student");

            // dh.Ins_Up_Del("insert into chapterdetails values(" + stud_id + ",1)");
            LabelError. Text = "Waiting For Admin Approval";
            //int user_id = dh.getmax_id("student", "stud_id");
            //Session["user_id"] = user_id;
            //Session["username"] = txt_name.Text;
            //Response.Redirect("StudentHome.aspx");

        }
        catch (Exception ex)
        {
            LabelError.Text = "Error in Saving";
        }


    }
    protected void btn_Cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = "~/Photos/" + FileUpload2. FileName;
        FileUpload2.SaveAs(MapPath(path));


        try
        {
            dh.Ins_Up_Del("insert into teacher values('" + txt_name1.Text + "','" + txt_address1.Text + "','" + txt_mob1.Text + "','" + txt_email1.Text + "','" + dropdown_quali1.SelectedItem.Text + "','" + txt_uname1.Text + "','" + txt_pass1.Text + "','" + RadioButtonList2 .SelectedItem.Text + "','" + path + "'," + txt_exp.Text + ",0,0,'false','false','')");
            Labelerror1.Text = "Waiting For Admin Approval";

            //int user_id = dh.getmax_id("teacher", "tea_id");
            //Session["user_id"] = user_id;
            //Session["username"] = txt_name1.Text;
            //Response.Redirect("TeacherHome.aspx");

        }
        catch (Exception ex)
        {
            Labelerror1.Text = "Error in Saving";
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string fee = dh.GetValue("select sub_fees from subjects where sub_id=" + DropDownList1.SelectedValue.ToString());
        //Labelfees.Text = "Rs/- " + fee;
    }
    protected void txt_uname_TextChanged(object sender, EventArgs e)
    {
        if (txt_uname.Text != string.Empty)
        {
            string cnt = dh.GetValue("select count(*) from student where stud_uname='" + txt_uname.Text + "'");
            if (cnt != "0")
            {
                imgUser.ImageUrl = "~/images/unavailable.png";
                imgUser.Visible = true;
                lblUser.Text = "Unavailable";
                lblUser.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                imgUser.ImageUrl = "~/images/tick.png";
                imgUser.Visible = true;
                lblUser.Text = "Available";
                lblUser.ForeColor = System.Drawing.Color.Yellow ;
            }
        
        }
    }
    protected void txt_uname1_TextChanged(object sender, EventArgs e)
    {
        if (txt_uname1.Text != string.Empty)
        {
            string cnt = dh.GetValue("select count(*) from teacher where tea_uname='" + txt_uname1.Text + "'");
            if (cnt != "0")
            {
                imgUser0.ImageUrl = "~/images/unavailable.png";
                imgUser0.Visible = true;
                lblUser0.Text = "Unavailable";
                lblUser0.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                imgUser0.ImageUrl = "~/images/tick.png";
                imgUser0.Visible = true;
                lblUser0.Text = "Available";
                lblUser0.ForeColor = System.Drawing.Color.Yellow;
            }

        }
    }
}
