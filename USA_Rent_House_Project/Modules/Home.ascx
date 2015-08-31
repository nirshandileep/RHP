<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Home.ascx.cs" Inherits="USA_Rent_House_Project.Modules.Home" %>
<div id="div_Home">
    <div style="display: none">
        <h2 class="homeheading">
            Exclusive for UCR Students
        </h2>
        <h2 class="homeheading">
            www.ratestudenthousing.com</h2>
        <p class="homeheadingsub">
            "Student housing made simple, reliable, and most of all accountable"</p>
    </div>
    
    <div class="buttons">
        <asp:HyperLink ID="StudentLogin" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Login.aspx?type=s" Enabled="false">I am a Student</asp:HyperLink>
    </div>
    <div class="buttons">
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Search.aspx" Enabled="false">Search</asp:HyperLink>
    </div>
    <div class="buttons">
        <asp:HyperLink ID="HouseLogin" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Login.aspx?type=l" Enabled="false">I am a Landlord</asp:HyperLink>
    </div>
</div>
