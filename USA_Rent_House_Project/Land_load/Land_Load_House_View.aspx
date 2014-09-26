<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Land-Load.Master"
    AutoEventWireup="true" CodeBehind="Land_Load_House_View.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Land_Load_House_View" %>

<%@ Register Src="Modules/House_Details.ascx" TagName="House_Details" TagPrefix="uc1" %>
<%@ Register Src="Modules/Landload_Profile_Header.ascx" TagName="Landload_Profile_Header"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Landload_Profile_Header ID="Landload_Profile_Header1" runat="server" />
    <div id="currentHomeStudent" runat="server">
        <div id="LeftPanel" runat="server">
            <uc4:Menu_Bar ID="Menu_Bar1" runat="server" />
        </div>
        <div id="RightPanel" runat="server">
            <div id="Div1" runat="server">
                <asp:HyperLink ID="HyperLink1" CssClass="loginlinks" NavigateUrl="~/Land_load/Land_load_Profile.aspx"
                    runat="server">My Properties</asp:HyperLink>
                <asp:HyperLink ID="HyperLinkPublicView" CssClass="loginlinks" Style="float: right"
                    Target="_blank" runat="server">Public view</asp:HyperLink>
            </div>
            <div id="Search" runat="server">
                <asp:HyperLink ID="SearchStudent" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=s"
                    runat="server">Search for Student</asp:HyperLink>
                <asp:HyperLink ID="SearchHouse" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=l"
                    runat="server">Search for House</asp:HyperLink>
            </div>
            <uc1:House_Details ID="House_Details1" runat="server" />
        </div>
    </div>
</asp:Content>
