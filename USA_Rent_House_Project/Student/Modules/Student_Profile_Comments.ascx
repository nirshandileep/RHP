<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Profile_Comments.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_Profile_Comments" %>
<div id="StudentComments" runat="server">
    <p>
        Comments...</p>
    <div id="StudentCommentsData" runat="server">
        <asp:DataList ID="DataListStudentComments" runat="server" RepeatColumns="1">
            <ItemTemplate>
                <div id="DivComment" runat="server">
                    <asp:HiddenField ID="CommentMessageID" Value='<%# Eval("CommentId") %>' runat="server" />
                     <asp:Label ID="CommentMessage" runat="server" Text='<%# Eval("CommentText") %>'></asp:Label>
                  
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</div>
