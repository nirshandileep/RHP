<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Comment_Add.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_Profile_Comment_Add" %>
<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxRatingControl" TagPrefix="dx" %>
<script language="javascript" type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<div id="div_register_User">

    
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

</div>
