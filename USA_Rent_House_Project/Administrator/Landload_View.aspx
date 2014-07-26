<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Site-Admin.Master" AutoEventWireup="true" CodeBehind="Landload_View.aspx.cs" Inherits="USA_Rent_House_Project.Administrator.Landload_View" %>
<%@ Register src="Modules/LandloadView.ascx" tagname="LandloadView" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:LandloadView ID="LandloadView1" runat="server" />
</asp:Content>
