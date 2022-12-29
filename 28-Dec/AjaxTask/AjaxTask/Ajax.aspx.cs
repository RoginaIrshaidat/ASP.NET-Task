using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AjaxTask
{
    public partial class Ajax : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
            //    "swal('Good job!', 'You clicked Success button!', 'success')", true);
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);


            SqlConnection connection = new SqlConnection("data source=ROGINA\\SQLEXPRESS; database=student; integrated security=SSPI");
            connection.Open();
            SqlCommand command = new SqlCommand($"insert into Comment values('{txtComment.Text}')",connection);
            command.ExecuteNonQuery();


            //string table = "<table class='table table-striped'><tr><th>Comment</th></tr>";

            SqlCommand sqlCommand = new SqlCommand("select * from Comment", connection);

            SqlDataReader reader= sqlCommand.ExecuteReader();

            while (reader.Read())

            {
                lblComment.Text += $"<div class='card' style='width:200px'>" +
                  $"<div class='card-body'>" +
                  $"  <p class='card-text'>{reader[1]}</p></div> </div>";
                //table += $"<tr><td>{reader[1]}</td></tr>";
            }
            //table += "</table>";
            //lblComment.Text += table;

connection.Close();



        }
    }
}