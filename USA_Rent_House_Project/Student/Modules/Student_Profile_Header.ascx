<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Profile_Header.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_Profile_Header" %>
<div id="StidentProfileHeader" runat="server">

 

    <div id="HeaderImage" runat="server">
        <asp:Image ID="jmgHeaderImage" runat="server"  ImageUrl="~/Images/Sample/Bannerimage.jpg" Width="970px" />
        <asp:HyperLink ID="ChangeCoverImage" runat="server" cssClass="changecoverlink" NavigateUrl="~/Student/Student_Profile_Image.aspx">Change Cover Image</asp:HyperLink>
    </div>
    <div id="StudentProfileImage" runat="server">
        <asp:Image ID="imgStudentProfileImage" runat="server" ImageUrl="~/Images/Sample/Noimage.jpg" Width="100px" />
        <asp:HyperLink ID="HyperLink1" runat="server" cssClass="changeprofilelink" NavigateUrl="~/Student/Student_Profile_Image.aspx">Change Profile Image</asp:HyperLink>
    </div>
    <div id="CurrentHouseImage" runat="server">
        <asp:Image ID="imgCurrentHouseImage" runat="server" ImageUrl="~/Images/Sample/House.jpg" Width="100px"  />
        <asp:HyperLink ID="CurrentHouse" CssClass="loginlinks_img" runat="server" NavigateUrl="~/Student/Student_Profile_Image.aspx">View House</asp:HyperLink>
        <asp:HiddenField ID="hdnHouseId" runat="server" />
    </div>
    <div class="clear"></div>
    <div id="LandloadProfileImage" runat="server">
        <asp:Image ID="imgLandloadProfileImage" runat="server" ImageUrl="~/Images/Sample/Noimage.jpg" Width="100px"   />
        <asp:HyperLink ID="HyperLink2" CssClass="loginlinks_img" runat="server" NavigateUrl="~/Student/Student_Profile_Image.aspx">View House</asp:HyperLink>
    </div>
     
</div>
