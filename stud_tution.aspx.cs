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

public partial class stud_tution : System.Web.UI.Page
{
    DBhandler dh = new DBhandler();
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
       
            FillTable(); 
        

    }

    public void FillTable()
    {
        DataTable dt = dh.GetTable("select sd_id 'Id',imagename 'Name' from tution ");

        //for (int i = 0; i < dt.Rows.Count; i++)
        //{
        //    dt.Rows[i][1] = dt.Rows[i][1].ToString();
        //}

        dt.AcceptChanges();
        GridView1.DataSource = dt;
        GridView1.DataBind();


    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        id = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
        string path = dh.GetValue("select sd_path from tution where sd_id=" + id);
        string p = Server.MapPath(path);
        string n = System.IO.Path.GetFileName(p);
        //String f = System.IO.Path.GetDirectoryName(p);
        //Label1.Text = f;
       // string n2 = System.IO.Path.GetExtension(p);
        
        Response.Redirect("http://localhost/cyber_tution/study/" + n);
        // Page pa = HttpContext.Current.CurrentHandler as Page;
        // pa.ClientScript.RegisterStartupScript(typeof(Page), "Error", "<script language=\"JavaScript\" type=\"text/javascript\">window.location.replace("+path+");</script>");
        // Response.Redirect(p);
        //System.IO.File.Open(p, System.IO.FileMode.Open);
        //string name=@"
        //Response.ContentType = "appliction/octet-stream";
        /* Response.ContentType = n2;
         Response.AppendHeader("Content-Disposition","attachment;filename="+n);
         System.Threading.Thread.Sleep(100);
         Response.TransmitFile(p);
         Response.End();*/
        //System.Diagnostics.Process.Start(path);
        //Labelerror.Text = id.ToString();
        //DataTable dt1 = dh.GetTable("Select * from subjects where sub_id= " + id);

        //txt_sub.Text = dt1.Rows[0][1].ToString();
        //txt_syll.Text = dt1.Rows[0][2].ToString();
        //txt_fee.Text = dt1.Rows[0][3].ToString();
        //Button2.Visible = false;
        //Button1.Visible = true;


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int user_id = Convert.ToInt32(Session["user_id"]);
     
          //  dh.Ins_Up_Del("update Student set stud_iframe='" + txt_iframe.Text + "' where stud_id=" + user_id + "");

    }
}
