<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/General.Master" AutoEventWireup="true" CodeBehind="Change_Secret_Question.aspx.cs" Inherits="USA_Rent_House_Project.Change_Secret_Question" %>
<%@ Register src="Modules/Change_Secret_Question.ascx" tagname="Change_Secret_Question" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Change_Secret_Question ID="Change_Secret_Question1" runat="server" />
</asp:Content>
