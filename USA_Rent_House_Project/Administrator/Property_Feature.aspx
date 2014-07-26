<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Site-Admin.Master" AutoEventWireup="true" CodeBehind="Property_Feature.aspx.cs" Inherits="USA_Rent_House_Project.Administrator.Property_Feature" %>
<%@ Register src="Modules/PropertyFeatureAdd.ascx" tagname="PropertyFeatureAdd" tagprefix="uc1" %>
<%@ Register src="Modules/PropertyFeatureList.ascx" tagname="PropertyFeatureList" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <uc1:PropertyFeatureAdd ID="PropertyFeatureAddID" runat="server" />
    <uc2:PropertyFeatureList ID="PropertyFeatureListID" runat="server" />
</asp:Content>
