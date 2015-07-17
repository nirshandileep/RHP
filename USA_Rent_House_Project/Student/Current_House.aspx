<%@ Page Title="Current House" Language="C#" MasterPageFile="~/Master_Pages/Student.Master"
    AutoEventWireup="true" CodeBehind="Current_House.aspx.cs" Inherits="USA_Rent_House_Project.Student.Current_House" %>

<%@ Register Src="Modules/Student_Profile_Header.ascx" TagName="Student_Profile_Header"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/CurrentHouse.ascx" TagName="CurrentHouse" TagPrefix="uc2" %>
<%@ Register Src="~/Student/Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc1" %>
<%@ Register Src="~/Student/Modules/Ctr_QuickLinks.ascx" TagName="QuickLinks" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Student_Profile_Header ID="Student_Profile_HeaderID" runat="server" />
    <div id="LeftPanel">
        <uc1:Menu_Bar ID="Menu_Bar1" runat="server" />
    </div>
    <uc1:QuickLinks ID="QuickLinksid" runat="server" />
    <div class="clear">
    </div>
    <uc2:CurrentHouse ID="CurrentHouse1" runat="server" />
</asp:Content>
