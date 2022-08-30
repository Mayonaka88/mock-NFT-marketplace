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
    public partial class Market : System.Web.UI.Page
    {
        public static int nftSelected;
        public static String nftSelectedString;
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

            Label[] collectionName = { 
            Label1,Label2,Label3,Label4,Label5,Label6,Label7,Label8,Label9,Label10,
            Label11,Label12,Label13,Label14,Label15,Label16,Label17,Label18,Label19,Label20,
            Label21,Label22,Label23,Label24,Label25,Label26,Label27,Label28,Label29,Label30,
            Label31,Label32,Label33,Label34,Label35,Label36,Label37,Label38,Label39,Label40,
            Label41,Label42,Label43,Label44,Label45,Label46,Label47,Label48,Label49,Label50,
            Label51,Label52,Label53,Label54,Label55,Label56,Label57,Label58,Label59,Label60,
            Label61,Label62,Label63,Label64,Label65,Label66,Label67,Label68,Label69,Label70,
            Label71,Label72,Label73,Label74,Label75,Label76,Label77,Label78,Label79,Label80,
            Label81,Label82,Label83,Label84,Label85,Label86,Label87,Label88,Label89,Label90,
            Label91,Label92,Label93,Label94,Label95,Label96,Label97,Label98,Label99,Label100,
            Label101,Label102,Label103,Label104,Label105,Label106,Label107,Label108,Label109,Label110,
            Label111,Label112,Label113,Label114,Label115,Label116,Label117,Label118,Label119,Label120,
            Label121,Label122,Label123,Label124,Label125,Label126,Label127,Label128,Label129,Label130,
            Label131,Label132,Label133,Label134,Label135,Label136,Label137,Label138,Label139,Label140,
            Label141,Label142,Label143,Label144,Label145,Label146,Label147,Label148,Label149,Label150,
            Label151,Label152,Label153,Label154,Label155,Label156,Label157,Label158,Label159,Label160,
            Label161,Label162,Label163,Label164,Label165,Label166,Label167,Label168,Label169,Label170,
            Label171,Label172,Label173,Label174,Label175,Label176,Label177,Label178,Label179,Label180,
            Label181,Label182,Label183,Label184,Label185,Label186,Label187,Label188,Label189,Label190,
            Label191,Label192,Label193,Label194,Label195,Label196,Label197,Label198,Label199,Label200,
            };

            for (int x = 0; x < 100; ++x )
            {
                collection[x].ImageUrl = "~/Image/"+x+".jpg";
            }

            int NFTnum = 1;
            for (int x = 0; x < 200; x=x+2)
            {
                
                collectionName[x].Text = "Azuki Member "+"#"+ NFTnum;
                collectionName[x+1].Text = "Price = "+ ReturnNftPrice(NFTnum).ToString()+" ♦";
                NFTnum = NFTnum + 1;
            }

        }

    

        protected void CheckNFT(object sender, ImageClickEventArgs e)
        {
            nftSelectedString = ((ImageButton)sender).ImageUrl;
            nftSelectedString = nftSelectedString.Substring(nftSelectedString.IndexOf("~")+8);
            nftSelectedString = nftSelectedString.Split('.').First();
            nftSelected = int.Parse(nftSelectedString) + 1;
            Response.Redirect("NFT.aspx");
        }

        public static int ReturnNftPrice(int NftId)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select Price from NFT where NFTID =@ID ", con);
            cmd1.Parameters.Add("@ID", NftId);
            String temp1 = cmd1.ExecuteScalar().ToString();
            int NFTprice = int.Parse(temp1);
            cmd1.ExecuteNonQuery();
            con.Close();
            return NFTprice;
        }
    }
}