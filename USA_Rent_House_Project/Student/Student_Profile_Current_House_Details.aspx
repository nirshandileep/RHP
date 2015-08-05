<%@ Page Title="Student Profile Current Residence Details" Language="C#" MasterPageFile="~/Master_Pages/Student.Master"
    AutoEventWireup="true" CodeBehind="Student_Profile_Current_House_Details.aspx.cs"
    Inherits="USA_Rent_House_Project.Student.Student_Profile_Current_House_Details" %>

<%@ Register Src="Modules/Student_Profile_Header.ascx" TagName="Student_Profile_Header"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc1" %>
<%@ Register Src="~/Student/Modules/Current_House_Menu_Bar.ascx" TagName="Current_House_Menu_Bar"
    TagPrefix="uc3" %>
<%@ Register Src="~/Student/Modules/Ctr_QuickLinks.ascx" TagName="QuickLinks" TagPrefix="uc1" %>
<%@ Register Src="Modules/Student_Profile_Update_Current_House_Details.ascx" TagName="Student_Profile_Update_Current_House_Details"
    TagPrefix="uc2" %>
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
            <uc2:Student_Profile_Update_Current_House_Details ID="Student_Profile_Update_Current_House_Details1"
                runat="server" />
        </div>
    </div>
</asp:Content>
