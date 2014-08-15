<%@ Page Title="House_info_Add" Language="C#" MasterPageFile="~/Master_Pages/Land-Load.Master" AutoEventWireup="true" CodeBehind="Land_Load_House_info_Add.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Land_Load_House_info_Add" %>
<%@ Register src="~/Land_load/Modules/House_info_Add.ascx" tagname="House_info_Add" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:House_info_Add ID="House_info_Add1" runat="server" />
  
</asp:Content>
