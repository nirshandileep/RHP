<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/General.Master" AutoEventWireup="true" CodeBehind="Secret_Question.aspx.cs" Inherits="USA_Rent_House_Project.Secret_Question" %>
<%@ Register src="Modules/Secret_Question.ascx" tagname="Secret_Question" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Secret_Question ID="Secret_QuestionID" runat="server" />
</asp:Content>
