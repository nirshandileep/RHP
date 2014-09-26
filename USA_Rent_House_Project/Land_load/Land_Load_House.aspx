<%@ Page Title="Land-Load House" Language="C#" MasterPageFile="~/Master_Pages/Land-Load.Master"
    AutoEventWireup="true" CodeBehind="Land_Load_House.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Land_Load_House" %>

<%@ Register Src="Modules/Landload_Profile_Header.ascx" TagName="Landload_Profile_Header"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Landload_Profile_Banner.ascx" TagName="Landload_Profile_Banner"
    TagPrefix="uc3" %>
<%@ Register Src="Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc4" %>
<%@ Register src="Modules/Landload_Profile_Comments.ascx" tagname="Landload_Profile_Comments" tagprefix="uc2" %>
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
            <uc3:Landload_Profile_Banner ID="Landload_Profile_Banner2" runat="server" />
            <div id="Search" runat="server">
                <asp:HyperLink ID="SearchStudent" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=s"
                    runat="server">Search for Student</asp:HyperLink>
                <asp:HyperLink ID="SearchHouse" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=l"
                    runat="server">Search for House</asp:HyperLink>
            </div>

            <div id="HouseDetails" runat="server">
                <asp:HyperLink ID="HyperLinkHouseDetails" runat="server">House Details</asp:HyperLink>
            </div>
            <div id="currentHomeStudentData" runat="server" visible="false">
                <h2>
                    All the students live in the current home</h2>
                <br />
                <asp:DataList ID="DataListCurrentHomeStudent" runat="server" RepeatColumns="3" DataKeyField="UserId">
                    <ItemTemplate>
                        <div class="imagegallerycontainer">
                            <div class="imagegallery">
                            </div>
                            <div>
                                <asp:Label ID="lblname" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("MiddleName") %>'></asp:Label>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("LastName") %>'></asp:Label><br />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                
            </div>

            <uc2:Landload_Profile_Comments ID="Landload_Profile_Comments1" runat="server" />
        </div>
    </div>
</asp:Content>
