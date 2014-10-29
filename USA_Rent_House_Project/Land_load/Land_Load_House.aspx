<%@ Page Title="Land-Load House" Language="C#" MasterPageFile="~/Master_Pages/Land-Load.Master"
    AutoEventWireup="true" CodeBehind="Land_Load_House.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Land_Load_House" %>

<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxRatingControl" TagPrefix="dx" %>

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
         <div id="RightPanelLL" runat="server">
            <div id="Div1" class="floatright" runat="server">
                <asp:HyperLink ID="HyperLink1" CssClass="loginlinks" NavigateUrl="~/Land_load/Land_load_Profile.aspx"
                    runat="server">My Properties</asp:HyperLink>
                <asp:HyperLink ID="HyperLinkPublicView" CssClass="loginlinks" Style="float: right"
                     runat="server">Public view</asp:HyperLink>
                     <div id="Search" style="display:inline-block" runat="server">
              <%--  <asp:HyperLink ID="SearchStudent" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=s"
                    runat="server">Search for Student</asp:HyperLink>
                <asp:HyperLink ID="SearchHouse" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=l"
                    runat="server">Search for House</asp:HyperLink>--%>
            </div>
            <div class="clear"></div>
            </div>
            <uc3:Landload_Profile_Banner ID="Landload_Profile_Banner2" runat="server" />
            

            <div id="HouseDetails" runat="server">
                <asp:HyperLink ID="HyperLinkHouseDetails" CssClass="loginlinks" runat="server"> Details about House</asp:HyperLink>
            </div>
            <div id="currentHomeStudentData" runat="server" visible="false">
                <h2>
                    All the students live in the current home</h2>
                <br />
                <asp:DataList ID="DataListCurrentHomeStudent" runat="server" RepeatColumns="3" DataKeyField="UserId" OnItemDataBound="ItemDataBound">
                    <ItemTemplate>
                        <div class="imagegallerycontainer">
                            <div class="imagegallery">
                            <asp:HiddenField ID="hdUserId" runat="server" Value='<%# Eval("UserId") %>' />
                            <asp:HyperLink ID="HyperLinkimage" runat="server" Text='<%# Eval("FirstName") + " " +  Eval("LastName")%>' ImageUrl="~/Images/Sample/Noimage.jpg"  NavigateUrl='<%# Eval("UserId","~/Student/Student_Public_Profile.aspx?AccessCode={0}") %>'></asp:HyperLink>
                     </div>
                             <div id="Name" class="lblnames">
                            <asp:HyperLink ID="HyperLinkviewStudent" runat="server" Text='<%# Eval("FirstName") + " " +  Eval("LastName")%>'
                                NavigateUrl='<%# Eval("UserId","~/Student/Student_Public_Profile.aspx?AccessCode={0}") %>'></asp:HyperLink>
                        </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                
            </div>
            
            <uc2:Landload_Profile_Comments ID="Landload_Profile_Comments1" runat="server" />
        </div>
    </div>
</asp:Content>
