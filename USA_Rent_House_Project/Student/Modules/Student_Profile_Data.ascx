<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Profile_Data.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_Profile_Data" %>

<div id="currentHomeStudent" runat="server">
    <div id="LeftPanel" runat="server">
        <asp:Menu ID="LeftMenuBar" runat="server" Orientation="Vertical">
        <Items>
        <asp:MenuItem Text="View Profile Data" NavigateUrl="~/Student/Student_Profile_Edit.aspx"></asp:MenuItem>
         <asp:MenuItem Text="Change Password" NavigateUrl="~/Change_Password.aspx"></asp:MenuItem>
         <asp:MenuItem Text="Change Secret Question" NavigateUrl="~/Change_Secret_Question.aspx"></asp:MenuItem>
        </Items>
        </asp:Menu>
    </div>
    <div id="RightPanel" runat="server">
        <p>
            All the students live in the current home</p>
        <div id="currentHomeStudentData" runat="server">
            <asp:DataList ID="DataListCurrentHomeStudent" runat="server" RepeatColumns="2">
                <ItemTemplate>
                    <asp:Image ID="currentHomeStudentImage" runat="server" ImageUrl="~/Images/Sample/profileimage4.jpg" Width="100px"   />
                    <asp:Label ID="currentHomeStudentName" runat="server" Text="Name 1"></asp:Label>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div id="StudentRating" runat="server">
            My Ratings **
        </div>
        <div id="StudentHouseData" runat="server">
            My College housing life..<asp:HyperLink ID="hypStudentHouseData" runat="server">Photos/Videos</asp:HyperLink>
        </div>
        <div id="Search" runat="server">
            <asp:HyperLink ID="SearchStudent" runat="server">Search for Student</asp:HyperLink>
            <asp:HyperLink ID="SearchHouse" runat="server">Search for House</asp:HyperLink>
        </div>
    </div>
</div>
