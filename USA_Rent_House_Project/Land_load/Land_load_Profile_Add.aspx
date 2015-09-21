<%@ Page Title="Landlord Profile info " Language="C#" MasterPageFile="~/Master_Pages/General.Master"
    AutoEventWireup="true" CodeBehind="Land_load_Profile_Add.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Land_load_Profile_Add" %>


<%@ Register Src="Modules/Landload_Profile_info_Add.ascx" TagName="Landload_Profile_info_Add"
    TagPrefix="uc1" %>
<%@ Register Src="~/Land_load/Modules/Landloard_Profile_Wizard.ascx" TagPrefix="uc1" TagName="Landloard_Profile_Wizard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <uc1:Landload_Profile_info_Add ID="Landload_Profile_info_AddID" runat="server" />
    <%--<uc1:Landloard_Profile_Wizard runat="server" id="Landloard_Profile_Wizard" />--%>

</asp:Content>
