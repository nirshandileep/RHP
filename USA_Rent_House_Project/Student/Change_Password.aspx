<%@ Page Title="Change Password" Language="C#" MasterPageFile="~/Master_Pages/Student.Master" AutoEventWireup="true"
    CodeBehind="Change_Password.aspx.cs" Inherits="USA_Rent_House_Project.Student.Change_Password" %>

<%@ Register Src="../Modules/Change_Password.ascx" TagName="Change_Password" TagPrefix="uc1" %>
<%@ Register Src="~/Student/Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc1" %>
<%@ Register Src="~/Student/Modules/Student_Profile_Header.ascx" TagName="Student_Profile_Header"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Student_Profile_Header ID="Student_Profile_HeaderID" runat="server" />
   
    <div id="currentHomeStudent" runat="server">
        <div id="LeftPanel" runat="server">
            <uc1:Menu_Bar ID="Menu_Bar1" runat="server" />
        </div>
        <div id="RightPanel" runat="server">
            <asp:HyperLink ID="HyperLinkPublicView" CssClass="loginlinks" Style="float: right"
                runat="server">Public View</asp:HyperLink>
            <div id="Search" class="floatright" runat="server">
                <asp:HyperLink ID="SearchStudent" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=s"
                    runat="server">Search for Student</asp:HyperLink>
                <asp:HyperLink ID="SearchHouse" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=l"
                    runat="server">Search for House</asp:HyperLink>
            </div>
            <div class="clear">
            </div>
           
            <uc1:Change_Password ID="Change_Password2" runat="server" />
        </div>
    </div>
</asp:Content>
