<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Home.ascx.cs" Inherits="USA_Rent_House_Project.Modules.Home" %>


<div id="div_Home">    
    <div class="buttons">
    <asp:HyperLink ID="StudentLogin" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Login.aspx">Student Login</asp:HyperLink> 
    </div>
     <div class="buttons">
    <asp:HyperLink ID="HouseLogin" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Login.aspx">Landload Login</asp:HyperLink>
    </div>
</div>