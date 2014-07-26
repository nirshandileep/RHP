<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Site-Admin.Master" AutoEventWireup="true" CodeBehind="Student_View.aspx.cs" Inherits="USA_Rent_House_Project.Administrator.Student_View" %>
<%@ Register src="Modules/StudentView.ascx" tagname="StudentView" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:StudentView ID="StudentViewID" runat="server" />
</asp:Content>
