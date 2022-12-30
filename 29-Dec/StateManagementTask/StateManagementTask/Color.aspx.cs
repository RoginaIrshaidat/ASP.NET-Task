using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementTask
{
    public partial class Color : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblTime.Text = DateTime.Now.ToString();
           
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {


            if (Request.Cookies["time"] != null)
            {
                HttpCookie time = Request.Cookies["time"];
                lblTime.Text = DateTime.Now.ToString();
                string col = time["color"];
                lblTime.ForeColor = System.Drawing.Color.FromName(col);

            }
        }
        protected void colorChanged(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("time");
                    cookie.Values["color"] = colorList.SelectedValue.ToString();
            cookie.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(cookie);
           
        }
    }
}