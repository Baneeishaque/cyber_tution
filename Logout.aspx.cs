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


public partial class Logout : System.Web.UI.Page
{
    DBhandler dh = new DBhandler();
    DataTable dtb = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["usertype"].ToString() == "teacher")
            {


                //double hour = 0;


                //log_out
                //DateTime out_time = System.DateTime.Now;
                //string work_id = dh.GetValue("select top 1 work_id,log_in from tea_attend where tea_id=" + Session["user_id"] + " order by work_id desc");
                //dtb = dh.GetTable("select top 1 work_id,log_in,tea_rate from tea_attend ta  inner join Teacher  t on ta.tea_id=t.tea_id where t.tea_id=" + Session["user_id"] + " order by work_id desc");
                //dh.Ins_Up_Del("update tea_attend set log_out='" + out_time + "' where work_id=" + Convert.ToInt32(work_id.ToString()) + "");
                //dh.Ins_Up_Del("update tea_attend set log_out='" + out_time + "' where work_id=" + dtb.Rows[0][0] + "");
                dh.Ins_Up_Del("update teacher set tea_online='false' where tea_id=" + Convert.ToInt32(Session["user_id"])); 

                //  dt = DH.GetTable("select * from Teacher as t inner join tea_attend as ta on ta.tea_id=t.tea_id where tea_id=" + Session["user_id"]);
                //  Label1.Text = dt.Rows[0]["tea_name"].ToString();
                //   DataTable dta = dh.GetTable("select top 1 * from tea_attend as ta inner join teacher as t on t.tea_id=ta.tea_id where t.tea_id=" + Session["user_id"] + "order by work_id desc");

                //   if (dta.Rows.Count > 0)
                //    {
                //DateTime a = Convert.ToDateTime(dtb.Rows[0][1].ToString());
                //DateTime b = out_time;
                //TimeSpan duration = b - a;
                //  double sec = duration.TotalSeconds;
                // double min = duration.TotalMinutes;
                //hour = duration.TotalHours;
                //hour = Math.Round(hour, 2);



                //  Label2.Text = time.ToString();

                //     }
                //Label3.Text = dt.Rows[0]["tea_rate"].ToString();
                //double salary = Convert.ToDouble(dtb.Rows[0]["tea_rate"].ToString()) * hour;
                //  Label4.Text = salary.ToString();
                //string date = System.DateTime.Now.ToString("MMM dd yyyy");

                //dh.Ins_Up_Del("insert into Salary values(" + Session["user_id"] + ",'" + hour.ToString() + "','" + date + "'," + salary + ")");

            }
            if (Session["usertype"].ToString() == "student")
            {
                dh.Ins_Up_Del("update student set stud_online='false' where stud_id=" + Convert.ToInt32(Session["user_id"])); 
            }

            Session.Abandon();
            Response.Redirect("Default.aspx");
        }

    }
}
