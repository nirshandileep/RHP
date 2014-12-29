<%@ Page Title="House Details" Language="C#" MasterPageFile="~/Master_Pages/Land-Load.Master"
    AutoEventWireup="true" CodeBehind="Land_Load_Public_House_View.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Land_Load_Public_House_View" %>

<%@ Register Src="Modules/House_Public_Details.ascx" TagName="House_Public_Details"
    TagPrefix="uc2" %>
<%@ Register Src="Modules/Landload_Public_Profile_Banner.ascx" TagName="Landload_Public_Profile_Banner"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Landload_Public_Profile_Header.ascx" TagName="Landload_Public_Profile_Header"
    TagPrefix="uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc3:Landload_Public_Profile_Header ID="Landload_Public_Profile_Header1" runat="server" />
    <div class="ll_info_search_bar">
    <asp:HyperLink ID="HyperLinkPublicView" CssClass="loginlinks" Style="float: right"
        NavigateUrl="~/Land_load/Land_load_Profile.aspx" runat="server">My Page</asp:HyperLink>
    <div id="Search" class="floatright llpublicsearch" runat="server">
        <asp:HyperLink ID="SearchStudent" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=s"
            runat="server">Search for Student</asp:HyperLink>
        <asp:HyperLink ID="SearchHouse" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=l"
            runat="server">Search for House</asp:HyperLink>
    </div>
    </div>
    <div class="clear">
    </div>
    <div id="LeftPanel_LandL" runat="server">
    </div>
    <div id="RightPanelLL">
        <uc2:House_Public_Details ID="House_Public_Details1" runat="server" />
    </div>
</asp:Content>
