<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/General.Master" AutoEventWireup="true" CodeBehind="Request_New_Password.aspx.cs" Inherits="USA_Rent_House_Project.Request_New_Password" %>
<%@ Register src="Modules/Request_Password.ascx" tagname="Request_Password" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <uc1:Request_Password ID="Request_PasswordID" runat="server" />

</asp:Content>
