<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Landloard_Profile_Wizard.ascx.cs"
    Inherits="USA_Rent_House_Project.Land_load.Modules.Landloard_Profile_Wizard" %>
<script src="../../Scripts/jquery-2.1.4.min.js" type="text/javascript"></script>
<script src="../../Scripts/jquery.maskedinput.min.js" type="text/javascript"></script>
<style type="text/css">
    .hidden
    {
        display: none;
    }
    
    .label
    {
        width: 200px;
        float: left;
    }
    
    .input
    {
        width: 300px;
        float: left;
    }
    
    .stepwrapper
    {
        padding-top: 40px;
    }
    
    .failureNotification
    {
        font-size: -1.8em !important;
    }
    
    .row
    {
        height: 70px;
    }
</style>
<div>
    <h2 class="form_heading">
        Land loard Profile Info</h2>
    <div id="ShowfullRegistration" runat="server" visible="false">
        Email address,
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        is already Registered profile with us. if you need to Recover Your Password Please
        click
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Secret_Question.aspx">Here</asp:HyperLink>
    </div>
    <div id="ShowPartialUserEmailRequest" runat="server" visible="false">
        <p>
            Email address,
            <asp:Label ID="lblpartialuserEmail" runat="server" Text=""></asp:Label>
            is already a partial profile with us. “Your Current House” already has created a
            partial profile for you. To send another “Invitation Email” to
            <asp:Label ID="lblpartialuserEmail2" runat="server" Text=""></asp:Label>
            so that you can have a “Full Profile” please click on button below. is already Registerd
            with Partial account. Do you Want to Send Request Again to Create an Account with
            Us? if yes, please click button bellow..
        </p>
        <br />
        <asp:Button ID="BtnResentRequest" runat="server" Text="Re-Send Request" CssClass="actionbutton" />
    </div>
    <asp:Wizard ID="registrationWizard" runat="server" ActiveStepIndex="0" 
        DisplaySideBar="False">
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                <div class="stepwrapper">
                    <div class="row">
                        <div class="label">
                            <asp:Label ID="EmailLabel" runat="server" CssClass="form_label">Land-lord email:</asp:Label>
                        </div>
                        <div class="input">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="textEntry textbox_w1" MaxLength="50"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator Display="Dynamic" ID="EmailRequired" runat="server" ControlToValidate="txtEmail"
                                CssClass="failureNotification" ErrorMessage="E-mail is required." ValidationGroup="vg-step1"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator2"
                                runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                ControlToValidate="txtEmail" CssClass="failureNotification" ValidationGroup="vg-step1"
                                ErrorMessage="Enter valid email address." ToolTip="Enter valid email address."> </asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="label">
                            <asp:Label ID="PasswordLabel" runat="server" CssClass="form_label">Password:<span class="form_comments">(6 Characters Min)</span></asp:Label>
                        </div>
                        <div class="input">
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="textEntry textbox_w1" TextMode="Password" MaxLength="50"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator Display="Dynamic" ID="PasswordRequired" runat="server"
                                ControlToValidate="txtPassword" CssClass="failureNotification" ErrorMessage="Password is required."
                                ToolTip="Password is required." ValidationGroup="vg-step1"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator Display="Dynamic" ID="valMin" runat="server" CssClass="failureNotification"
                                ControlToValidate="txtPassword" ErrorMessage="Password minimum length is 6" ValidationExpression=".{6}.*"
                                ValidationGroup="vg-step1"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="label">
                            <asp:Label ID="ConfirmPasswordLabel" runat="server" CssClass="form_label">Retype Password:</asp:Label>
                        </div>
                        <div class="input">
                            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="textEntry textbox_w1"
                                TextMode="Password" MaxLength="50"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="txtConfirmPassword"
                                CssClass="failureNotification" ErrorMessage="Retype Password is required." ID="ConfirmPasswordRequired"
                                runat="server" ToolTip="Retype Password is required." ValidationGroup="vg-step1"></asp:RequiredFieldValidator>
                            <asp:CompareValidator Display="Dynamic" ID="PasswordCompare" runat="server" ControlToCompare="txtPassword"
                                ControlToValidate="txtConfirmPassword" CssClass="failureNotification" ErrorMessage="The password and confirmation password must match."
                                ValidationGroup="vg-step1"></asp:CompareValidator>
                        </div>
                    </div>
                    <div class="row">
                        <asp:Button ID="btnStep1" runat="server" CssClass="actionbutton" Text="Continue"
                            ValidationGroup="vg-step1" OnClick="btnStep1_Click" />
                    </div>
                    <div>
                        <asp:Label ID="lblError" runat="server" CssClass="failureNotification" Text=""></asp:Label>
                    </div>
                </div>
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                <div class="stepwrapper">
                    <div class="row">
                        <div class="label">
                            <asp:Label ID="LabelQuestion" runat="server" CssClass="form_label">Secret Question:</asp:Label>
                        </div>
                        <div class="input">
                            <asp:TextBox ID="txtQuestion" runat="server" CssClass="textEntry textbox_w1" MaxLength="50"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator Display="Dynamic" ID="QuestionRequiredFieldValidator"
                                runat="server" ControlToValidate="txtQuestion" CssClass="failureNotification"
                                ErrorMessage="Secret Question is required." ToolTip="secret Question is required."
                                ValidationGroup="vg-step3"></asp:RequiredFieldValidator></div>
                    </div>
                    <div class="row">
                        <div class="label">
                            <asp:Label ID="LabelAnswer" runat="server" CssClass="form_label">Answer:</asp:Label>
                        </div>
                        <div class="input">
                            <asp:TextBox ID="txtAnswer" runat="server" CssClass="textEntry textbox_w1" MaxLength="50"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator Display="Dynamic" ID="AnswerRequiredFieldValidator" runat="server"
                                ControlToValidate="txtAnswer" CssClass="failureNotification" ErrorMessage="Answer is required."
                                ToolTip="Answer is required." ValidationGroup="vg-step3"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <asp:Button ID="btnStep3" runat="server" CssClass="actionbutton" Text="Continue"
                            ValidationGroup="vg-step3" OnClick="btnStep3_Click" />
                    </div>
                </div>
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep3" runat="server" Title="Step 3">
                <div class="stepwrapper">
                    <div class="row">
                        <p>
                            Please check your mail for verification code, If not received click the resend button
                            new code.</p>
                    </div>
                    <div class="row">
                        <div class="label">
                            <asp:Label ID="Label2" runat="server" CssClass="form_label">Enter Code:</asp:Label>
                        </div>
                        <div class="input">
                            <asp:TextBox ID="txtCode" runat="server" CssClass="textEntry textbox_w1" MaxLength="50"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="txtCode" CssClass="failureNotification" ErrorMessage="Verification Code Required."
                                ToolTip="Verification Code Required." ValidationGroup="vg-step2"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <asp:Button ID="btnVerify" runat="server" CssClass="actionbutton" Text="Verify" ValidationGroup="vg-step2"
                            OnClick="btnVerify_Click" />
                        <asp:Button ID="btnResend" runat="server" CssClass="actionbutton" Text="Resend" 
                            OnClick="btnResend_Click" />
                    </div>
                </div>
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep4" runat="server" Title="Step 4">
                <div class="stepwrapper">
                    <div class="row">
                        <div class="label">
                            <asp:Label ID="LabelFirstName" runat="server" CssClass="form_label">First Name:</asp:Label>
                        </div>
                        <div class="input">
                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="textEntry textbox_w1" MaxLength="50"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="txtFirstName"
                                CssClass="failureNotification" ErrorMessage="First Name is required." ToolTip="First Name is required."
                                ValidationGroup="vg-step4"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="label">
                            <asp:Label ID="LabelLastName" runat="server" CssClass="form_label">Last Name:</asp:Label>
                        </div>
                        <div class="input">
                            <asp:TextBox ID="txtLastName" runat="server" CssClass="textEntry textbox_w1" MaxLength="50"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="txtLastName"
                                CssClass="failureNotification" ErrorMessage="Last Name is required." ToolTip="Last Name is required."
                                ValidationGroup="vg-step4"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="label">
                            <asp:Label ID="LabelDateofBirth" runat="server" CssClass="form_label">Date of birth:</asp:Label>
                        </div>
                        <div class="input">
                            <asp:TextBox ID="txtDateofBirth" runat="server" CssClass="textEntry textbox_w1" MaxLength="10" ClientIDMode="Static"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator  Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDateofBirth"
                                CssClass="failureNotification" ErrorMessage="Date of birth is required." ToolTip="Date of birth is required."
                                ValidationGroup="vg-step4"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator1"
                                runat="server" CssClass="failureNotification" ControlToValidate="txtDateofBirth"
                                ErrorMessage="Invalid Date" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$"
                                ValidationGroup="vg-step4"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="label">
                            <asp:Label ID="LabelReferralCode" runat="server" AssociatedControlID="ReferralCode"
                                CssClass="form_label">Referral Code:</asp:Label>
                        </div>
                        <div class="input">
                            <asp:TextBox ID="ReferralCode" runat="server" CssClass="textEntry textbox_w1" MaxLength="50"></asp:TextBox></div>
                    </div>
                    <div class="row">
                        <asp:Button ID="btnStep4" runat="server" CssClass="actionbutton" Text="Finish"
                            ValidationGroup="vg-step4" OnClick="btnStep4_Click" />
                    </div>
                </div>
            </asp:WizardStep>
        </WizardSteps>
        <NavigationButtonStyle CssClass="hidden" />
    </asp:Wizard>
    <script type="text/javascript">
        jQuery(function ($) { $("#txtDateofBirth").mask("99/99/9999", { placeholder: "mm/dd/yyyy" }); });
    
    </script>
</div>
