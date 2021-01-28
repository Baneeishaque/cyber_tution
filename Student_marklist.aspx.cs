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
public partial class Student_marklist : System.Web.UI.Page
{
    DBhandler dh = new DBhandler();
    DataTable dt=new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        dt=dh.GetTable("select top 1 * from ResultTable r inner join Exam e on e.exam_id=r.exam_id inner join student s on s.stud_id=r.stud_id where r.stud_id=" + Session["user_id"] + " Order by result_id desc");
        lbl_exam.Text = dt.Rows[0]["exam_name"].ToString(); 
        lbl_student.Text = dt.Rows[0]["stud_name"].ToString();
        lbl_mark.Text = dt.Rows[0][3].ToString();
        lbl_date.Text = dt.Rows[0][4].ToString();
        lbl_passmark.Text = dt.Rows[0]["exam_passmark"].ToString();
        //lbl_chapter.Text = dt.Rows[0]["chapter_no"].ToString();
    }
}
