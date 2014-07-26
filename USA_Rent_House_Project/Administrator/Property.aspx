<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Site-Admin.Master" AutoEventWireup="true" CodeBehind="Property.aspx.cs" Inherits="USA_Rent_House_Project.Administrator.Property" %>
<%@ Register src="Modules/PropertyList.ascx" tagname="PropertyList" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:PropertyList ID="PropertyListID" runat="server" />
</asp:Content>
