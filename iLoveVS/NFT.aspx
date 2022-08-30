<%@ Page Title="NFT" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NFT.aspx.cs" Inherits="iLoveVS.NFT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding: 15px; margin: 5% 25px 25px 25px; background-color: #FFFFFF; border-radius: 50px; border: 1px solid transparent; box-shadow: rgb(238, 36, 60, 0.4) 0px 0px 0px 3px, rgb(238, 36, 60, 0.3) 0px 0px 0px 6px, rgb(238, 36, 60, 0.2) 0px 0px 0px 9px, rgb(238, 36, 60, 0.1) 0px 0px 0px 12px, rgb(238, 36, 60, 0.05) 0px 0px 0px 15px; text-align: center; height: auto; width: 90%;"> 
                <hr style="width:95%;"/>
            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Names="Engravers MT" Font-Size="X-Large" Font-Underline="False"></asp:Label>
                <hr style="width:95%;"/>
            <div style="text-align: center; padding: 10px; margin: 0% 2.5% 2.5% 2.5%; width: 40%; float: left; height: auto;">
                <p style="box-sizing: border-box; font-size: 12px; margin-top: 0px; color: rgb(112, 122, 131); font-family: Poppins, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    &nbsp;</p>
                <p style="box-sizing: border-box; font-size: 16px; margin-top: 0px; color: rgb(112, 122, 131); font-family: Poppins, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    A brand for the metaverse. Built by the community.</p>
                <p style="box-sizing: border-box; font-size: 16px; margin-top: 0px; color: rgb(112, 122, 131); font-family: Poppins, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    Azuki starts with a collection of 100 avatars that give you membership access to The Garden: a corner of the internet where artists, builders, and web3 enthusiasts meet to create a decentralized future. Azuki holders receive access to exclusive drops, experiences, and more.</p>
                <p style="box-sizing: border-box; font-size: 16px; margin-top: 0px; color: rgb(112, 122, 131); font-family: Poppins, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    We rise together. We build together. We grow together.</p>
                <p style="box-sizing: border-box; font-size: 16px; margin-top: 0px; color: rgb(112, 122, 131); font-family: Poppins, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    Ready to take the red bean?</p>
                
                <div style="text-align: center; width: 50%; float: left; height: auto;">
                    <hr style="width:75%; margin-bottom: 10px;"/>
                    <p style="font-family: 'Engravers MT'; font-size: medium; font-weight: bold">Owner</p>
                    <hr style="width:75%; margin-top: 0px;"/>
                    <asp:LinkButton ID="LinkButton1" Text="Label" Font-Bold="True" Font-Names="Poppins,sans-serif" Font-Size="Medium" runat="server" ForeColor="Black" OnClick="LinkButton1_Click"></asp:LinkButton>
                </div>
                <div style="text-align: center; width: 50%; float: left; height: auto;">
                    <hr style="width:75%; margin-bottom: 10px;"/>
                    <p style="font-family: 'Engravers MT'; font-size: medium; font-weight: bold">Price</p>
                    <hr style="width:75%; margin-top: 0px;"/>
                    <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" Font-Names="Poppins,sans-serif" Font-Size="Medium" Font-Underline="False"></asp:Label>
                </div>
                <div style="margin-bottom:35%"></div>
                <asp:Label ID="Label2" runat="server" Text="New Price:" Font-Bold="True" Font-Names="Engravers MT" Font-Size="Medium" Font-Underline="False" style="vertical-align:middle; margin-top:40%;margin-right:10px"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"  CssClass="textbox1" Width="35%" style="margin-top:40%;margin-top:0px" TextMode="Number"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Buy" CssClass="button1" OnClick="Button1_Click" style="margin-top:5%;border-radius:15px;font-size:large;height:auto;width:100%"/>
                <div class="spacer" style="clear: both;"></div>
            </div>
            <div style="width: 50%; padding: 10px; margin: 0% 1.5% 1.5% 1.5%;  float: right; height: auto; position: relative;">
                <asp:Image ID="Image1" runat="server" style="border-radius: 10%; border: 1px solid transparent;" Width="100%"/>
                <asp:Button ID="Button3" runat="server" Text="+" CssClass="button1" OnClick="Button3_Click" style="border-radius:500px;font-size:large;height:10%;width:10%; min-width:0px; padding:0px;
                  position: absolute;
                  top: 15%;
                  left: 85%;
                  transform: translate(-15%, -85%);
                  -ms-transform: translate(-15%, -85%);"/>
            </div>
        <div class="spacer" style="clear: both;"></div>
    </div>

</asp:Content>
