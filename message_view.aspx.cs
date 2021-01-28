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

public partial class message_view : System.Web.UI.Page
{
    DBhandler dh = new DBhandler();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            dt = dh.GetTable("select stud_name,a.msg_sub, a.msg from student s inner join AdminMsgs a on a.user_id=s.stud_id and user_type='student' order by msg_id desc");
            DataList1.DataSource = dt;
            DataList1.DataBind();

            RadioButtonList1.SelectedIndex = 0;
            MultiView1.ActiveViewIndex = 0;


            DataTable dta = new DataTable();
            dta = dh.GetTable("select tea_name,a.msg_sub, a.msg from teacher s inner join AdminMsgs a on a.user_id=s.tea_id and user_type='teacher' order by msg_id desc");
            DataList2.DataSource = dta;
            DataList2.DataBind();


        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
        {
            MultiView1.ActiveViewIndex = 0;
        }
        else if (RadioButtonList1.SelectedIndex == 1)
        {
            MultiView1.ActiveViewIndex = 1;
        }
    }
}
