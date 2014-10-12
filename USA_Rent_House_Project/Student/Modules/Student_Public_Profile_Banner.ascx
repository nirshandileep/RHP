<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Public_Profile_Banner.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_Public_Profile_Banner" %>
<div id="currentHomeStudentBanner" runat="server">
<div class="puliclinks">
  <asp:HyperLink ID="HyperLinkPublicView" CssClass="loginlinks" NavigateUrl="~/Student/Student_Profile.aspx" Style="float: right" runat="server">My Page</asp:HyperLink>
   <div class="floatright" runat="server">
            <asp:HyperLink ID="HyperLink1" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=s"
                runat="server">Search for Student</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=l"
                runat="server">Search for House</asp:HyperLink>
        </div>
        <div class="clear"></div>
</div>
   <div class="publicimagegallerycontainer">
            <div class="imagegallery">
                <asp:Image ID="currentHomeStudentBannerImage" runat="server" ImageUrl="" Width="100px" />
               
            </div>
            <div class="imagegallery">
                <asp:Image ID="Image1" runat="server" ImageUrl="" Width="100px" />
               
            </div>
            <div class="imagegallery">
                <asp:Image ID="Image2" runat="server" ImageUrl="" Width="100px" />
               
            </div>
            <div class="imagegallery">
                <asp:Image ID="Image3" runat="server" ImageUrl="" Width="100px" />
               
            </div>
            
            </div>
            <div class="clear"></div>
<%--
    <asp:DataList ID="DataListCurrentHomeStudentBanner" runat="server" RepeatColumns="4">
        <ItemTemplate>
            <div class="imagegallerycontainer">
            <div class="imagegallery">
                <asp:Image ID="currentHomeStudentBannerImage" runat="server" ImageUrl="" Width="100px" />
                image
            </div></div>
        </ItemTemplate>
    </asp:DataList>--%>
</div>
