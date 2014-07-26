<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Site-Admin.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="USA_Rent_House_Project.Administrator.Student" %>
<%@ Register src="Modules/StudentList.ascx" tagname="StudentList" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:StudentList ID="StudentListID" runat="server" />
</asp:Content>
