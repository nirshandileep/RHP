<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ctr_QuickLinks.ascx.cs" Inherits="USA_Rent_House_Project.Student.Modules.Ctr_QuickLinks" %>
<asp:HyperLink ID="HyperLinkPublicView" CssClass="loginlinks" Style="float: right" runat="server">Public View</asp:HyperLink>
            <div id="Search" class="floatright" runat="server">
            <asp:HyperLink ID="SearchStudent" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=s"
                runat="server">Search for Student</asp:HyperLink>
            <asp:HyperLink ID="SearchHouse" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=l"
                runat="server">Search for House</asp:HyperLink>

                </div>