using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace iLoveVS
{
    public partial class Sign_Up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into UserDetails values (@Username,@Password,@Credit,@Pfp,@Name,@Email)", con);

            cmd.Parameters.AddWithValue("Username", TextBox4.Text);
            cmd.Parameters.AddWithValue("Password", TextBox3.Text);
            cmd.Parameters.AddWithValue("Name", TextBox1.Text+" "+ TextBox6.Text);
            cmd.Parameters.AddWithValue("Email", TextBox2.Text);
            cmd.Parameters.AddWithValue("Credit", 0);
            cmd.Parameters.AddWithValue("Pfp", 0);
            cmd.ExecuteNonQuery();
            
            Response.Redirect("Login.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}