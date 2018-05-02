using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bean.Admin
{
    public partial class uploadimages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string prodID = Request.QueryString["Prod_ID"];
            string filename = prodID + ".jpg";
            string savelocation = Server.MapPath("~/Photos/" + filename);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string prodID = Request.QueryString["Prod_ID"];
            string filename = prodID + ".jpg";
            string savelocation = Server.MapPath("~/Photos/" + filename);

            FileUpload1.SaveAs(savelocation);
        }
    }
}