<%@ Page Title="Landload Profile info " Language="C#" MasterPageFile="~/Master_Pages/General.Master" AutoEventWireup="true" CodeBehind="Land_load_Profile_Add.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Land_load_Profile_Add" %>
<%@ Register src="Modules/Landload_Profile_info_Add.ascx" tagname="Landload_Profile_info_Add" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Landload_Profile_info_Add ID="Landload_Profile_info_AddID" runat="server" />
</asp:Content>
