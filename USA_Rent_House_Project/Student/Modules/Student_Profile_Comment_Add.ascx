<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Profile_Comment_Add.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_Profile_Comment_Add" %>
<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxRatingControl" TagPrefix="dx" %>
<div id="div_register_User">
    <div id="Pleaseshare" runat="server">
        <p>
            Please share</p>
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
            <asp:LinkButton ID="LbComment" runat="server" OnClick="LbComment_Click">Comment</asp:LinkButton>
            |<asp:LinkButton ID="LbFeedback" runat="server" OnClick="LbFeedback_Click">Feedback</asp:LinkButton>
            |<asp:LinkButton ID="LbPhoto" runat="server" OnClick="LbPhoto_Click">Photo</asp:LinkButton>
            |<asp:LinkButton ID="LbUpload" runat="server" OnClick="LbUpload_Click">Document</asp:LinkButton>
        </p>
    </div>

    <%--add comments--%>
    <div id="DivComment" runat="server">
        <p>
            <%--  <dx:ASPxRatingControl ID="ASPxRatingvalue" runat="server" ></dx:ASPxRatingControl>--%>
            <asp:TextBox ID="CommentMessage" runat="server" CssClass="textEntry textbox_w1" Width="690px"
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
    <div id="DivFeedback" runat="server" visible="false">
        <p id="paymentontime" runat="server" visible="false">
            <asp:Label ID="LabelAwards" runat="server" AssociatedControlID="ASPxRatingpayment" CssClass="form_label">payment on time :</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatingpayment" runat="server">
            </dx:ASPxRatingControl>
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" AssociatedControlID="ASPxRatingcleanliness" CssClass="form_label">cleanliness throughout stay :</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatingcleanliness" runat="server">
            </dx:ASPxRatingControl>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" AssociatedControlID="ASPxRatingcondition" CssClass="form_label">condition of house:</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatingcondition" runat="server">
            </dx:ASPxRatingControl>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" AssociatedControlID="ASPxRatingresponsiveness" CssClass="form_label">responsiveness of student :</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatingresponsiveness" runat="server">
            </dx:ASPxRatingControl>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" AssociatedControlID="ASPxRatingfriendliness" CssClass="form_label">friendliness :</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatingfriendliness" runat="server">
            </dx:ASPxRatingControl>
        </p>
         <p>
            <asp:Label ID="Label5" runat="server" AssociatedControlID="ASPxRatingresponsible" CssClass="form_label">responsible  :</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatingresponsible" runat="server">
            </dx:ASPxRatingControl>
        </p>
        <p id="Ratinggoodroommate" runat="server" visible="false">
            <asp:Label ID="Label6" runat="server" AssociatedControlID="ASPxRatinggoodroommate" CssClass="form_label">good roommate  :</asp:Label>
            <dx:ASPxRatingControl ID="ASPxRatinggoodroommate" runat="server">
            </dx:ASPxRatingControl>
        </p>
        <p>
            Feedback Comment : <asp:TextBox ID="FeedbackText" runat="server" CssClass="textEntry textbox_w1" Width="690px"
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
    <div id="DivPhoto" runat="server" visible="false">
        <p>
            Select Photo :
            <asp:FileUpload ID="PhotoUpload" CssClass="textEntry" runat="server" AllowMultiple="true" />
        </p>
        <div class="clear">
        </div>
        <p class="submitButton">
            <asp:Button ID="PhotoButton" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                Text="Post" OnClick="PhotoButton_Click" />
        </p>
    </div>

    <%--add upload--%>
    <div id="DivUpload" runat="server" visible="false">
        <p>
            Select File :<asp:FileUpload ID="DocumentUpload" CssClass="textEntry" runat="server"
                AllowMultiple="true" />
        </p>
        <div class="clear">
        </div>
        <p class="submitButton">
            <asp:Button ID="UploadButton" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                Text="Post" OnClick="UploadButton_Click" />
        </p>
    </div>
    <asp:Label ID="lblError" runat="server" CssClass="failureNotification" Text=""></asp:Label>
</div>
