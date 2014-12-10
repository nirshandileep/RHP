<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Home.ascx.cs" Inherits="USA_Rent_House_Project.Modules.Home" %>


<div id="div_Home"> 
<h2 class="homeheading">www.ratemystudenthousingandme.com</h2>   
<p class="homeheadingsub">"Student Housing Made Simple, Reliable, Most of all Accountable"</p>
    <div class="buttons">
    <asp:HyperLink ID="StudentLogin" runat="server" CssClass="homelargebuttons" NavigateUrl="">I am a Student</asp:HyperLink> 
    </div>
     <div class="buttons">
    <asp:HyperLink ID="HouseLogin" runat="server" CssClass="homelargebuttons" NavigateUrl="">I am a Landlord</asp:HyperLink>
    </div>

    <div class="buttons">
    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="homelargebuttons" NavigateUrl="">Search</asp:HyperLink>
    </div>

    <div class="buttons">
    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Contest.aspx">Contest</asp:HyperLink>
    </div>
</div>