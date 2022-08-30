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
    public partial class NFT : System.Web.UI.Page
    {
        public static int pfp;
        protected void Page_Load(object sender, EventArgs e)
        {
            Image1.ImageUrl = "~/Image/" + Market.nftSelectedString + ".jpg";
            Label1.Text = "Azuki Member #" + (Market.nftSelected).ToString();
            LinkButton1.Text = ReturnNftOwner(Market.nftSelected);
            Label3.Text = Market.ReturnNftPrice(Market.nftSelected).ToString() + " ♦";

            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            int nftShown = Market.nftSelected;
            SqlCommand cmd2 = new SqlCommand("select IsbeingSold from NFT where NFTID =@ID ", con);
            cmd2.Parameters.Add("@ID", nftShown);
            String temp2 = cmd2.ExecuteScalar().ToString();
            if (temp2 == "True")
            {
                if (ReturnNftOwner(Market.nftSelected)!=Login.userName)
                {
                    Button3.Visible = false;
                    if (Login.userCredit >= Market.ReturnNftPrice(Market.nftSelected))
                    {
                        Label2.Visible = false;
                        TextBox1.Visible = false;
                        Button1.Text = "Buy NFT";
                        Button1.Enabled = true;
                    }
                    else
                    {
                        Label2.Visible = false;
                        TextBox1.Visible = false;
                        Button1.BackColor = System.Drawing.Color.Red;
                        Button1.Text = "Insufficient Funds";
                        Button1.Enabled = false;
                    }
                }
                else
                {
                    Label2.Visible = false;
                    TextBox1.Visible = false;
                    Button3.Visible = true;
                    Button1.Enabled = false;
                    Button1.BackColor = System.Drawing.Color.Red;
                    Button1.Text = "Currently On Sale";
                }

                
            }
            else
            {
                if (ReturnNftOwner(Market.nftSelected) != Login.userName)
                {
                    Label2.Visible = false;
                    TextBox1.Visible = false;
                    Button1.Enabled = false;
                    Button1.Text = "Not For Sale 🔒";
                    Button3.Visible = false;
                    Button1.BackColor = System.Drawing.Color.Red;
                }
                else
                {
                    Label2.Visible = true;
                    TextBox1.Visible = true;
                    Button1.Enabled = true;
                    Button1.Text = "Sell NFT";
                    Button3.Visible = true;
                }

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ReturnNftOwner(Market.nftSelected) != Login.userName)
            {
                // Username credits
                int userCred = Login.userCredit;

                // NFTprice
                int NFTprice = Market.ReturnNftPrice(Market.nftSelected);
                int newUserCred = userCred - NFTprice;
                Login.userCredit = newUserCred;
                //NFT Owner
                String Owner = ReturnNftOwner(Market.nftSelected);
                if (Market.nftSelected == Login.ReturnPfp(ReturnNftOwner(Market.nftSelected)))
                {
                    RemovePFP(ReturnNftOwner(Market.nftSelected));
                }

                //Credits of Owner

                int OwnerCredit = ReturnCreditOfOwner(Owner);
                int newOwnerCredit = OwnerCredit + NFTprice;


                //Update OwnerCredit
                UpdateOwnerCredit(newOwnerCredit, Owner);

                //Update BuyerCredit
                UpdateBuyerCredit(newUserCred, Login.userName);

                //Update NFTowner
                UpdateOwner(Market.nftSelected, Login.userName);
                KeepNFT(Market.nftSelected);
                
            }
            else
            {
                if (int.Parse(TextBox1.Text) > 0)
                {
                    SellNFT(Market.nftSelected);
                    UpdateNFTPrice(Market.nftSelected, TextBox1.Text);
                    
                }
                else
                {
                    TextBox1.ForeColor = System.Drawing.Color.Red;
                    TextBox1.Text = "INVALID INPUT";
                }
            }

            Response.Redirect("NFT.aspx");

        }
        public String ReturnNftOwner(int NftId)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd3 = new SqlCommand("select OnwerName from NFT where NFTID =@ID ", con);
            cmd3.Parameters.Add("@ID", NftId);
            String Owner = cmd3.ExecuteScalar().ToString();
            cmd3.ExecuteNonQuery();
            con.Close();
            return Owner;

        }

        public int ReturnCreditOfOwner(String owner)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd4 = new SqlCommand("select credit from UserDetails where Username =@NFTow", con);
            cmd4.Parameters.Add("NFTow", owner);
            String temp5 = cmd4.ExecuteScalar().ToString();
            int OwnerCredit = Int32.Parse(temp5);
            cmd4.ExecuteNonQuery();
            con.Close();
            return OwnerCredit;
        }

        public void UpdateOwnerCredit(int newOwnerCredit, String Owner)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();

            SqlCommand cmd5 = new SqlCommand("UPDATE UserDetails SET Credit =@credit where Username =@Username2", con);
            cmd5.Parameters.Add("@credit", newOwnerCredit);
            cmd5.Parameters.Add("@Username2", Owner);
            cmd5.ExecuteNonQuery();
            con.Close();
        }
        public static void UpdateBuyerCredit(int NewBuyerCredit, String LoggedinUSER)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();

            SqlCommand cmd5 = new SqlCommand("UPDATE UserDetails SET Credit =@credit where Username =@Username2", con);
            cmd5.Parameters.Add("@credit", NewBuyerCredit);
            cmd5.Parameters.Add("@Username2", LoggedinUSER);
            cmd5.ExecuteNonQuery();
            con.Close();
        }
        public void UpdateOwner(int NFTid, String LoggedinUSER)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();

            SqlCommand cmd5 = new SqlCommand("UPDATE NFT SET OnwerName =@newOwner where NFTID =@OldOwner", con);
            cmd5.Parameters.Add("@newOwner", LoggedinUSER);
            cmd5.Parameters.Add("@OldOwner", NFTid);
            cmd5.ExecuteNonQuery();
            con.Close();
        }

        public void SellNFT(int NftId)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd5 = new SqlCommand("UPDATE NFT SET IsBeingSold = 'true' where NFTID =@Owner", con);
            cmd5.Parameters.Add("@Owner", NftId);
            cmd5.ExecuteNonQuery();
            con.Close();
        }

        public void RemovePFP(String NFTOwner)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd5 = new SqlCommand("UPDATE UserDetails SET Pfp = '0' where Username =@Owner", con);
            cmd5.Parameters.Add("@Owner", NFTOwner);
            cmd5.ExecuteNonQuery();
            con.Close();
        }

        public void UpdateNFTPrice(int NftId, String newPrice)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();

            SqlCommand cmd5 = new SqlCommand("UPDATE NFT SET Price =@newPrice where NFTID =@OldPrice", con);
            cmd5.Parameters.Add("@newPrice", newPrice);
            cmd5.Parameters.Add("@OldPrice", NftId);
            cmd5.ExecuteNonQuery();
            con.Close();
        }

        public void KeepNFT(int NftId)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd5 = new SqlCommand("UPDATE NFT SET IsBeingSold = 'false' where NFTID =@Owner", con);
            cmd5.Parameters.Add("@Owner", NftId);
            cmd5.ExecuteNonQuery();
            con.Close();
        }

        public void UpdatePfp(int pfp)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();

            SqlCommand cmd5 = new SqlCommand("UPDATE UserDetails SET Pfp =@newPfp where Username =@Username2", con);
            cmd5.Parameters.Add("@newPfp", pfp);
            cmd5.Parameters.Add("@Username2", Login.userName);
            cmd5.ExecuteNonQuery();
            con.Close();
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            ImageButton profilePic = (ImageButton)Page.Master.FindControl("ImageButton1");
            pfp = Market.nftSelected;
            UpdatePfp(pfp);
            profilePic.ImageUrl = "~/Image/" + (pfp - 1) + ".jpg";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Your_Profile.selectedUser = ReturnNftOwner(Market.nftSelected);
            Response.Redirect("Your Profile.aspx");
        }
    }
}