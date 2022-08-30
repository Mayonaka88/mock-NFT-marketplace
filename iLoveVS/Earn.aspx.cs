using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iLoveVS
{
    public partial class Earn : System.Web.UI.Page
    {
        public static int rounds = 1;
        public static int userScore = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Game.aspx");
        }
    }
}