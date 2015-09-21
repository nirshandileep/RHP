<%@ Page Title="Student Profile info" Language="C#" MasterPageFile="~/Master_Pages/Student.Master"
    AutoEventWireup="true" CodeBehind="Student_Profile_Edit.aspx.cs" Inherits="USA_Rent_House_Project.Student.Student_Profile_Edit" %>

<%@ Register Src="Modules/Student_Profile_info_Edit.ascx" TagName="Student_Profile_info_Edit"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Student_Profile_Header.ascx" TagName="Student_Profile_Header"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc1" %>
<%@ Register Src="~/Student/Modules/Ctr_QuickLinks.ascx" TagName="QuickLinks" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Student_Profile_Header ID="Student_Profile_HeaderID" runat="server" />
    <div id="currentHomeStudent" runat="server">
        <div id="LeftPanel" runat="server">
            <uc1:Menu_Bar ID="Menu_Bar1" runat="server" />
        </div>
        <div id="RightPanel" runat="server">
            <uc1:QuickLinks ID="QuickLinksid" runat="server" />
            <div class="clear">
            </div>
            <uc1:Student_Profile_info_Edit ID="Student_Profile_info_Edit2" runat="server" />
        </div>
    </div>
</asp:Content>
