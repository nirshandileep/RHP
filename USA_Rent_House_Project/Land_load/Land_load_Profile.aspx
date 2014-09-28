<%@ Page Title="Landload Profile" Language="C#" MasterPageFile="~/Master_Pages/Land-Load.Master"
    AutoEventWireup="true" CodeBehind="Land_load_Profile.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Land_load_Profile" %>

<%@ Register Src="Modules/Landload_Profile_Header.ascx" TagName="Landload_Profile_Header"
    TagPrefix="uc1" %>
<%--<%@ Register Src="Modules/Landload_Profile_Data.ascx" TagName="Landload_Profile_Data"
    TagPrefix="uc2" %>--%>
<%@ Register Src="Modules/Landload_Profile_Banner.ascx" TagName="Landload_Profile_Banner"
    TagPrefix="uc3" %>
<%@ Register Src="~/Land_load/Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc2" %>
<%@ Register Src="Modules/House_List.ascx" TagName="House_List" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Landload_Profile_Header ID="Landload_Profile_Header1" runat="server" />
   
    <%-- <uc2:Landload_Profile_Data ID="Landload_Profile_Data1" runat="server" />
    --%>
    <div id="LeftPanel" runat="server">
        <uc2:Menu_Bar ID="Menu_Bar1" runat="server" />
    </div>
    <div id="RightPanel" runat="server">

     <div id="Search" class="floatright" runat="server">
            <asp:HyperLink ID="SearchStudent" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=s"
                runat="server">Search for Student</asp:HyperLink>
            <asp:HyperLink ID="SearchHouse" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=l"
                runat="server">Search for House</asp:HyperLink>
                <asp:HyperLink ID="HyperLink1" CssClass="loginlinks" NavigateUrl="~/Land_load/Land_Load_House_info_Add.aspx"
            runat="server">Add a New House</asp:HyperLink>
        <div class="clear"></div>
        </div>
                <div class="clear"></div>
      <uc1:House_List ID="House_ListID" runat="server" />  
    </div>
</asp:Content>
