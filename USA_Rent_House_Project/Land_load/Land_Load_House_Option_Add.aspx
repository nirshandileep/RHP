<%@ Page Title="House Options" Language="C#" MasterPageFile="~/Master_Pages/Land-Load.Master" AutoEventWireup="true" CodeBehind="Land_Load_House_Option_Add.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Land_Load_House_Option_Add" %>
<%@ Register src="~/Land_load/Modules/House_Option_Add.ascx" tagname="House_Option_Add" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <uc2:House_Option_Add ID="House_Option_Add1" runat="server" />
</asp:Content>

