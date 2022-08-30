<%@ Page Title="Earn" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Earn.aspx.cs" Inherits="iLoveVS.Earn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <div style="text-align:center; font-size: xx-large; color: #FFFFFF">
        <p>&nbsp;</p>
        <p dir="auto" style="font-family: 'Engravers MT'; font-size: 72px; color: #FFFFFF">PLAY &amp; EARN</p>
    </div>

    <div style="padding: 10px; margin: 50px 20% 50px 20%; background-color: #FFFFFF; border-radius: 50px; border: 1px solid transparent;text-align:center; box-shadow: rgb(238, 36, 60, 0.4) 0px 0px 0px 3px, rgb(238, 36, 60, 0.3) 0px 0px 0px 6px, rgb(238, 36, 60, 0.2) 0px 0px 0px 9px, rgb(238, 36, 60, 0.1) 0px 0px 0px 12px, rgb(238, 36, 60, 0.05) 0px 0px 0px 15px;">
    <hr style="width:95%;"/>
    <p style="font-family: 'Engravers MT'; font-size: 30px; color: black">Row Sham Bow</p>
    <hr style="width:95%;"/>

        <div style="padding-right: 5%; padding-bottom: 5%; padding-left: 5%;">
                
        <p style=" font-family: 'Courier New', Courier, monospace; text-align: left; font-weight: bolder;">Row Sham Bow, also known as rock paper scissors,is a hand game, usually played between two people, in which each player simultaneously forms one of three shapes with an outstretched hand. These shapes are &quot;rock&quot;, &quot;paper&quot;, and &quot;scissors&quot;.</p>
            <p style=" font-family: 'Courier New', Courier, monospace; text-align: left; font-weight: bolder;">Earn tokens to buy NFTs by playing Row Sham Bow against the computer. The more you win the more you earn!</p>
            <p style=" font-family: 'Courier New', Courier, monospace; text-align: center; font-weight: bolder; font-size: xx-large; color: #FF0000;">✊ ✋ ✌</p>
            <p style=" font-family: 'Courier New', Courier, monospace; text-align: center; font-weight: bolder;"><asp:Button ID="Button1" runat="server" Text="Start" CssClass="button1" OnClick="Button1_Click" style="margin-top:2%;border-radius:15px;font-size:large;height:auto;width:100%"/></p>
        </div>
    </div>

</asp:Content>
