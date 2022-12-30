using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementTask
{
    public partial class Cookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Request.Cookies["LogIn"] != null)
                {
                    txtEmail.Text = Request.Cookies["LogIn"]["email"].ToString();
                    txtPass.Text = Request.Cookies["LogIn"]["password"].ToString();
                }
            } 
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("LogIn");
            cookie.Values.Add("email", txtEmail.Text);
            cookie.Values.Add("password", txtPass.Text);

            if (checkRember.Checked)
            {
                
                Response.Cookies.Add(cookie);
                cookie.Expires = DateTime.Now.AddMinutes(1);
                Response.Redirect("Home.aspx");

            }



        }

    }
    }