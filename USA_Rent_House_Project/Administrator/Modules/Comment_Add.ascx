<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Comment_Add.ascx.cs" Inherits="USA_Rent_House_Project.Administrator.Modules.Comment_Add" %>
<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxRatingControl" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx1" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<script language="javascript" type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<div id="div_register_User">
    <div id="Pleaseshare" runat="server" style="display: none">
        <p>
            Please Share
        </p>
        <!-- AddThis Button BEGIN -->
        <div class="addthis_toolbox addthis_default_style addthis_32x32_style">
            <a class="addthis_button_preferred_1"></a><a class="addthis_button_preferred_2"></a><a class="addthis_button_preferred_3"></a><a class="addthis_button_preferred_4"></a><a class="addthis_button_compact"></a><a class="addthis_counter addthis_bubble_style"></a>
        </div>
        <script type="text/javascript">            var addthis_config = { "data_track_addressbar": true };</script>
        <script type="text/javascript" src="http://s7.addthis.com/js/300/addthis_widget.js#pubid=ra-51590e4634ef5a41"></script>
        <!-- AddThis Button END -->
        <div class="clear">
        </div>
    </div>
    <div id="Options" runat="server" style="display: none">
        <p>
            <asp:LinkButton ID="LbComment" runat="server" OnClientClick="SetCommentTypeVisible('1')">Comment</asp:LinkButton>
            <asp:LinkButton ID="LbFeedback" runat="server" OnClientClick="SetCommentTypeVisible('2')" Visible="False">Feedback</asp:LinkButton>
            <asp:LinkButton ID="LbPhoto" runat="server" OnClientClick="SetCommentTypeVisible('3')" Visible="False">Photo</asp:LinkButton>
            <asp:LinkButton ID="LbUpload" runat="server" OnClientClick="SetCommentTypeVisible('4')" Visible="False">Document</asp:LinkButton>
        </p>
        <asp:HiddenField ID="hdnCommentTypeId" runat="server" Value="1" />
    </div>
    <%--add comments--%>



    <div id="DivComment">
        <p>
            Landlord:
            <asp:DropDownList ID="ddlLandlord" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLandlord_SelectedIndexChanged"></asp:DropDownList>


        </p>

             <p>
            House:
            <asp:DropDownList ID="ddlHouse" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlHouse_SelectedIndexChanged"></asp:DropDownList>


        </p>

        <p>
            Comments:
           
            <br />
            <asp:TextBox ID="CommentMessage" runat="server" CssClass="textEntry textbox_w1" Width="590px"
                Rows="5" TextMode="MultiLine"></asp:TextBox>
        </p>
        <div class="clear">
        </div>
        <p class="submitButton" style="text-align: left; ">
            <asp:Button ID="CommentButton" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                Text="Post" OnClick="CommentButton_Click" />
        </p>

    <asp:Label ID="lblError" runat="server" CssClass="failureNotification" Text=""></asp:Label>

<dx1:ASPxGridView ID="aspxComments" runat="server" AutoGenerateColumns="False">
    <Columns>
        <dx1:gridviewdatatextcolumn Caption="StreetAddress" FieldName="StreetAddress" Name="StreetAddress" VisibleIndex="1">
        </dx1:gridviewdatatextcolumn>
        <dx1:gridviewdatatextcolumn Caption="CommentText" FieldName="CommentText" Name="CommentText" VisibleIndex="2">
        </dx1:gridviewdatatextcolumn>
        <dx1:GridViewDataTextColumn Caption="RatingValue" FieldName="RatingValue" Name="RatingValue" VisibleIndex="3">
        </dx1:GridViewDataTextColumn>
        <dx1:GridViewDataTextColumn Caption="CreatedDate" FieldName="CreatedDate" Name="CreatedDate" VisibleIndex="4">
        </dx1:GridViewDataTextColumn>
    </Columns>
</dx1:ASPxGridView>

    </div>
    <%-- add feedback--%>
    <div id="DivFeedback" style="display: none">
        <p id="paymentontime" runat="server" visible="false">
            <asp:Label ID="LabelAwards" runat="server" AssociatedControlID="ASPxRatingpayment"
                CssClass="form_label">Payment on time :</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatingpayment" runat="server">
            </dx:ASPxRatingControl>
        </p>
        <p>
            <asp:Label ID="LabelCleanliness" runat="server" AssociatedControlID="ASPxRatingcleanliness"
                CssClass="form_label">Cleanliness throughout stay :</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatingcleanliness" runat="server">
            </dx:ASPxRatingControl>
        </p>
        <p>
            <asp:Label ID="LabelConditionOfHouse" runat="server" AssociatedControlID="ASPxRatingcondition" CssClass="form_label">Condition of house:</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatingcondition" runat="server">
            </dx:ASPxRatingControl>
        </p>
        <p>
            <asp:Label ID="LabelResponsivenessOfStudent" runat="server" AssociatedControlID="ASPxRatingresponsiveness"
                CssClass="form_label">Responsiveness of student :</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatingresponsiveness" runat="server">
            </dx:ASPxRatingControl>
        </p>
        <p>
            <asp:Label ID="LabelFriendliness" runat="server" AssociatedControlID="ASPxRatingfriendliness"
                CssClass="form_label">Friendliness :</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatingfriendliness" runat="server">
            </dx:ASPxRatingControl>
        </p>
        <p>
            <asp:Label ID="LabelResponsible" runat="server" AssociatedControlID="ASPxRatingresponsible"
                CssClass="form_label">Responsible :</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatingresponsible" runat="server">
            </dx:ASPxRatingControl>
        </p>
        <p id="Ratinggoodroommate" runat="server" visible="false">
            <asp:Label ID="LabelGoodRoommate" runat="server" AssociatedControlID="ASPxRatinggoodroommate"
                CssClass="form_label">Good Roommate :</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatinggoodroommate" runat="server">
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
        <p id="divPhotoUpload" runat="server" visible="true">
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
        <p id="divDocumentUpload" runat="server" visible="true">
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
    <%--<script type="text/javascript" language="javascript">
        OnPageLoad();
        function OnPageLoad() {
            var HiddenCommentType = $('#MainContent_Student_Profile_Comment_Add1_hdnCommentTypeId');
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
            var HiddenCommentType = $('#MainContent_Student_Profile_Comment_Add1_hdnCommentTypeId');

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

    </script>--%>
</div>
