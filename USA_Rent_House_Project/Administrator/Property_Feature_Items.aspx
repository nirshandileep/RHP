<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Site-Admin.Master" AutoEventWireup="true" CodeBehind="Property_Feature_Items.aspx.cs" Inherits="USA_Rent_House_Project.Administrator.Property_Feature_Items" %>
<%@ Register src="Modules/PropertyFeatureItemList.ascx" tagname="PropertyFeatureItemList" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:PropertyFeatureItemList ID="PropertyFeatureItemList1" runat="server" />
</asp:Content>
