<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="iLoveVS.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div style="text-align:center; font-size: xx-large; color: #FFFFFF">
        <p>&nbsp;</p>
        <p dir="auto" style="font-family: 'Engravers MT'; font-size: 36px; color: #FFFFFF">Welcome Back</p>
    </div>
    <div style="padding: 25px 40px 40px 40px; margin: 50px 250px 250px 250px; text-align:center; background-color: #FFFFFF; border-radius: 50px; border: 1px solid transparent;box-shadow: rgb(238, 36, 60, 0.4) 0px 0px 0px 3px, rgb(238, 36, 60, 0.3) 0px 0px 0px 6px, rgb(238, 36, 60, 0.2) 0px 0px 0px 9px, rgb(238, 36, 60, 0.1) 0px 0px 0px 12px, rgb(238, 36, 60, 0.05) 0px 0px 0px 15px;">
        <p style="font-family: 'Engravers MT'; font-size: xx-large; color: #000000">Login</p>
        
        <hr/>
        <p><asp:TextBox ID="TextBox1" runat="server" CssClass="textbox1" placeholder="Username" ></asp:TextBox></p>
        <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Field cant be empty!" style=" font-family: 'Courier New', Courier, monospace; font-weight: bolder;color:red" ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>
        </p>
        <br />
        <p><asp:TextBox ID="TextBox2" runat="server" CssClass="textbox1" placeholder="Password" TextMode="Password" ></asp:TextBox></p>
        <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Field cant be empty!" style=" font-family: 'Courier New', Courier, monospace; font-weight: bolder;color:red" ControlToValidate="TextBox2" Display="Dynamic"></asp:RequiredFieldValidator>
        </p>
        <br />
        <p style=" font-family: 'Courier New', Courier, monospace; font-weight: bolder;">
            <asp:Label ID="Label2" runat="server" Text="Invalid username or password!" Visible="False" ForeColor="Red"></asp:Label>
        </p>
        
        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="button1" OnClick="Button1_Click" />
        <br />
        <br />
        <p style="font-family: 'Footlight MT Light'; font-size: medium; color: #000000; font-weight: bold;">Not a member yet?&nbsp; <asp:Button ID="Button2" runat="server" Text="Sign Up" CssClass="button2" ForeColor="Black" Width="48px" OnClick="Button2_Click1" CausesValidation="False" /></p>
    </div>
</asp:Content>
