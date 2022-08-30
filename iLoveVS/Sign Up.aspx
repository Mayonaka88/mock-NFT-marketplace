<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sign Up.aspx.cs" Inherits="iLoveVS.Sign_Up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div style="text-align:center; font-size: xx-large; color: #FFFFFF">
        <p>&nbsp;</p>
        <p dir="auto" style="font-family: 'Engravers MT'; font-size: 36px; color: #FFFFFF">Registration Form</p>
    </div>
    <div style="padding: 25px 40px 40px 40px; margin: 50px 250px 250px 250px; text-align:center; background-color: #FFFFFF; border-radius: 50px; border: 1px solid transparent;box-shadow: rgb(238, 36, 60, 0.4) 0px 0px 0px 3px, rgb(238, 36, 60, 0.3) 0px 0px 0px 6px, rgb(238, 36, 60, 0.2) 0px 0px 0px 9px, rgb(238, 36, 60, 0.1) 0px 0px 0px 12px, rgb(238, 36, 60, 0.05) 0px 0px 0px 15px;">
        <p style="font-family: 'Engravers MT'; font-size: xx-large; color: #000000">Sign Up</p>
        
        <hr/>
        <p><asp:TextBox ID="TextBox1" runat="server" CssClass="textbox1" placeholder="First Name" AutoCompleteType="Disabled" autocomplete="off"></asp:TextBox></p>
                <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Field cant be empty" style=" font-family: 'Courier New', Courier, monospace; font-weight: bolder;color:red" ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="* Name should be letters only" ValidationExpression="[a-zA-Z]+" style=" font-family: 'Courier New', Courier, monospace; font-weight: bolder;color:red" Display="Dynamic"></asp:RegularExpressionValidator>
        </p>
        <br />
        <p><asp:TextBox ID="TextBox6" runat="server" CssClass="textbox1" placeholder="Last Name" AutoCompleteType="Disabled" autocomplete="off"></asp:TextBox></p>
                <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="* Field cant be empty" style=" font-family: 'Courier New', Courier, monospace; font-weight: bolder;color:red" ControlToValidate="TextBox6" Display="Dynamic"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="* Name should be letters only" ValidationExpression="[a-zA-Z]+" style=" font-family: 'Courier New', Courier, monospace; font-weight: bolder;color:red" Display="Dynamic"></asp:RegularExpressionValidator>
        </p>
        <br />
        <p><asp:TextBox ID="TextBox2" runat="server" CssClass="textbox1" placeholder="Email" AutoCompleteType="Disabled" autocomplete="off"></asp:TextBox></p>
                <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Field cant be empty" style=" font-family: 'Courier New', Courier, monospace; font-weight: bolder;color:red" ControlToValidate="TextBox2" Display="Dynamic"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Invalid Email" style=" font-family: 'Courier New', Courier, monospace; font-weight: bolder;color:red" ControlToValidate="TextBox2" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
        </p>
        <br />
        <p><asp:TextBox ID="TextBox4" runat="server" CssClass="textbox1" placeholder="Username" AutoCompleteType="Disabled" autocomplete="off"></asp:TextBox></p>
                <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Field cant be empty" style=" font-family: 'Courier New', Courier, monospace; font-weight: bolder;color:red" ControlToValidate="TextBox4" Display="Dynamic"></asp:RequiredFieldValidator>
        </p>
        <p>
            
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="* Spaces are not allowed" style=" font-family: 'Courier New', Courier, monospace; font-weight: bolder;color:red" ControlToValidate="TextBox4" ValidationExpression="[^\s]+" Display="Dynamic"></asp:RegularExpressionValidator>
            
        </p>
        <br />
        <p><asp:TextBox ID="TextBox3" runat="server" CssClass="textbox1" placeholder="Password" AutoCompleteType="Disabled" TextMode="Password" autocomplete="off"></asp:TextBox></p>
                <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Field cant be empty" style=" font-family: 'Courier New', Courier, monospace; font-weight: bolder;color:red" ControlToValidate="TextBox3" Display="Dynamic"></asp:RequiredFieldValidator>
        </p>
        <br />
        <p><asp:TextBox ID="TextBox5" runat="server" CssClass="textbox1" placeholder="Confirm Password" AutoCompleteType="Disabled" TextMode="Password" autocomplete="off"></asp:TextBox></p>
                <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* Field cant be empty" style=" font-family: 'Courier New', Courier, monospace; font-weight: bolder;color:red" ControlToValidate="TextBox5" Display="Dynamic"></asp:RequiredFieldValidator> </p>
        <p>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="* Password is not the same" style=" font-family: 'Courier New', Courier, monospace; font-weight: bolder;color:red" ControlToCompare="TextBox3" ControlToValidate="TextBox5" Display="Dynamic"></asp:CompareValidator>
        </p>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Sign Up" CssClass="button1" OnClick="Button1_Click" />
        <br />
        <br />
        <p style="font-family: 'Footlight MT Light'; font-size: medium; color: #000000; font-weight: bold;">Already a member?&nbsp; <asp:Button ID="Button2" runat="server" Text="Login" CssClass="button2" ForeColor="Black" Width="48px" OnClick="Button2_Click1" CausesValidation="False" /></p>
    </div>
</asp:Content>
