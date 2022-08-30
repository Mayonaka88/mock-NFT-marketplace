using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iLoveVS
{
    public partial class Game : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Label6.Text = Login.userName;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
            LinkButton3.Visible = true;
            LinkButton1.Enabled = true;
            LinkButton2.Enabled = true;
            LinkButton3.Enabled = true;
            Label7.Text = "";
            Label4.Text = "";
            Earn.rounds= Earn.rounds+1;
            Label5.Text = "Round " + Earn.rounds.ToString();
            Button1.Enabled = false;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            gamePlay("Rock");
            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
            LinkButton1.Enabled = false;
            Button1.Enabled = true;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            gamePlay("Paper");
            LinkButton2.Enabled = false;
            LinkButton1.Visible = false;
            LinkButton3.Visible = false;
            Button1.Enabled = true;
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            gamePlay("Scissors");
            LinkButton1.Visible = false;
            LinkButton2.Visible = false;
            LinkButton3.Enabled = false;
            Button1.Enabled = true;
        }

        public void gamePlay(String input)
        {
            String[] Game = { "Rock", "Paper", "Scissors" };
            String temp = Game[new Random().Next(0, Game.Length)];

            if (temp.Equals("Scissors"))
            {
                Label7.Text = "✌";
            }
            else if (temp.Equals("Paper"))
            {
                Label7.Text = "✋";
            }
            else if (temp.Equals("Rock"))
            {
                Label7.Text = "✊";
            }

            // User same as Ai therefore draw
            if (input == temp)
            {
                Label4.Text = "Draw!";
            }
            //User gets rock vs sics (win)
            else if (input.Equals("Rock") && temp.Equals("Scissors"))
            {
                Label4.Text = Login.userName + " Won!";
                Earn.userScore = Earn.userScore + 1;

            }
            //User gets rock vs paper (lose)
            else if (input.Equals("Rock") && temp.Equals("Paper"))
            {
                Label4.Text = Login.userName + " Lost!";
                
            }
            //User gets paper vs rock (win)
            else if (input.Equals("Paper") && temp.Equals("Rock"))
            {
                Label4.Text = Login.userName + " Won!";
                Earn.userScore = Earn.userScore + 1;

            }
            //User gets paper vs sics (lose)
            else if (input.Equals("Paper") && temp.Equals("Scissors"))
            {
                Label4.Text = Login.userName + " Lost!";

            }
            //User gets Sics vs Paper (win)
            else if (input.Equals("Scissors") && temp.Equals("Paper"))
            {
                Label4.Text = Login.userName + " Won!";
                Earn.userScore = Earn.userScore + 1;

            }

            //User gets Sics vs  Rock (lose)
            else if (input.Equals("Scissors") && temp.Equals("Rock"))
            {
                Label4.Text = Login.userName + " Lost!";

            }
            Label3.Text = Earn.userScore.ToString()+" Tokens Earned";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
            LinkButton3.Visible = true;
            LinkButton1.Enabled = true;
            LinkButton2.Enabled = true;
            LinkButton3.Enabled = true;
            Label7.Text = "";
            Label4.Text = "";
            Button1.Enabled = false;
            Login.userCredit = Login.userCredit + Earn.userScore;
            NFT.UpdateBuyerCredit(Earn.userScore, Login.userName);
            Earn.rounds = 1;
            Earn.userScore = 0;
            Label3.Text = Earn.userScore.ToString() + " Tokens Earned";
            Label5.Text = "Round " + Earn.rounds.ToString();
            Response.Redirect("Market.aspx");
        }
    }
}