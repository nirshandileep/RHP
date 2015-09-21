<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Landload_Profile_Comment_Add.ascx.cs"
    Inherits="USA_Rent_House_Project.Land_load.Modules.Landload_Profile_Comment_Add" %>
<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxRatingControl" TagPrefix="dx" %>
<script language="javascript" type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<div id="div_register_User">
    <div id="Pleaseshare" runat="server">
        <p>
            Please Share</p>
        <!-- AddThis Button BEGIN -->
        <div class="addthis_toolbox addthis_default_style addthis_32x32_style">
            <a class="addthis_button_preferred_1"></a><a class="addthis_button_preferred_2">
            </a><a class="addthis_button_preferred_3"></a><a class="addthis_button_preferred_4">
            </a><a class="addthis_button_compact"></a><a class="addthis_counter addthis_bubble_style">
            </a>
        </div>
        <script type="text/javascript">            var addthis_config = { "data_track_addressbar": true };</script>
        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-51590e4634ef5a41"></script>
        <!-- AddThis Button END -->
         <div class="clear">
        </div>
    </div>
    <div id="Options" runat="server">
        <p>
            <asp:LinkButton ID="LbComment" runat="server" OnClientClick="SetCommentTypeVisible('1')">Comment</asp:LinkButton>
            |<asp:LinkButton ID="LbFeedback" runat="server" OnClientClick="SetCommentTypeVisible('2')">Feedback</asp:LinkButton>
            |<asp:LinkButton ID="LbPhoto" runat="server" OnClientClick="SetCommentTypeVisible('3')">Photo</asp:LinkButton>
            |<asp:LinkButton ID="LbUpload" runat="server" OnClientClick="SetCommentTypeVisible('4')">Document</asp:LinkButton>
        </p>
        <asp:HiddenField ID="hdnCommentTypeId" runat="server" Value="1" />
    </div>
    <%--add comments--%>
    <div id="DivComment" style="display: block">
        <p>
            <%--  <dx:ASPxRatingControl ID="ASPxRatingvalue" runat="server" ></dx:ASPxRatingControl>--%>
            <asp:TextBox ID="CommentMessage" runat="server" CssClass="textEntry textbox_w1" Width="590px"
                Rows="5" TextMode="MultiLine"></asp:TextBox>
        </p>
        <div class="clear">
        </div>
        <p class="submitButton">
            <asp:Button ID="CommentButton" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                Text="Post" OnClick="CommentButton_Click" />
        </p>
    </div>
    <%-- add feedback--%>
    <div id="DivFeedback" style="display: none">
        <p>
            <asp:Label ID="LabelRent" runat="server" AssociatedControlID="ASPxRatingRent"
                CssClass="form_label">Rent :</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatingRent" runat="server">
            </dx:ASPxRatingControl>
        </p>
        <p>
            <asp:Label ID="LabelAmenities" runat="server" AssociatedControlID="ASPxRatingAmenities"
                CssClass="form_label">Amenities :</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatingAmenities" runat="server">
            </dx:ASPxRatingControl>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" AssociatedControlID="ASPxRatingcondition" CssClass="form_label">Condition of house:</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatingcondition" runat="server">
            </dx:ASPxRatingControl>
        </p>
        <p>
            <asp:Label ID="LabelBackYard" runat="server" AssociatedControlID="ASPxRatingBackYard"
                CssClass="form_label">Back yard :</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatingBackYard" runat="server">
            </dx:ASPxRatingControl>
        </p>
        <p>
            <asp:Label ID="LabelResponsiveOfLandlord" runat="server" AssociatedControlID="ASPxRatingResponsiveOfLandlord"
                CssClass="form_label">Responsive Of Landlord :</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatingResponsiveOfLandlord" runat="server">
            </dx:ASPxRatingControl>
        </p>
        <p>
            <asp:Label ID="LabelLocation" runat="server" AssociatedControlID="ASPxRatingLocation"
                CssClass="form_label">Location :</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatingLocation" runat="server">
            </dx:ASPxRatingControl>
        </p>
        <p>
            <asp:Label ID="LabelFairnessOfLandlord" runat="server" AssociatedControlID="ASPxRatingFairnessOfLandlord"
                CssClass="form_label">Fairness Of Landlord :</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatingFairnessOfLandlord" runat="server" ItemCount="5">
            </dx:ASPxRatingControl>
        </p>
        <p>
            <asp:Label ID="LabelGoodLandlord" runat="server" AssociatedControlID="ASPxRatingGoodLandlord"
                CssClass="form_label">Good Landlord :</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatingGoodLandlord" runat="server" ItemCount="5">
            </dx:ASPxRatingControl>
        </p>
        <p>
            Feedback Comment :
            <asp:TextBox ID="FeedbackText" runat="server" CssClass="textEntry textbox_w1" Width="690px"
                Rows="5" TextMode="MultiLine"></asp:TextBox>
        </p>
        <div class="clear">
        </div>
        <p class="submitButton">
            <asp:Button ID="FeedbackButton" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                Text="Post" OnClick="FeedbackButton_Click" />
        </p>
    </div>
    <%-- add photo--%>
    <div id="DivPhoto" style="display: none">
        <p>
            Select Photo :
            <asp:FileUpload ID="PhotoUpload" CssClass="textEntry" runat="server" AllowMultiple="true" />
        </p>
          <p id="divPhotoUpload" runat="server" Visible="true">
            Feedback Comment :<br />
            <asp:TextBox ID="PhotoUploadComment" runat="server" CssClass="textEntry textbox_w1" Width="590px"
                Rows="5" TextMode="MultiLine"></asp:TextBox>
        </p>
        <div class="clear">
        </div>
        <p class="submitButton">
            <asp:Button ID="PhotoButton" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                Text="Post" OnClick="PhotoButton_Click" />
        </p>
    </div>
    <%--add upload--%>
    <div id="DivUpload" style="display: none">
        <p>
            Select File :<asp:FileUpload ID="DocumentUpload" CssClass="textEntry" runat="server"
                AllowMultiple="true" />
        </p>
          <p id="divDocumentUpload" runat="server" Visible="true">
            Feedback Comment :<br />
            <asp:TextBox ID="DocumentUploadComment" runat="server" CssClass="textEntry textbox_w1" Width="590px"
                Rows="5" TextMode="MultiLine"></asp:TextBox>
        </p>
        <div class="clear">
        </div>
        <p class="submitButton">
            <asp:Button ID="UploadButton" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                Text="Post" OnClick="UploadButton_Click" />
        </p>
    </div>
    <asp:Label ID="lblError" runat="server" CssClass="failureNotification" Text=""></asp:Label>
    <script type="text/javascript" language="javascript">
        OnPageLoad();
        function OnPageLoad() {
            var HiddenCommentType = $('#MainContent_Landload_Profile_Comment_Add1_hdnCommentTypeId');
            SetCommentTypeVisible(HiddenCommentType.val());
        }

        function SetCommentTypeVisible(commentTypeId) {
            ChangePaymentType(commentTypeId);
        }

        function ChangePaymentType(commentTypeId) {
            var DivComment = $("#DivComment");
            var DivFeedback = $("#DivFeedback");
            var DivPhoto = $("#DivPhoto");
            var DivUpload = $("#DivUpload");
            var HiddenCommentType = $('#MainContent_Landload_Profile_Comment_Add1_hdnCommentTypeId');

            HiddenCommentType.value = commentTypeId;

            //    Comment = 1,
            //    Feedback = 2,
            //    Photo = 3,
            //    Document = 4,

            if (commentTypeId == 1) {
                $(DivComment).show('slow', '');
                $(DivFeedback).hide('slow', '');
                $(DivPhoto).hide('slow', '');
                $(DivUpload).hide('slow', '');
            }
            else if (commentTypeId == 2) {
                $(DivComment).hide('slow', '');
                $(DivFeedback).show('slow', '');
                $(DivPhoto).hide('slow', '');
                $(DivUpload).hide('slow', '');
            }
            else if (commentTypeId == 3) {
                $(DivComment).hide('slow', '');
                $(DivFeedback).hide('slow', '');
                $(DivPhoto).show('slow', '');
                $(DivUpload).hide('slow', '');
            }
            else {
                $(DivComment).hide('slow', '');
                $(DivFeedback).hide('slow', '');
                $(DivPhoto).hide('slow', '');
                $(DivUpload).show('slow', '');
            }
        }

    </script>
</div>
<%--
        <div class="comment_text_LL">
            <dx:ASPxRatingControl ID="ASPxRating" CssClass="LLcommentstar" runat="server">
            </dx:ASPxRatingControl>
            <p class="LLcommenttext">
                Comment on our page</p>
            <div class="clear">
            </div>
            <p>
                <asp:TextBox ID="CommentMessage" runat="server" CssClass="textEntry textbox_w1" Width="790px"
                    Rows="5" TextMode="MultiLine"></asp:TextBox>
            </p>
        </div>
        <div class="clear">
        </div>

    <p class="submitButton">
        <asp:Button ID="CommentButton" runat="server" CssClass="actionbutton" CommandName="MoveNext"
            Text="Post" OnClick="CommentButton_Click" />
        <asp:Label ID="lblError" runat="server" CssClass="failureNotification" Text=""></asp:Label>
    </p>--%>
