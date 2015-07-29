<%@ Page Title="Login" Language="C#" MasterPageFile="~/Master_Pages/General.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="USA_Rent_House_Project.Login" %>

<%@ Register Src="Modules/Login.ascx" TagName="Login" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="topimage">
        <img src="../../Images/Registration/logo.jpg" />
    </div>


    <uc1:Login ID="LoginID" runat="server" />

    <div class="verticalstars" style="margin-top: -725px;">

        <img src="../../Images/Registration/verticalstars.jpg">
    </div>
</asp:Content>
