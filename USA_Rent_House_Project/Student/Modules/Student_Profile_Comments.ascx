<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Profile_Comments.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_Profile_Comments" %>
<div id="StudentComments" runat="server">
    <p>
        Comments...</p>
    <div id="StudentCommentsData" runat="server">
        <asp:DataList ID="DataListStudentComments" runat="server" RepeatColumns="1">
            <ItemTemplate>
                 <asp:Label ID="CommentID" runat="server" Text="Comments........................"></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </div>
</div>
