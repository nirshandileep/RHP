<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Site-Admin.Master" AutoEventWireup="true" CodeBehind="UserList.aspx.cs" Inherits="USA_Rent_House_Project.Administrator.UserList" %>
<%@ Register src="Modules/UserList.ascx" tagname="UserList" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:UserList ID="ucUserList" runat="server" />
</asp:Content>
