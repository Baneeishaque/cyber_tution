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

public partial class Approve_Teachers : System.Web.UI.Page
{
    DBhandler DH = new DBhandler();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            Bind();
        }
    }

    public void Bind()
    {
        DataTable dt = DH.GetTable("select ''tea_id,'Select' tea_name union all select tea_id,tea_name from teacher where tea_status='False'");
        DropDownList1.DataSource = dt;

        DropDownList1.DataTextField = "tea_name";
        DropDownList1.DataValueField = "tea_id";
        DropDownList1.DataBind();


       // DataTable dt1 = DH.GetTable("select ''sub_id,'Select' sub_name union all select sub_id,sub_name from subjects ");
      //  DropDownList2.DataSource = dt1;

       // DropDownList2.DataTextField = "sub_name";
      //  DropDownList2.DataValueField = "sub_id";
      //  DropDownList2.DataBind();



    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try 
        {

            DH.Ins_Up_Del("update teacher set tea_status='True' where tea_id=" + DropDownList1.SelectedValue.ToString());
            Labelerror.Text = "Approved";
            Bind();

        }
        catch (Exception ex)
        {
            Labelerror.Text = "Error";
        }

    }
}
