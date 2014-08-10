<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Land-Load.Master" AutoEventWireup="true" CodeBehind="Land_load_Profile_Edit.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Land_load_Profile_Edit" %>
<%@ Register src="Modules/Landload_Profile_info_Edit.ascx" tagname="Landload_Profile_info_Edit" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Landload_Profile_info_Edit ID="Landload_Profile_info_Edit1" 
        runat="server" />
</asp:Content>
