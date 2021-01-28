using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class MasterGeneral : System.Web.UI.MasterPage
{
    DBhandler DH = new DBhandler();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void imgBtnLogin_Click(object sender, ImageClickEventArgs e)
    {

        DataTable dt1 = DH.GetTable("select * from admintable where admin_username='" + txtUserName.Text + "' and admin_password='" + txtPassword.Text + "'");
        if (dt1.Rows.Count > 0)
        {
            Session["username"] = dt1.Rows[0]["admin_username"].ToString();
            Session["usertype"] = "admin";


            

            Response.Redirect("AdminHome.aspx");
            lblDisplay.Text = "";
            txtUserName.Text = "";
            txtPassword.Text = "";

        }

        else
        {
            DataTable dt = DH.GetTable("select * from student where stud_uname='" + txtUserName.Text + "' and stud_password='" + txtPassword.Text + "' and stud_status='True'");

            if (dt.Rows.Count > 0)
            {
                Session["user_id"] = dt.Rows[0]["stud_id"].ToString();
                Session["username"] = dt.Rows[0]["stud_name"].ToString();
                Session["usertype"] = "student";
                Session["photo"] = dt.Rows[0]["stud_photo"].ToString();
              //  Session["name"] = dt.Rows[0]["stud_name"].ToString();
             
                lblDisplay.Text = "";
                txtUserName.Text = "";
                txtPassword.Text = "";
                DH.Ins_Up_Del("update student set stud_online='true' where stud_id=" +Convert.ToInt32(Session["user_id"]));
                Response.Redirect("StudentHome.aspx");
            }
            else
            {
                DataTable dt2 = DH.GetTable("select * from teacher where tea_uname='" + txtUserName.Text + "' and tea_password='" + txtPassword.Text + "' and tea_status='True'");

            if (dt2.Rows.Count > 0)
            {
                Session["user_id"] = dt2.Rows[0]["tea_id"].ToString();
                Session["username"] = dt2.Rows[0]["tea_name"].ToString();
                Session["usertype"] = "teacher";
                Session["photo"] = dt2.Rows[0]["tea_photo"].ToString();
             //   Session["name"] = dt.Rows[0]["tea_name"].ToString();

               
                DateTime intime = System.DateTime.Now;
                DH.Ins_Up_Del("insert into tea_attend values(" + Session["user_id"] + ",'" + intime + "','" + intime + "')");
               
                lblDisplay.Text = "";
                txtUserName.Text = "";
                txtPassword.Text = "";

                DH.Ins_Up_Del("update teacher set tea_online='true' where tea_id=" + Convert.ToInt32(Session["user_id"]));
                Response.Redirect("TeacherHome.aspx");
            }
            else
            {
                lblDisplay.Text = "Invalid User or Key! ";
                txtUserName.Text = "";
                txtPassword.Text = "";
                Page p = HttpContext.Current.CurrentHandler as Page;
                p.ClientScript.RegisterStartupScript(typeof(Page), "Error", "<script language=\"JavaScript\" type=\"text/javascript\">document.getElementById('popupbox').style.visibility=\"visible\";</script>");
            }

            }
        }
        
    }
}
