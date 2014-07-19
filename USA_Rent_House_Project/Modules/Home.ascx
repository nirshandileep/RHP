<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Home.ascx.cs" Inherits="USA_Rent_House_Project.Modules.Home" %>


<div id="div_Home" class="">
    <asp:Image ID="imgLogo" runat="server" ImageUrl="~/Images/House_Logo.jpg" Width="220" Height="165"  CssClass=""/>

    <p>Login to your Profile</p>

    <asp:HyperLink ID="StudentLogin" runat="server" NavigateUrl="~/Login.aspx">Student Login</asp:HyperLink> | <asp:HyperLink ID="HouseLogin" runat="server" NavigateUrl="~/Login.aspx">House Owener Login</asp:HyperLink>
</div>