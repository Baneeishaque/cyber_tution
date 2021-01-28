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

public partial class Contact_Admin : System.Web.UI.Page
{
    DBhandler dh = new DBhandler();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            dh.Ins_Up_Del("insert into adminmsgs values(" + Session["user_id"].ToString() + ",'" + Session["usertype"].ToString() + "','" + DateTime.Now.ToShortDateString() + "','" + TextBoxsub.Text + "','" + TextBoxmsg.Text + "')");

            Labelerror.Text = "Send Successfully !";
            TextBoxmsg.Text = "";
            TextBoxsub.Text = "";

        }
        catch (Exception ex)
        {
            Labelerror.Text = "Error in Sending!";

        }
    }
}
