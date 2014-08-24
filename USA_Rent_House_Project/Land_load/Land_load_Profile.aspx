<%@ Page Title="Landload Profile" Language="C#" MasterPageFile="~/Master_Pages/Land-Load.Master"
    AutoEventWireup="true" CodeBehind="Land_load_Profile.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Land_load_Profile" %>

<%@ Register Src="Modules/Landload_Profile_Header.ascx" TagName="Landload_Profile_Header"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Landload_Profile_Data.ascx" TagName="Landload_Profile_Data"
    TagPrefix="uc2" %>
<%@ Register Src="Modules/Landload_Profile_Banner.ascx" TagName="Landload_Profile_Banner"
    TagPrefix="uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Landload_Profile_Header ID="Landload_Profile_Header1" runat="server" />
    <uc3:Landload_Profile_Banner ID="Landload_Profile_Banner1" runat="server" />
    <uc2:Landload_Profile_Data ID="Landload_Profile_Data1" runat="server" />
</asp:Content>
