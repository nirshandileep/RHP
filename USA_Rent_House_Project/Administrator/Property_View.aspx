<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Site-Admin.Master" AutoEventWireup="true" CodeBehind="Property_View.aspx.cs" Inherits="USA_Rent_House_Project.Administrator.Property_View" %>
<%@ Register src="Modules/PropertyView.ascx" tagname="PropertyView" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:PropertyView ID="PropertyViewID" runat="server" />
</asp:Content>
