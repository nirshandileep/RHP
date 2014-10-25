<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Profile_Header.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_Profile_Header" %>
<div id="StidentProfileHeader" runat="server">

 

    <div id="HeaderImage" runat="server">
        <asp:Image ID="jmgHeaderImage" runat="server"  ImageUrl="~/Images/Sample/Bannerimage.jpg" Width="970px" />
        <asp:HyperLink ID="ChangeCoverImage" runat="server" cssClass="changecoverlink" NavigateUrl="~/Student/Student_Profile_Image.aspx">Change Cover Image</asp:HyperLink>
    </div>
    <div id="StudentProfileImage" runat="server">
      <%--  <asp:Image ID="imgStudentProfileImage" runat="server" ImageUrl="~/Images/Sample/Noimage.jpg" Width="100px" />  --%>

        <asp:HyperLink ID="imgStudentProfileImage" runat="server" ImageUrl="~/Images/Sample/Noimage.jpg" Width="100px" NavigateUrl="~/Student/Student_Profile_Image.aspx">Change Profile Image</asp:HyperLink> <%--cssClass="changeprofilelink" --%>
        <asp:HyperLink ID="ProfileUserName" runat="server"></asp:HyperLink>
    </div>
    <div id="CurrentHouseImage" runat="server">
       <%-- <asp:Image ID="imgCurrentHouseImage" runat="server" ImageUrl="~/Images/Sample/House.jpg" Width="100px"  />--%>

        <asp:HyperLink ID="imgCurrentHouseImage" runat="server" ImageUrl="~/Images/Sample/House.jpg" Width="100px" >View House</asp:HyperLink> <%--CssClass="loginlinks_img"--%>
        <asp:HiddenField ID="hdnHouseId" runat="server" />
    </div>
    <div class="clear"></div>
    <div id="LandloadProfileImage" runat="server">
       <%-- <asp:Image ID="imgLandloadProfileImage" runat="server" ImageUrl="~/Images/Sample/Noimage.jpg" Width="100px"   /> --%>

        <asp:HyperLink ID="imgLandloadProfileImage" ImageUrl="~/Images/Sample/Noimage.jpg" Width="100px" runat="server" >View Landlord</asp:HyperLink> <%-- CssClass="loginlinks_img"--%>
         <asp:HyperLink ID="ProfileLandlordName" runat="server"></asp:HyperLink>
    </div>
     
</div>
