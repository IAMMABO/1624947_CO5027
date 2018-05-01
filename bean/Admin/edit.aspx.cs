using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bean.Admin
{
    public partial class edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ProdID = Request.QueryString["Prod_ID"];
            string FileName = ProdID + ".jpg";

            currentImage.ImageUrl = "~/Images" + FileName;
        }
    }
}