<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Public_Profile_Data.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_Public_Profile_Data" %>

<div id="currentHomeStudent" runat="server">
    <div id="LeftPanel" runat="server">
        
    </div>
    <div id="RightPanel" runat="server">
        <h2>
            All the students live in the current home</h2> 
        <%--<asp:HyperLink ID="HyperLink1" NavigateUrl="~/Student/Student_Public_Profile.aspx" CssClass="loginlinks"  style="float:right" runat="server">My Page</asp:HyperLink>--%>
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
