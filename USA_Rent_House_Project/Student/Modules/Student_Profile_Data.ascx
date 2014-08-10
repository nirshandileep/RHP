<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Profile_Data.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_Profile_Data" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<div id="currentHomeStudent" runat="server">
    <div id="LeftPanel" runat="server">
        <asp:Menu ID="LeftMenuBar" runat="server" Orientation="Vertical">
        <Items>
        <asp:MenuItem Text="item 1"></asp:MenuItem>
         <asp:MenuItem Text="item 2"></asp:MenuItem>
        </Items>
        </asp:Menu>
    </div>
    <div id="RightPanel" runat="server">
        <p>
            All the students live in the current home</p>
        <div id="currentHomeStudentData" runat="server">
            <asp:DataList ID="DataListCurrentHomeStudent" runat="server" RepeatColumns="2">
                <ItemTemplate>
                    <asp:Image ID="currentHomeStudentImage" runat="server" />
                    <asp:Label ID="currentHomeStudentName" runat="server" Text=""></asp:Label>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div id="StudentRating" runat="server">
            My Ratings <asp:Rating ID="Rating" runat="server" StarCssClass="blankstar"
                WaitingStarCssClass="waitingstar" FilledStarCssClass="shiningstar" EmptyStarCssClass="blankstar"></asp:Rating>
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
