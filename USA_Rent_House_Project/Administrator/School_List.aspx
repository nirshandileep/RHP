<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Site-Admin.Master" AutoEventWireup="true" CodeBehind="School_List.aspx.cs" Inherits="USA_Rent_House_Project.Administrator.School_List" %>
<%@ Register src="Modules/SchoolList.ascx" tagname="SchoolList" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:SchoolList ID="ucSchoolList" runat="server" />
</asp:Content>
