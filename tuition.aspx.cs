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

public partial class tuition : System.Web.UI.Page
{
    DBhandler dh = new DBhandler();
    int c = 0;
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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int user_id=Convert.ToInt32( Session["user_id"]);
        //dh.Ins_Up_Del("update Teacher set tea_iframe='" + txt_iframe.Text + "' where tea_id=" + user_id + "");
       
        
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

        if (FileUpload1.PostedFile != null)
        {
            //string fileExt =
            //   System.IO.Path.GetExtension(FileUpload1.FileName);

            //if (fileExt == ".jpeg" || fileExt == ".jpg")
            //{

            // Get the HttpFileCollection


          try
            {
                Labelerror.Text = "";
                HttpFileCollection hfc = Request.Files;
                for (int i = 0; i < hfc.Count; i++)
                {
                    HttpPostedFile hpf = hfc[i];
                    // if (hpf.ContentLength > 0 && (hpf.FileName.Contains(".jpeg") || hpf.FileName.Contains(".jpg")))
                    if (hpf.ContentLength > 0)
                    {
                        //if (hpf.FileName.ToString().Contains(".wmv"))
                        //{
                        //int c;
                        String count=    dh.GetValue("SELECT        MAX(sd_id) FROM            tution ");
                        if (count.Equals(null))
                        {
                             c = 1;
                        }
                        else
                        {
                            c++;
                        }
                            hpf.SaveAs(Server.MapPath("Study") + "\\" + System.IO.Path.GetFileName(hpf.FileName));
                            dh.Ins_Up_Del("INSERT INTO tution                         (sd_id, sub_id, sd_chapter, sd_path, ImageName, Description)VALUES    ("+c+"," + DropDownList1.SelectedValue.ToString() + ",1,'" + "Study\\" + System.IO.Path.GetFileName(hpf.FileName) + "','" + hpf.FileName.ToString() + "','')");
                            Labelerror.Text = Labelerror.Text.ToString() + "<b>File: </b>" + hpf.FileName + " <b>Size:</b> " +
                            hpf.ContentLength + " <b>Type:</b> " + hpf.ContentType + " Uploaded Successfully <br/>";
                      //  }
                        //{
                          //  Labelerror.Text = "choose wmv file";
                        //}
                    }
                }
           }

            catch (Exception ex)
            {
                Labelerror.Text = "Error on Uploading!";
            }
          //  }
        }
    }
}
