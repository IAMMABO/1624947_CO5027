using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bean.Admin
{
    public partial class upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ImagefileUpload1.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(ImagefileUpload1.FileName);

                if (fileExtension.ToLower() != ".jpg")
                {
                    lblmessage.Text = "Only fiiles with .doc or .docx extension are allowed";
                    lblmessage.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    int fileSize = ImagefileUpload1.PostedFile.ContentLength;
                    if(fileSize > 2097152)
                    {
                        lblmessage.Text = "Maximum file size (2MB) exceeded";
                        lblmessage.ForeColor = System.Drawing.Color.Red;
                    }
                    string ProdID = Request.QueryString["Prod_ID"];
                    string FileName = ProdID + ".jpg";
                    

                    ImagefileUpload1.SaveAs(Server.MapPath("../Images" + ImagefileUpload1.FileName));
                    lblmessage.Text = "File Uploaded";
                    lblmessage.ForeColor = System.Drawing.Color.Green;
                }
            }
            else
            {
                lblmessage.Text = "Please select a file to upload";
                lblmessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}