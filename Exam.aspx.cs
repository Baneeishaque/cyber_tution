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

public partial class Exam : System.Web.UI.Page
{
    DBhandler dh = new DBhandler();
    static int id;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            DataTable dt = dh.GetTable("select ''sub_id,'Select' sub_name union all select sub_id,sub_name from Subjects");
            DropDownList1.DataSource = dt;

            DropDownList1.DataTextField = "sub_name";
            DropDownList1.DataValueField = "sub_id";
            DropDownList1.DataBind();


        }


        FillTable();
        Button1.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            dh.Ins_Up_Del("INSERT INTO Exam (exam_name, sub_id, exam_passmark, exam_maxmark) values('" + txt_exam.Text + "'," + DropDownList1.SelectedValue.ToString() + "," + txtpass.Text + "," + txtmax.Text + ")");
            Labelerror.Text = "Saved Successfully !";
            FillTable();

        }
        catch (Exception ex)
        {
            Labelerror.Text = "Error in Saving!";

        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind(); 
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            id = Convert.ToInt32(GridView1.SelectedRow.Cells[2].Text);
            dh.Ins_Up_Del("delete from exam where exam_id=" + id);
            FillTable();
            Labelerror.Text = "Deleted!";
        }
        catch (Exception ex)
        {
            Labelerror.Text = "Please select an exam";
            //Labelerror.Text = "Error on Deletion!";
        }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        id = Convert.ToInt32(GridView1.SelectedRow.Cells[2].Text);
        DataTable dt1 = dh.GetTable("Select * from exam where exam_id= " + id);
        if (dt1.Rows.Count > 0)
        {
            txt_exam.Text = dt1.Rows[0]["exam_name"].ToString();
            //txtchapter.Text = dt1.Rows[0]["chapter_no"].ToString();
            txtpass.Text = dt1.Rows[0]["exam_passmark"].ToString();
            txtmax.Text = dt1.Rows[0]["exam_maxmark"].ToString();
        }
        Button2.Visible = false;
        Button1.Visible = true;
       
    }
    public void FillTable()
    {
        DataTable dt = dh.GetTable("select exam_id 'Id',exam_name 'Exam' from exam ");

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            dt.Rows[i][1] = dt.Rows[i][1].ToString();
        }

        dt.AcceptChanges();
        GridView1.DataSource = dt;
        GridView1.DataBind();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            dh.Ins_Up_Del("update exam set exam_name='" + txt_exam.Text + "',sub_id=" + DropDownList1.SelectedValue.ToString() +",exam_passmark="+txtpass.Text +",exam_maxmark="+txtmax.Text +" where exam_id="+id);
            Labelerror.Text = "Updated Successfully !";
            FillTable();

        }
        catch (Exception ex)
        {
            Labelerror.Text = "Error in Saving!";

        }
    }
}
