<%@ Page Title="Current House Life View" Language="C#" MasterPageFile="~/Master_Pages/General.Master" AutoEventWireup="true" CodeBehind="Current_House_Life_View.aspx.cs" Inherits="USA_Rent_House_Project.Student.Current_House_Life_View" %>

<%@ Register src="Modules/Current_House_Life_View.ascx" tagname="Current_House_Life_View_" tagprefix="uc2" %>
<%@ Register Src="Modules/Student_Public_Profile_info_View.ascx" TagName="Student_Public_Profile_info_View"
    TagPrefix="uc3" %>
<%@ Register Src="Modules/Student_Public_Profile_Header.ascx" TagName="Student_Public_Profile_Header"
    TagPrefix="uc1" %>
    
    <asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Student_Public_Profile_Header ID="Student_Public_Profile_HeaderID" runat="server" />
    <div id="RightPanel_public">
        <asp:HyperLink ID="HyperLinkPublicView" CssClass="loginlinks" Style="float: right"
                runat="server">Public View</asp:HyperLink>
            <div id="Search" runat="server">
              <asp:HyperLink ID="HyperLinkabout" CssClass="loginlinks" NavigateUrl="~/Student/Student_Public_Profile_info.aspx"
                runat="server">About</asp:HyperLink>
                <asp:HyperLink ID="SearchStudent" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=s"
                    runat="server">Search for Student</asp:HyperLink>
                <asp:HyperLink ID="SearchHouse" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=l"
                    runat="server">Search for House</asp:HyperLink>
            </div>
            <div class="clear">
            </div>

 <uc2:Current_House_Life_View_ ID="Current_House_Life_View2" runat="server" />

</asp:Content>
