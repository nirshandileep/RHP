<%@ Page Title="House_info_Add" Language="C#" MasterPageFile="~/Master_Pages/Land-Load.Master" AutoEventWireup="true" CodeBehind="Land_Load_House_info_Add.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Land_Load_House_info_Add" %>
<%@ Register src="Modules/House_info_Add.ascx" tagname="House_info_Add" tagprefix="uc1" %>
<%@ Register src="Modules/House_Option_Add.ascx" tagname="House_Option_Add" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:House_info_Add ID="House_info_Add1" runat="server" />
    <uc2:House_Option_Add ID="House_Option_Add1" runat="server" />
</asp:Content>
