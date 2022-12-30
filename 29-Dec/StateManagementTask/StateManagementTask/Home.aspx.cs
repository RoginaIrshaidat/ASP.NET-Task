using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementTask
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                if (Request.Cookies["LogIn"] != null)
                {
                    lblWelcome.Text = Request.Cookies["LogIn"]["email"].ToString();
                }
            
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cookie.aspx");
        }
    }
}