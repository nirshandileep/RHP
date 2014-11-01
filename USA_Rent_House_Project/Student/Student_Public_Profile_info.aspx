<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/General.Master" AutoEventWireup="true"
    CodeBehind="Student_Public_Profile_info.aspx.cs" Inherits="USA_Rent_House_Project.Student.Student_Public_Profile_info" %>

<%@ Register Src="Modules/Student_Public_Profile_info_View.ascx" TagName="Student_Public_Profile_info_View"
    TagPrefix="uc3" %>
<%@ Register Src="Modules/Student_Public_Profile_Header.ascx" TagName="Student_Public_Profile_Header"
    TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <uc1:Student_Public_Profile_Header ID="Student_Public_Profile_HeaderID" runat="server" />
    <div class="student_public_about_search">
     <asp:HyperLink ID="HyperLinkPublicView" CssClass="loginlinks" Style="float: right"
                runat="server">Public view</asp:HyperLink>
            <div id="Search" runat="server">
              <asp:HyperLink ID="HyperLinkabout" CssClass="loginlinks" NavigateUrl="~/Student/Student_Public_Profile_info.aspx"
                runat="server">About</asp:HyperLink>
                <asp:HyperLink ID="SearchStudent" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=s"
                    runat="server">Search for Student</asp:HyperLink>
                <asp:HyperLink ID="SearchHouse" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=l"
                    runat="server">Search for House</asp:HyperLink>
            </div>
            </div>
            <div class="clear">
            </div>
    <div id="RightPanel_public">
       

        <uc3:Student_Public_Profile_info_View ID="Student_Public_Profile_info_View1" runat="server" />
      
    </div>
</asp:Content>
