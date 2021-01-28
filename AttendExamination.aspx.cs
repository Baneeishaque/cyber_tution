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

public partial class Examination : System.Web.UI.Page
{
    DBhandler dh = new DBhandler();

    protected void Page_Load(object sender, EventArgs e)
    {
        Labelerror.Text = "";
        if (!IsPostBack)
        {

            //Labelerror1.Text = "";
            DataTable dt = dh.GetTable("select ''exam_id,'Select' exam_name union all select e.exam_id,e.exam_name from exam e inner join " + 
                                        " student s on s.sub_id=e.sub_id where s.stud_id="+Session ["user_id"]);
            DropDownList1.DataSource = dt;

            DropDownList1.DataTextField = "exam_name";
            DropDownList1.DataValueField = "exam_id";
            DropDownList1.DataBind();


        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        string cnt = dh.GetValue("select count(*) from examdetails where exam_id=" + DropDownList1.SelectedValue.ToString());
if(cnt!="0")
    { Labelerror.Text = "";
        Response.Redirect("TakeTest2.aspx?exam_id=" + DropDownList1 .SelectedValue .ToString ());
    }
else
{
Labelerror.Text="Question Paper Not prepared yet ";

}

    }
}
