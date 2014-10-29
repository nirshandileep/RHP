<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Landload_Profile_Comments.ascx.cs" Inherits="USA_Rent_House_Project.Land_load.Modules.Landload_Profile_Comments" %>

  <%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxRatingControl" TagPrefix="dx" %>
<div id="StudentComments" runat="server">
    <p>
        Comments...</p>
    <div id="StudentCommentsData" runat="server">
        <asp:DataList ID="DataListStudentComments" runat="server" RepeatColumns="1" >
            <ItemTemplate>
                 <%--comment--%>
                <div id="Comment" runat="server" visible='<%# Eval("CommentTypeId").ToString().Equals("1")%>'>
                    <asp:HiddenField ID="hdUserId" runat="server" Value='<%# Eval("ContextId") %>' />
                    <asp:HiddenField ID="hdCreatedBy" runat="server" Value='<%# Eval("CreatedBy") %>' />
                    <asp:HiddenField ID="CommentMessageID" Value='<%# Eval("CommentId") %>' runat="server" />
                    <asp:Label ID="CommentMessage" runat="server" Text='<%# Eval("CommentText") %>'></asp:Label>
                </div>
                <%--Feedback--%>
                <div id="Feedback" runat="server" visible='<%# Eval("CommentTypeId").ToString().Equals("2")%>'>
                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("ContextId") %>' />
                    <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("CreatedBy") %>' />
                    <asp:HiddenField ID="HiddenField3" Value='<%# Eval("CommentId") %>' runat="server" />
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("CommentText") %>'></asp:Label>
                    <dx:ASPxRatingControl ID="Rating" Enabled="false" runat="server" Value='<%# Eval("RatingValue") %>'>
                    </dx:ASPxRatingControl>
                </div>
                <%--Photo--%>
                <div id="Photo" runat="server" visible='<%# Eval("CommentTypeId").ToString().Equals("3")%>'>
                    <asp:HiddenField ID="HiddenField4" runat="server" Value='<%# Eval("ContextId") %>' />
                    <asp:HiddenField ID="HiddenField5" runat="server" Value='<%# Eval("CreatedBy") %>' />
                    <asp:HiddenField ID="HiddenField6" Value='<%# Eval("CommentId") %>' runat="server" />
                    <asp:Image ID="picturecomment" runat="server" ImageUrl='<%# Eval("FilePath") %>' />
                </div>
                <%--Document--%>
                <div id="Document" runat="server" visible='<%# Eval("CommentTypeId").ToString().Equals("4")%>'>
                    <asp:HiddenField ID="HiddenField7" runat="server" Value='<%# Eval("ContextId") %>' />
                    <asp:HiddenField ID="HiddenField8" runat="server" Value='<%# Eval("CreatedBy") %>' />
                    <asp:HiddenField ID="HiddenField9" Value='<%# Eval("CommentId") %>' runat="server" />
                    <asp:HyperLink ID="filepath" runat="server" NavigateUrl='<%# Eval("FilePath") %>'>Click Here</asp:HyperLink>
                </div>
            </ItemTemplate>
        </asp:DataList>

<%--
        <div id="DivComment" runat="server">
                    <div class="imagegallery">
                            <asp:HiddenField ID="hdUserId" runat="server" Value='<%# Eval("ContextId") %>' />
                             <asp:HiddenField ID="hdCreatedBy" runat="server" Value='<%# Eval("CreatedBy") %>' />
                            <asp:HyperLink ID="HyperLinkimage" Width="55px" Height="55px" runat="server" Text='<%# Eval("CommentText") %>' ImageUrl="~/Images/Sample/Noimage.jpg" ></asp:HyperLink>
                        </div>
                    
                    <asp:HiddenField ID="CommentMessageID" Value='<%# Eval("CommentId") %>' runat="server" />
                     <asp:Label ID="CommentMessage" runat="server" Text='<%# Eval("CommentText") %>'></asp:Label>
                     <dx:ASPxRatingControl CssClass="comments_LL" ID="Rating" Enabled="false" runat="server" Value='<%# Eval("RatingValue") %>'></dx:ASPxRatingControl>
                </div>--%>
    </div>
</div>
