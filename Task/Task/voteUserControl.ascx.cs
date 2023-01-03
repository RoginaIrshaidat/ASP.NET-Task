using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task
{
    public partial class voteUserControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVote_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("Vote");
            cookie.Values.Add("userVote", voteList.SelectedValue);
            
            Response.Cookies.Add(cookie);
            cookie.Expires = DateTime.Now.AddMinutes(120);

            int Exell = 0, vGood = 0, good = 0,  poor = 0;
            if (voteList.SelectedValue == "Exellent")
            {
                Exell++;
            }
           else  if (voteList.SelectedValue == "Very Good")
            {
                vGood++;
            }
            else if(voteList.SelectedValue == "Good")
            {
                good++;
            }
            else if (voteList.SelectedValue == "Poor")
            {
                poor++;
            }


            voteQuest.Visible = false;
            voteRange.Visible = true;

            lblExell.Text += " " + Exell;
            lblVGood.Text += " " + vGood;
            lblGood.Text += " " + good;
            lblPoor.Text +=" "+ poor;


        }
        }
}