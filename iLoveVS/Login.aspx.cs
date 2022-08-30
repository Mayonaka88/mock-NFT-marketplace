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
    public partial class Login : System.Web.UI.Page
    {
        public static bool isLoggedIn = false;
        public static int userCredit;
        public static String userName;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (isLoggedIn == true)
            {
                Response.Redirect("Market.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from UserDetails where Username =@Username and Password=@Password", con);
            cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                userCredit = ReturnLoggedinCredits(TextBox1.Text);
                userName = TextBox1.Text;
                isLoggedIn = true;
                Response.Redirect("Market.aspx");
            }

            else
            {
                Label2.Visible = true;
                Label2.Text = "Invalid username or password!";
            }
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Sign Up.aspx");
        }

        public int ReturnLoggedinCredits(String user)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select credit from UserDetails where Username =@Username", con);
            cmd.Parameters.Add("@Username", user);
            String temp = cmd.ExecuteScalar().ToString();
            int credit = int.Parse(temp);
            cmd.ExecuteNonQuery();
            con.Close();
            return credit;
        }

        public static int ReturnPfp(String user)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select Pfp from UserDetails where Username =@Username", con);
            cmd.Parameters.Add("@Username", user);
            String temp = cmd.ExecuteScalar().ToString();
            int Pfp = int.Parse(temp);
            cmd.ExecuteNonQuery();
            con.Close();
            return Pfp;
        }
    }
}