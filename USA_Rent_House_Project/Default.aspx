﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Master_Pages/General.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="USA_Rent_House_Project._Default" %>

<%@ Register src="Modules/Home.ascx" tagname="Home" tagprefix="uc1" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   
    <uc1:Home ID="HomeID" runat="server" />
   
</asp:Content>
