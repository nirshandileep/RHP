<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Change_Password.ascx.cs"
    Inherits="USA_Rent_House_Project.Modules.Change_Password" %>

<div id="formwrapper">
    <div id="forminner">
<h2 class="form_heading">
    Change Password 
</h2>
<p>
    Use the form below to change your password.
</p>
<p>
    New passwords are required to be a minimum of
    <%= Membership.MinRequiredPasswordLength %>
    characters in length.
    
</p>
<br />

        <asp:ChangePassword ID="ChangeUserPassword" runat="server" CancelDestinationPageUrl="~/"
            EnableViewState="false" RenderOuterTable="false">
            <ChangePasswordTemplate>
                <span class="failureNotification">
                <br />
                    <asp:Literal ID="FailureText" runat="server"></asp:Literal>
                </span>
                <asp:ValidationSummary ID="ChangeUserPasswordValidationSummary" runat="server" CssClass="failureNotification"
                    ValidationGroup="ChangeUserPasswordValidationGroup" />
                <div class="accountInfo">
                    <fieldset class="changePassword">
                        <legend>Account Information</legend>
                        <p>
                            <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword">Old Password:</asp:Label>
                            <asp:TextBox ID="CurrentPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword"
                                CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Old Password is required."
                                ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                        </p>
                        <p>
                            <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword">New Password:</asp:Label>
                            <asp:TextBox ID="NewPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword"
                                CssClass="failureNotification" ErrorMessage="New Password is required." ToolTip="New Password is required."
                                ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                        </p>
                        <p>
                            <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword">Confirm New Password:</asp:Label>
                            <asp:TextBox ID="ConfirmNewPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword"
                                CssClass="failureNotification" Display="Dynamic" ErrorMessage="Confirm New Password is required."
                                ToolTip="Confirm New Password is required." ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword"
                                ControlToValidate="ConfirmNewPassword" CssClass="failureNotification" Display="Dynamic"
                                ErrorMessage="The Confirm New Password must match the New Password entry." ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:CompareValidator>
                        </p>
                    </fieldset>
                    <p class="submitButton">
                        <%--<asp:Button ID="CancelPushButton" runat="server" CausesValidation="False" CommandName="Cancel"
                            Text="Cancel" />--%>
                        <asp:Button ID="ChangePasswordPushButton" runat="server" CommandName="ChangePassword" CssClass="actionbutton" 
                            Text="Change Password" ValidationGroup="ChangeUserPasswordValidationGroup" />
                    </p>
                </div>
            </ChangePasswordTemplate>
        </asp:ChangePassword>
    </div>
</div>
<%--

<h2 class="form_heading">
    Change Password
</h2>
<div id="formwrapper">
    <asp:ValidationSummary ID="ChangeUserPasswordValidationSummary" runat="server" CssClass="failureNotification"
        ValidationGroup="ChangeUserPasswordValidationGroup" />
    <div id="forminner">
        <p class="intro_text">
            Use the form below to change your password.
            <br />
            New passwords are required to be a minimum of
            <%= Membership.MinRequiredPasswordLength %>
            characters in length.
        </p>
        <asp:ChangePassword ID="ChangeUserPassword" runat="server" CancelDestinationPageUrl="~/"
            EnableViewState="false" RenderOuterTable="false">
            <ChangePasswordTemplate>
                <span class="failureNotification">
                    <asp:Literal ID="FailureText" runat="server"></asp:Literal>
                </span>
                <p>
                    <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword"
                        CssClass="bold1">Current Password:</asp:Label>
                    <asp:TextBox ID="CurrentPassword" runat="server" CssClass="textEntry textbox_w1"
                        TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword"
                        CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Old Password is required."
                        ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="failureNotification"
                        ControlToValidate="CurrentPassword" ErrorMessage="Old Password minimum length is 6"
                        ValidationExpression=".{6}.*" ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RegularExpressionValidator>
                </p>
                <p>
                    <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword"
                        CssClass="bold1">New Password:</asp:Label>
                    <asp:TextBox ID="NewPassword" runat="server" CssClass="textEntry textbox_w1" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword"
                        CssClass="failureNotification" ErrorMessage="New Password is required." ToolTip="New Password is required."
                        ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="valMin" runat="server" CssClass="failureNotification"
                        ControlToValidate="NewPassword" ErrorMessage="New Password minimum length is 6"
                        ValidationExpression=".{6}.*" ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RegularExpressionValidator>
                </p>
                <p>
                    <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword"
                        CssClass="bold1">Confirm New Password:</asp:Label>
                    <asp:TextBox ID="ConfirmNewPassword" runat="server" CssClass="textEntry textbox_w1"
                        TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword"
                        CssClass="failureNotification" Display="Dynamic" ErrorMessage="Confirm New Password is required."
                        ToolTip="Confirm New Password is required." ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword"
                        ControlToValidate="ConfirmNewPassword" CssClass="failureNotification" Display="Dynamic"
                        ErrorMessage="The Confirm New Password must match the New Password entry." ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:CompareValidator>
                </p>
            </ChangePasswordTemplate>
        </asp:ChangePassword>
    </div>
    <p class="submitButton">
        <asp:Button ID="ChangePasswordPushButton" runat="server" CommandName="ChangePassword"
            CssClass="actionbutton" Text="Change Password" ValidationGroup="ChangeUserPasswordValidationGroup" />
    </p>
</div>
--%>