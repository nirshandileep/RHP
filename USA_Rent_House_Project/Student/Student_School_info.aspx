<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Student.Master" AutoEventWireup="true"
    CodeBehind="Student_School_info.aspx.cs" Inherits="USA_Rent_House_Project.Student.Student_School_info" %>

<%@ Register Src="Modules/Student_School_info.ascx" TagName="Student_School_info"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Student_Profile_Header.ascx" TagName="Student_Profile_Header"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Student_Profile_Header ID="Student_Profile_HeaderID" runat="server" />
    <div id="currentHomeStudent" runat="server">
        <div id="LeftPanel" runat="server">
            <uc1:Menu_Bar ID="Menu_Bar1" runat="server" />
        </div>
        <div id="RightPanel" runat="server">
            <asp:HyperLink ID="HyperLinkPublicView" CssClass="loginlinks" Style="float: right" Target="_blank" runat="server">Public view</asp:HyperLink>
            <div id="Search" runat="server">
            <asp:HyperLink ID="SearchStudent" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=s"
                runat="server">Search for Student</asp:HyperLink>
            <asp:HyperLink ID="SearchHouse" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=l"
                runat="server">Search for House</asp:HyperLink>
        </div>
            <div class="clear">
            </div>
            <uc1:Student_School_info ID="Student_School_info1" runat="server" />
        </div>
    </div>
</asp:Content>
