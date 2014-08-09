<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Site-Admin.Master" AutoEventWireup="true" CodeBehind="Property_Feature.aspx.cs" Inherits="USA_Rent_House_Project.Administrator.Property_Feature" %>

<%@ Register src="Modules/PropertyFeatureList.ascx" tagname="PropertyFeatureList" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <h1>Property Featuers</h1>
    <uc2:PropertyFeatureList ID="PropertyFeatureListID" runat="server" />
</asp:Content>
