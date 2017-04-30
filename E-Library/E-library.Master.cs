using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Library
{
    public partial class E_library : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageBtnBG_Click(object sender, ImageClickEventArgs e)
        {
            Session["lng"] = "bg-BG";
            Response.Redirect(Request.Path);
        }

        protected void ImageBtnEN_Click(object sender, ImageClickEventArgs e)
        {
            Session["lng"] = "en-US";
            Response.Redirect(Request.Path);
        }

        

        

       

        

    }
}