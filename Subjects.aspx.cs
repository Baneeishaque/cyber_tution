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

public partial class Subjects : System.Web.UI.Page
{
    DBhandler dh = new DBhandler();
    static int id;

    protected void Page_Load(object sender, EventArgs e)
    {

        Button1.Visible = false;
        FillTable(); 
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            dh.Ins_Up_Del("INSERT INTO Subjects(sub_name, sub_syllabus)VALUES    ('" + txt_sub.Text + "','" + txt_syll.Text + "')");
            Labelerror.Text = "Saved Successfully !";
            FillTable();

        }
        catch (Exception ex)
        {
            Labelerror.Text = ex.Message.ToString();

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
       // GridView1_SelectedIndexChanged(null, null);
         id = Convert.ToInt32(GridView1.SelectedRow.Cells[2].Text);
       // Labelerror.Text = id.ToString();
        
            dh.Ins_Up_Del("DELETE FROM Subjects WHERE        (sub_id = "+id+")");
            Labelerror.Text = "Deleted!";
            FillTable();
            
        }
        catch (Exception ex)
        {
            Labelerror.Text = "Please select a subject";
          //  Labelerror.Text = ex.Message.ToString();
        }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        id = Convert.ToInt32(GridView1.SelectedRow.Cells[2].Text);
        //Labelerror.Text = id.ToString();
        DataTable dt1 = dh.GetTable("Select * from subjects where sub_id= " + id);

        txt_sub.Text = dt1.Rows[0][1].ToString();
        txt_syll.Text = dt1.Rows[0][2].ToString();
        //txt_fee.Text = dt1.Rows[0][3].ToString();
        Button2.Visible = false;
        Button1.Visible = true;
      
        
    }
    public void FillTable()
    {
        DataTable dt = dh.GetTable("select sub_id 'Id',sub_name 'Subject Name' from subjects ");

        //for (int i = 0; i < dt.Rows.Count; i++)
        //{
        //    dt.Rows[i][1] = dt.Rows[i][1].ToString();
        //}

        dt.AcceptChanges();
        GridView1.DataSource = dt;
        GridView1.DataBind();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //id = Convert.ToInt32(GridView1.SelectedRow.Cells[2].Text);
            dh.Ins_Up_Del("update subjects set sub_name='" + txt_sub.Text + "',sub_syllabus='" + txt_syll.Text + "' where sub_id=" + id);
            Labelerror.Text = "Updated Successfully !";
            FillTable();

        }
        catch (Exception ex)
        {
            Labelerror.Text = "Error in Saving!";
          //  Labelerror.Text = ex.Message.ToString();
        }
    }
}
