using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            //HttpCookie cookie = new HttpCookie("LogIn");
            //cookie.Values.Add("email", txtEmail.Text);
            //cookie.Values.Add("password", txtPass.Text);


                //Response.Cookies.Add(cookie);
                //cookie.Expires = DateTime.Now.AddMinutes(1);
                Response.Redirect("vote.aspx");

           


        }
    }
}