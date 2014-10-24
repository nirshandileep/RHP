<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Public_Profile_Comments.ascx.cs" Inherits="USA_Rent_House_Project.Student.Modules.Student_Public_Profile_Comments" %>
<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxRatingControl" TagPrefix="dx" %>
<div id="StudentComments" runat="server">
    <p>
        Comments...</p>
    <div id="StudentCommentsData" runat="server">
        <asp:DataList ID="DataListStudentComments" runat="server" RepeatColumns="1" OnItemDataBound="ItemDataBound">
            <ItemTemplate>
                <div id="DivComment" runat="server">
                <div class="imagegallery">
                            <asp:HiddenField ID="hdUserId" runat="server" Value='<%# Eval("ContextId") %>' />
                            <asp:HiddenField ID="hdCreatedBy" runat="server" Value='<%# Eval("CreatedBy") %>' />
                            <asp:HyperLink ID="HyperLinkimage" Width="55px" Height="55px" runat="server" Text='<%# Eval("CommentText") %>'
                                ImageUrl="~/Images/Sample/Noimage.jpg" ></asp:HyperLink>
                        </div>
                    <asp:HiddenField ID="CommentMessageID" Value='<%# Eval("CommentId") %>' runat="server" />
                     <asp:Label ID="CommentMessage" runat="server" Text='<%# Eval("CommentText") %>'></asp:Label>
                    <dx:ASPxRatingControl ID="Rating" Enabled="false" runat="server" Value='<%# Eval("RatingValue") %>'></dx:ASPxRatingControl>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</div>
