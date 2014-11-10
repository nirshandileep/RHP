<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/General.Master" AutoEventWireup="true" CodeBehind="Land_load_Public_Profile.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Land_load_Public_Profile" %>
<%@ Register src="Modules/Landload_Public_Profile_Banner.ascx" tagname="Landload_Public_Profile_Banner" tagprefix="uc1" %>
<%@ Register src="Modules/Landload_Public_Profile_Data.ascx" tagname="Landload_Public_Profile_Data" tagprefix="uc2" %>
<%@ Register src="Modules/Landload_Public_Profile_Header.ascx" tagname="Landload_Public_Profile_Header" tagprefix="uc3" %>
<%@ Register src="Modules/Landload_Profile_Comment_Add.ascx" tagname="Landload_Profile_Comment_Add" tagprefix="uc4" %>
<%@ Register src="~/Land_load/Modules/Landload_Public_Profile_Comments.ascx" tagname="Landload_Profile_Comments" tagprefix="uc5" %>

<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxRatingControl" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <uc3:Landload_Public_Profile_Header ID="Landload_Public_Profile_Header1"  runat="server" />
          <%-- <div id="MyRatings"  class="floatright" > My Ratings
           <dx:ASPxRatingControl ID="ASPxRating" runat="server" Enabled="false">
            </dx:ASPxRatingControl>
           </div>--%>
           <div class="LL_PP_Searchbar">
         <asp:HyperLink ID="HyperLinkPublicView" CssClass="loginlinks" Style="float: right" NavigateUrl="~/Land_load/Land_load_Profile.aspx" runat="server">My Page</asp:HyperLink>
          <div id="Search" class="floatright llpublicsearch" runat="server">
                <asp:HyperLink ID="SearchStudent" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=s"
                    runat="server">Search for Student</asp:HyperLink>
                <asp:HyperLink ID="SearchHouse" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=l"
                    runat="server">Search for House</asp:HyperLink>
            </div>
            </div>
            <div class="clear"></div>
        <div id="LeftPanel_LandL" runat="server">
        
    </div>
  <div id="RightPanelLL">    
  <uc1:Landload_Public_Profile_Banner ID="Landload_Public_Profile_Banner1" 
        runat="server" />
    <uc2:Landload_Public_Profile_Data ID="Landload_Public_Profile_Data1" 
        runat="server" />

   <uc4:Landload_Profile_Comment_Add ID="Landload_Profile_Comment_Add1" Visible="false" 
         runat="server" />
           <uc5:landload_profile_comments ID="Landload_Profile_Comments1" 
         runat="server" />
         </div>

</asp:Content>
