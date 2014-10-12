<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Land-Load.Master" AutoEventWireup="true" CodeBehind="Landload_Profile_Image.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Landload_Profile_Image" %>
<%@ Register src="Modules/Landload_Profile_Images_Add.ascx" tagname="Landload_Profile_Images_Add" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Landload_Profile_Images_Add ID="Landload_Profile_Images_Add1" 
        runat="server" />
</asp:Content>
