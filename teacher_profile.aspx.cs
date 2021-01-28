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

public partial class teacher_profile : System.Web.UI.Page
{
    static string path1 = "";
    DBhandler DH = new DBhandler();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            LoadProfile();

        }

    }
    public void LoadProfile()
    {
        MultiView1.ActiveViewIndex = 0;

        DataTable dt = DH.GetTable("select * from Teacher where tea_id='" + Session["user_id"].ToString() + "'");
        if (dt.Rows.Count > 0)
        {
            Labelname.Text = dt.Rows[0]["tea_name"].ToString();
            Labeladdress.Text = dt.Rows[0]["tea_address"].ToString();
            Labelmob.Text = dt.Rows[0]["tea_mob"].ToString();
            Labelemail.Text = dt.Rows[0]["tea_email"].ToString();
            Labelqualification.Text = dt.Rows[0]["tea_qualification"].ToString();
            Labelusername.Text = dt.Rows[0]["tea_uname"].ToString();
            // Labelpassword.Text = dt.Rows[0]["stud_password"].ToString();
            Labelgender.Text = dt.Rows[0]["tea_gender"].ToString();
            Imagephoto.ImageUrl = dt.Rows[0]["tea_photo"].ToString();
            path1 = dt.Rows[0]["tea_photo"].ToString();


            txt_name.Text = dt.Rows[0]["tea_name"].ToString();
            txt_address.Text = dt.Rows[0]["tea_address"].ToString();
            txt_mob.Text = dt.Rows[0]["tea_mob"].ToString();
            txt_email.Text = dt.Rows[0]["tea_email"].ToString();
            txt_qualificatn.Text = dt.Rows[0]["tea_qualification"].ToString();
            txt_username.Text = dt.Rows[0]["tea_uname"].ToString();
            txt_password.Text = dt.Rows[0]["tea_password"].ToString();
            if (dt.Rows[0]["tea_gender"].ToString() == "Male")
            {
                rdb_gender.SelectedIndex = 0;
            }
            else
            {
                rdb_gender.SelectedIndex = 1;
            }
            Image1.ImageUrl = dt.Rows[0]["tea_photo"].ToString();


        }
    }
    protected void btn_Save_Click(object sender, EventArgs e)
    {
        string path = "";
        if (FileUpload1.FileName.Length > 0)
        {
            path = "~/Photos/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(path));
        }
        else
        {
            path = path1;
        }



        try
        {
            DH.Ins_Up_Del("update Teacher set tea_name='" + txt_name.Text + "',tea_address='" + txt_address.Text + "',tea_mob='" + txt_mob.Text + "',tea_email='" + txt_email.Text + "',tea_qualification='" + txt_qualificatn.Text + "',tea_uname='" + txt_username.Text + "',tea_password='" + txt_password.Text + "',tea_gender='" + rdb_gender.SelectedItem.Text + "',tea_photo='" + path + "' where tea_id=" + Session["user_id"].ToString());


            // int user_id = DH.getmax_id("student", "stud_id");
            //Session["user_id"] = user_id;
            Session["username"] = txt_name.Text;
            Response.Redirect("TeacherHome.aspx");

        }
        catch (Exception ex)
        {
            LabelError.Text = "Error in Saving";
        }
    }
    protected void btn_Cancel_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btn_Edit_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
}
