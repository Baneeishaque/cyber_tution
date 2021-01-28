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
        DataTable dt1 = DH.GetTable("select ''stud_id,'Select' stud_name union all select stud_id,stud_name from student where stud_status='False'");
        DropDownList1.DataSource = dt1;

        DropDownList1.DataTextField = "stud_name";
        DropDownList1.DataValueField = "stud_id";
        DropDownList1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try 
        {

            DH.Ins_Up_Del("update student set stud_status='True' where stud_id=" + DropDownList1.SelectedValue.ToString());
            Labelerror.Text = "Approved";
            Bind();

        }
        catch (Exception ex)
        {
            Labelerror.Text = "Error";
        }

    }
}
