<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/General.Master" AutoEventWireup="true" CodeBehind="Change_Password.aspx.cs" Inherits="USA_Rent_House_Project.Change_Password" %>
<%@ Register src="Modules/Change_Password.ascx" tagname="Change_Password" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Change_Password ID="Change_Password1" runat="server" />
</asp:Content>
