<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Home.ascx.cs" Inherits="USA_Rent_House_Project.Modules.Home" %>


<div id="div_Home"> 
<h2 class="homeheading">www.ratemystudenthome.com</h2>   
<p class="homeheadingsub">"Student housing made simple, reliable, most of all accountable"</p>
    <div class="buttons">
    <asp:HyperLink ID="StudentLogin" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Login.aspx">Student Login</asp:HyperLink> 
    </div>
     <div class="buttons">
    <asp:HyperLink ID="HouseLogin" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Login.aspx">Landload Login</asp:HyperLink>
    </div>

    <div class="buttons">
    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Login.aspx">Search</asp:HyperLink>
    </div>
</div>