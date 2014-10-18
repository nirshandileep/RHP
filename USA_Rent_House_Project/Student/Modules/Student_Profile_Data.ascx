<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Profile_Data.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_Profile_Data" %>
<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxRatingControl" TagPrefix="dx" %>
<%@ Register Src="Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc1" %>
<div id="currentHomeStudent" runat="server">
    <div id="LeftPanel" runat="server">
        <uc1:Menu_Bar ID="Menu_Bar1" runat="server" />
    </div>
    <div id="RightPanel" runat="server">
        <asp:HyperLink ID="HyperLinkPublicView" CssClass="loginlinks" Style="float: right"
            runat="server">Public view</asp:HyperLink>
        <div id="Search" runat="server">
            <asp:HyperLink ID="SearchStudent" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=s"
                runat="server">Search for Student</asp:HyperLink>
            <asp:HyperLink ID="SearchHouse" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=l"
                runat="server">Search for House</asp:HyperLink>
        </div>
        <div class="clear">
        </div>
        <div id="currentHomeStudentData" runat="server" visible="false">
            <h2>
                All the students live in the current home</h2>
            <br />
            <asp:DataList ID="DataListStudentList" runat="server" RepeatColumns="3" DataKeyField="UserId"
                OnItemDataBound="ItemDataBound">
                <ItemTemplate>
                    <div class="imagegallerycontainer">
                        <div class="imagegallery">
                            <asp:HiddenField ID="hdUserId" runat="server" Value='<%# Eval("UserId") %>' />
                            <asp:HyperLink ID="HyperLinkimage" Width="55px" Height="55px" runat="server" Text='<%# Eval("FirstName") + " " +  Eval("LastName") %>'
                                ImageUrl="~/Images/Sample/Noimage.jpg" NavigateUrl='<%# Eval("UserId","~/Student/Student_Public_Profile.aspx?AccessCode={0}") %>'></asp:HyperLink>
                        </div>
                        <div id="Name" class="lblnames">
                            <asp:HyperLink ID="HyperLinkviewStudent" runat="server" Text='<%# Eval("FirstName") + " " +  Eval("LastName")%>'
                                NavigateUrl='<%# Eval("UserId","~/Student/Student_Public_Profile.aspx?AccessCode={0}") %>'></asp:HyperLink>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div class="clear">
        </div>
        <div id="StudentRating" runat="server">
            <h2>
                My Ratings
                <dx:ASPxRatingControl ID="MyRatingValue" Enabled="false" runat="server">
                </dx:ASPxRatingControl>
            </h2>
        </div>
        <div id="StudentHouseData" runat="server">
            <h2 style="display: inline-block;">
                My College housing life..</h2>
            <asp:HyperLink ID="hypStudentHouseData" CssClass="loginlinks" NavigateUrl="~/Student/Current_House_Life.aspx"
                runat="server">Photos/Videos</asp:HyperLink>
        </div>
    </div>
</div>
