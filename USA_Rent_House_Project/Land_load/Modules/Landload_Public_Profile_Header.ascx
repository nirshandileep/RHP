<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Landload_Public_Profile_Header.ascx.cs"
    Inherits="USA_Rent_House_Project.Land_load.Modules.Landload_Public_Profile_Header" %>
<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxRatingControl" TagPrefix="dx" %>
<div id="StidentProfileHeader" runat="server">
    <div id="HeaderImage" runat="server">
        <asp:Image ID="jmgHeaderImage" runat="server" ImageUrl="~/Images/Sample/Bannerimage.jpg"
            Width="960px" />
    </div>
    <div id="LandloadProfileImage" runat="server" style="height:90px">
        <asp:Image ID="imgLandloadProfileImage" runat="server" ImageUrl="~/Images/Sample/Noimage.jpg" Width="100px" />
       
        
    </div>
    <asp:HyperLink ID="ProfileUserName" CssClass="publicLLname" runat="server"></asp:HyperLink>
          <h2> 
        <div id="MyRatings" class="floatright LLpublicrating">
         My Ratings
            <dx:ASPxRatingControl ID="ASPxRating" runat="server" Enabled="false">
            </dx:ASPxRatingControl>
        </div>
    </h2>
</div>
