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
    public partial class Your_Profile : System.Web.UI.Page
    {
        public static String selectedUser;  
        protected void Page_Load(object sender, EventArgs e)
        {
            ImageButton[] collection = {Image1,
                ImageButton1, ImageButton2, ImageButton3, ImageButton4, ImageButton5, ImageButton6, ImageButton7, ImageButton8, ImageButton9, ImageButton10,
                ImageButton11, ImageButton12, ImageButton13, ImageButton14, ImageButton15, ImageButton16, ImageButton17, ImageButton18, ImageButton19, ImageButton20,
                ImageButton21, ImageButton22, ImageButton23, ImageButton24, ImageButton25, ImageButton26, ImageButton27, ImageButton28, ImageButton29, ImageButton30,
                ImageButton31, ImageButton32, ImageButton33, ImageButton34, ImageButton35, ImageButton36, ImageButton37, ImageButton38, ImageButton39, ImageButton40,
                ImageButton41, ImageButton42, ImageButton43, ImageButton44, ImageButton45, ImageButton46, ImageButton47, ImageButton48, ImageButton49, ImageButton50,
                ImageButton51, ImageButton52, ImageButton53, ImageButton54, ImageButton55, ImageButton56, ImageButton57, ImageButton58, ImageButton59, ImageButton60,
                ImageButton61, ImageButton62, ImageButton63, ImageButton64, ImageButton65, ImageButton66, ImageButton67, ImageButton68, ImageButton69, ImageButton70,
                ImageButton71, ImageButton72, ImageButton73, ImageButton74, ImageButton75, ImageButton76, ImageButton77, ImageButton78, ImageButton79, ImageButton80,
                ImageButton81, ImageButton82, ImageButton83, ImageButton84, ImageButton85, ImageButton86, ImageButton87, ImageButton88, ImageButton89, ImageButton90,
                ImageButton91, ImageButton92, ImageButton93, ImageButton94, ImageButton95, ImageButton96, ImageButton97, ImageButton98, ImageButton99
            };

            int[] nftsOwned = ReturnNftOwned(selectedUser);

            if (nftsOwned.Length==0)
            {
                Label1.Visible = true;
            }
            else
            {
                Label1.Visible = false;
            }

            for (int x = 0; x < 100; ++x)
            {
                collection[x].Visible = false;
                collection[x].ImageUrl = "~/Image/" + x + ".jpg";
            }
            for (int x = 0; x < nftsOwned.Length; ++x)
            {
                collection[nftsOwned[x]-1].Visible = true;
            }

            if (Login.ReturnPfp(selectedUser) == 0)
            {
                Image2.ImageUrl = "~/Image/default.png";
            }
            else
            {
                Image2.ImageUrl = "~/Image/" + (Login.ReturnPfp(selectedUser) - 1).ToString() + ".jpg";
            }

            Label201.Text = selectedUser + "'s NFTs";
        }
        protected void CheckNFT(object sender, ImageClickEventArgs e)
        {
            Market.nftSelectedString = ((ImageButton)sender).ImageUrl;
            Market.nftSelectedString = Market.nftSelectedString.Substring(Market.nftSelectedString.IndexOf("~") + 8);
            Market.nftSelectedString = Market.nftSelectedString.Split('.').First();
            Market.nftSelected = int.Parse(Market.nftSelectedString) + 1;
            Response.Redirect("NFT.aspx");
        }

        public int[] ReturnNftOwned(String Username)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();

            SqlCommand cmd1 = new SqlCommand("select NFTID from NFT where OnwerName=@Owner ", con);
            cmd1.Parameters.Add("@Owner", Username);
            SqlDataReader mdr = cmd1.ExecuteReader(CommandBehavior.CloseConnection);
            List<int> list = new List<int>();
            while (mdr.Read())
            {
                list.Add(mdr.GetInt32(0));
            }

            int[] NftArr = list.ToArray<int>();

            return NftArr;

        }
    }
}