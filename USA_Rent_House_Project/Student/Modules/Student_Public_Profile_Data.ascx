<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Public_Profile_Data.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_Public_Profile_Data" %>
<div id="currentHomeStudent" runat="server">
    <p>
        All the students live in the current home</p>
    <div id="currentHomeStudentData" runat="server">
        <asp:DataList ID="DataListCurrentHomeStudent" runat="server" RepeatColumns="2">
            <ItemTemplate>
                <asp:Image ID="currentHomeStudentImage" runat="server" ImageUrl="~/Images/Sample/profileimage4.jpg" Width="100px"   />
                <asp:Label ID="currentHomeStudentName" runat="server" Text="Name"></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </div>
   
    <div id="StudentHouseData" runat="server">
        My College housing life..<asp:HyperLink ID="hypStudentHouseData" runat="server">Photos/Videos</asp:HyperLink>
    </div>
</div>
