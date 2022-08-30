<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Your Profile.aspx.cs" Inherits="iLoveVS.Your_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

    <div style="text-align:center; font-size: xx-large; color: #FFFFFF">
        <p>&nbsp;</p>
        <p style="font-family: 'Engravers MT'; font-size: 72px; color: #FFFFFF; text-align:center">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/default.png" Width="200px" style="margin-right:2.5%;border-radius:500px; vertical-align:middle;box-shadow: rgb(238, 36, 60, 0.4) 0px 0px 0px 3px, rgb(238, 36, 60, 0.3) 0px 0px 0px 6px, rgb(238, 36, 60, 0.2) 0px 0px 0px 9px, rgb(238, 36, 60, 0.1) 0px 0px 0px 12px, rgb(238, 36, 60, 0.05) 0px 0px 0px 15px;" /><p>
    </div>

    <div style="padding: 10px; margin: 50px; background-color: #FFFFFF; border-radius: 50px; border: 1px solid transparent;text-align:center; box-shadow: rgb(238, 36, 60, 0.4) 0px 0px 0px 3px, rgb(238, 36, 60, 0.3) 0px 0px 0px 6px, rgb(238, 36, 60, 0.2) 0px 0px 0px 9px, rgb(238, 36, 60, 0.1) 0px 0px 0px 12px, rgb(238, 36, 60, 0.05) 0px 0px 0px 15px;">
    <hr style="width:95%;"/>
    <p style="font-family: 'Engravers MT'; font-size: 30px; color: black">
        <asp:Label ID="Label201" runat="server" Text="Label"></asp:Label></p>
    <hr style="width:95%;"/>
        <div style="background-color: #83111e;border-radius: 25px;padding: 20px;margin: 25px;">
            <asp:ImageButton ID="Image1" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton1" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton2" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton3" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton4" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton5" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton6" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton7" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton8" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton9" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton10" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton11" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton12" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton13" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton14" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton15" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton16" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton17" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton18" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton19" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton20" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton21" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton22" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton23" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton24" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton25" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton26" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton27" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton28" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton29" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton30" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton31" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton32" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton33" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton34" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton35" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton36" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton37" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton38" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton39" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton40" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton41" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton42" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton43" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton44" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton45" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton46" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton47" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton48" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton49" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton50" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton51" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton52" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton53" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton54" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton55" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton56" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton57" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton58" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton59" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton60" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton61" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton62" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton63" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton64" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton65" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton66" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton67" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton68" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton69" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton70" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton71" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton72" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton73" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton74" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton75" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton76" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton77" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton78" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton79" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton80" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton81" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton82" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton83" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton84" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton85" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton86" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton87" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton88" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton89" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton90" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton91" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton92" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton93" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton94" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton95" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton96" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton97" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton98" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:ImageButton ID="ImageButton99" style="border-radius: 10%;margin:2.5%" runat="server" Height="150px" ImageUrl="~/Image/1.jpg" OnClick="CheckNFT" Width="150px" />
            <asp:Label ID="Label1" runat="server" Text="There are no NFTS" style="font-family: 'Engravers MT'; font-size: 30px; color: white"></asp:Label>
        </div>

    </div>

</asp:Content>
