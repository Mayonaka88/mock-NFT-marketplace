<%@ Page Title="Play" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="iLoveVS.Game" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div style="text-align:center; font-size: xx-large; color: #FFFFFF">
        <p>&nbsp;</p>
        <p dir="auto" style="font-family: 'Engravers MT'; font-size: 72px; color: #FFFFFF">
            <asp:Label ID="Label5" runat="server" Text="Round 1"></asp:Label>
            </p>
    </div>

    <div style="padding: 10px; margin: 50px 20% 50px 20%; background-color: #FFFFFF; border-radius: 50px; border: 1px solid transparent;text-align:center; box-shadow: rgb(238, 36, 60, 0.4) 0px 0px 0px 3px, rgb(238, 36, 60, 0.3) 0px 0px 0px 6px, rgb(238, 36, 60, 0.2) 0px 0px 0px 9px, rgb(238, 36, 60, 0.1) 0px 0px 0px 12px, rgb(238, 36, 60, 0.05) 0px 0px 0px 15px;">

        <div style="padding-right: 5%; padding-bottom: 5%; padding-left: 5%;">
            <hr style="width:75%;"/>
            <p style=" font-family: 'Engravers MT'; text-align: center; font-weight: bolder; font-size: xx-large; color: #000000;">Computer</p>
            <hr style="width:75%;"/>
            <p style=" font-family: 'Courier New', Courier, monospace; text-align: center; font-weight: bolder; font-size: xx-large; color: #FF0000;">
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </p>
            <p style=" font-family: 'Courier New', Courier, monospace; text-align: center; font-weight: bolder; font-size: xx-large; color: #FF0000;">&nbsp;</p>
            <p style=" font-family: 'Engravers MT'; text-align: center; font-weight: bolder; font-size: xx-large; color: #000000;">
                <asp:Label ID="Label4" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
            </p>
            <p style=" font-family: 'Engravers MT'; text-align: center; font-weight: bolder; font-size: xx-large; color: #000000;">
                &nbsp;</p>
            <p style=" font-family: 'Courier New', Courier, monospace; text-align: center; font-weight: bolder; font-size: xx-large; color: #FF0000;">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" style="text-decoration: none !important;margin:5px">✊</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" style="text-decoration: none !important;margin:5px">✋</asp:LinkButton>
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" style="text-decoration: none !important;margin:5px">✌</asp:LinkButton>
            </p>
            <hr style="width:75%;"/>
            <p style=" font-family: 'Engravers MT'; text-align: center; font-weight: bolder; font-size: xx-large; color: #000000;">
                <asp:Label ID="Label6" runat="server" Text="Player"></asp:Label>
            </p>

            <hr style="width:75%;"/>
            <br />
                <hr style="width:95%;"/>
            <p style="font-family: 'Engravers MT'; font-size: 30px; color: black">
                <asp:Label ID="Label3" runat="server" Text="0 Tokens Earned"></asp:Label>
                </p>
            <hr style="width:95%;"/>
            <br />
            <p style=" font-family: 'Engravers MT'; text-align: center; font-weight: bolder; font-size: xx-large; color: #000000;margin-top:2%;">
            <asp:Button ID="Button1" runat="server" Text="Next Round" CssClass="button1" OnClick="Button1_Click" style="border-radius:15px;font-size:large;height:auto;width:100%" Enabled="False"/>
                <asp:Button ID="Button2" runat="server" Text="Cash Out" CssClass="button1" OnClick="Button2_Click" style="border-radius:15px;font-size:large;height:auto;width:100%"/>
                </p>
           </div>
    </div>
</asp:Content>
