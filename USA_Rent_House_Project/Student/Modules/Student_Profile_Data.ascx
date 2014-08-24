<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Profile_Data.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_Profile_Data" %>

<%@ Register src="Menu_Bar.ascx" tagname="Menu_Bar" tagprefix="uc1" %>

<div id="currentHomeStudent" runat="server">
    <div id="LeftPanel" runat="server">
       
        <uc1:Menu_Bar ID="Menu_Bar1" runat="server" />
       
    </div>
    <div id="RightPanel" runat="server">
        <h2 style="float:left">
            All the students live in the current home</h2> 
        <asp:HyperLink ID="HyperLink1" CssClass="loginlinks" style="float:right" NavigateUrl="~/Student/Student_Public_Profile.aspx" runat="server">My Page</asp:HyperLink>
       <div class="clear"></div>
        <div id="currentHomeStudentData" runat="server">
        <div class="imagegallerycontainer"><div class="imagegallery"></div> The Student Name</div>
        <div class="imagegallerycontainer"><div class="imagegallery"></div> The Student Name</div>
        <div class="imagegallerycontainer"><div class="imagegallery"></div> The Student Name</div>
        <div class="imagegallerycontainer"><div class="imagegallery"></div> The Student Name</div>
        <div class="clear"></div>
            <%--<asp:DataList ID="DataListCurrentHomeStudent" runat="server" RepeatColumns="2">
                <ItemTemplate>
                    <asp:Image ID="currentHomeStudentImage" runat="server" ImageUrl="~/Images/Sample/profileimage4.jpg" Width="100px"   />
                    <asp:Label ID="currentHomeStudentName" runat="server" Text="Name 1"></asp:Label>
                </ItemTemplate>
            </asp:DataList>--%>
        </div>
        <div id="StudentRating" runat="server">
          <h2>My Ratings **</h2>  
        </div>
        <div id="StudentHouseData" runat="server">
            <h2 style="display:inline-block;">My College housing life..</h2><asp:HyperLink ID="hypStudentHouseData" CssClass="loginlinks" runat="server">Photos/Videos</asp:HyperLink>
        </div>
          <div id="Search" runat="server">
            <asp:HyperLink ID="SearchStudent" CssClass="loginlinks" runat="server">Search for Student</asp:HyperLink>
            <asp:HyperLink ID="SearchHouse" CssClass="loginlinks" runat="server">Search for House</asp:HyperLink>
        </div>
    </div>
</div>
