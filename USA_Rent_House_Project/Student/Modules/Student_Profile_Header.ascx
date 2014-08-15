<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Profile_Header.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_Profile_Header" %>
<div id="StidentProfileHeader" runat="server">
    <div id="HeaderImage" runat="server">
        <asp:Image ID="jmgHeaderImage" runat="server" ImageUrl="~/Images/Sample/Bannerimage.jpg" Width="970px" />
    </div>
    <div id="StudentProfileImage" runat="server">
        <asp:Image ID="imgStudentProfileImage" runat="server" ImageUrl="~/Images/Sample/profileimage1.jpg" Width="100px" />
    </div>
    <div id="CurrentHouseImage" runat="server">
        <asp:Image ID="imgCurrentHouseImage" runat="server" ImageUrl="~/Images/Sample/profileimage2.jpg" Width="100px"  />
    </div>
    <div class="clear"></div>
    <div id="LandloadProfileImage" runat="server">
        <asp:Image ID="imgLandloadProfileImage" runat="server" ImageUrl="~/Images/Sample/profileimage3.jpg" Width="100px"   />
    </div>

</div>
