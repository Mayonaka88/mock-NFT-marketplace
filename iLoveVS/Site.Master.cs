using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iLoveVS
{
    public partial class SiteMaster : MasterPage
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {
            ImageButton profilePic = (ImageButton)Page.Master.FindControl("ImageButton1");
            int userPfp;


            if (Login.isLoggedIn == true)
            {
                userPfp = Login.ReturnPfp(Login.userName);
                Label1.Text= Login.userCredit.ToString()+ " ♦";
                if (userPfp == 0)
                {
                    profilePic.ImageUrl = "~/Image/default.png";
                }
                else
                {
                    profilePic.ImageUrl = "~/Image/" + (userPfp - 1).ToString() + ".jpg";
                }
                
            }
            else
            {
                Label1.Text=" ";
                profilePic.ImageUrl = "~/Image/default.png";
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Login.isLoggedIn == true)
            {
                Your_Profile.selectedUser = Login.userName;
                Response.Redirect("Your Profile.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Login.isLoggedIn = false;

            Response.Redirect("Default.aspx");
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Login.isLoggedIn == true)
            {
                Response.Redirect("Market.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Login.isLoggedIn == true)
            {
                Response.Redirect("Earn.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }


    }
}