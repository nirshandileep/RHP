<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Public_Profile_Data.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_Public_Profile_Data" %>

<div id="currentHomeStudent" runat="server">
    <div id="LeftPanel" runat="server">
        
    </div>
    <div id="RightPanel" runat="server">
        <h2>
            All the students live in the current home</h2> 
        <%--<asp:HyperLink ID="HyperLink1" NavigateUrl="~/Student/Student_Public_Profile.aspx" CssClass="loginlinks"  style="float:right" runat="server">My Page</asp:HyperLink>--%>
       <asp:DataList ID="DataListStudentList" runat="server" RepeatColumns="3" DataKeyField="UserId">
                <ItemTemplate>
                    <div class="imagegallerycontainer">
                        <div class="imagegallery">
                        </div>
                        <div>
     <%--
                            <asp:Label ID="lblPersonalEmail" runat="server" Text='<%# Eval("PersonalEmail") %>'></asp:Label>
                            <br />--%>
                            <asp:Label ID="lblname" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("MiddleName") %>'></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("MiddleName") %>'></asp:Label><br />
                           <%-- <asp:Label ID="lblMobile" runat="server" Text='<%# Eval("BestContactNumber") %>'></asp:Label>--%>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
         <div class="clear">
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
