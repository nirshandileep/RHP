<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Profile_Comments.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_Profile_Comments" %>
<div id="StudentComments" runat="server">
    <p>
        Comments...</p>
    <div id="StudentCommentsData" runat="server">
        <asp:DataList ID="DataListStudentComments" runat="server" RepeatColumns="1">
            <ItemTemplate>
                <div id="DivComment" runat="server">
                     <asp:Label ID="CommentID" runat="server" Text=""></asp:Label><%--'<%# Eval("Package_Title") %>'--%>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</div>
