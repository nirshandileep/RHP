<%@ Page Title="Login" Language="C#" MasterPageFile="~/Master_Pages/General.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="USA_Rent_House_Project.Login" %>

<%@ Register src="Modules/Login.ascx" tagname="Login" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Login ID="LoginID" runat="server" />
</asp:Content>
