<%@ Page Title="Land-Load House" Language="C#" MasterPageFile="~/Master_Pages/Land-Load.Master"
    AutoEventWireup="true" CodeBehind="Land_Load_House.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Land_Load_House" %>

<%@ Register Src="Modules/House_List.ascx" TagName="House_List" TagPrefix="uc1" %>
<%@ Register Src="Modules/Landload_Profile_Header.ascx" TagName="Landload_Profile_Header"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Landload_Profile_Banner.ascx" TagName="Landload_Profile_Banner"
    TagPrefix="uc3" %>

<%@ Register src="Modules/Menu_Bar.ascx" tagname="Menu_Bar" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Landload_Profile_Header ID="Landload_Profile_Header1" runat="server" />
    <uc3:Landload_Profile_Banner ID="Landload_Profile_Banner1" runat="server" />
    <div id="currentHomeStudent" runat="server">
        <div id="LeftPanel" runat="server">
           
            <uc2:Menu_Bar ID="Menu_Bar1" runat="server" />
           
        </div>
        <div id="RightPanel" runat="server">
      
            <asp:LinkButton ID="LB_House_Add" runat="server" OnClick="LB_House_Add_Click">Add a New House</asp:LinkButton>
            <uc1:House_List ID="House_ListID" runat="server" />
        </div>
    </div>
</asp:Content>
