<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Profile_Wizard.ascx.cs" Inherits="USA_Rent_House_Project.Student.Modules.Student_Profile_Wizard" %>
<asp:Wizard ID="Wizard1" runat="server">
    <WizardSteps>
        <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
            <div>
                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="form_label">E-mail:</asp:Label>
                <asp:TextBox ID="Email" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                    CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="Email" CssClass="failureNotification" ValidationGroup="RegisterStudentValidationGroup"
                    ErrorMessage="Enter valid email address." ToolTip="Enter valid email address.">* </asp:RegularExpressionValidator>
            </div>
            <div>

                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="form_label">Password:<span class="form_comments">(6 Characters Min)</span></asp:Label>
                <asp:TextBox ID="Password" runat="server" CssClass="textEntry textbox_w1" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                    CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="valMin" runat="server" CssClass="failureNotification"
                    ControlToValidate="Password" ErrorMessage="Password minimum length is 6" ValidationExpression=".{6}.*"
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RegularExpressionValidator>

            </div>

            <div>
                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword"
                    CssClass="form_label">Retype Password:</asp:Label>
                <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="textEntry textbox_w1"
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" CssClass="failureNotification"
                    Display="Dynamic" ErrorMessage="Retype Password is required." ID="ConfirmPasswordRequired"
                    runat="server" ToolTip="Retype Password is required." ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                    ControlToValidate="ConfirmPassword" CssClass="failureNotification" Display="Dynamic"
                    ErrorMessage="The password and confirmation password must match." ValidationGroup="RegisterStudentValidationGroup">*</asp:CompareValidator>
            </div>
            
        </asp:WizardStep>
        <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
            <div>

                <asp:Label ID="LabelQuestion" runat="server" AssociatedControlID="Question" CssClass="form_label">Secret Question:</asp:Label>
                <asp:TextBox ID="Question" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="QuestionRequiredFieldValidator" runat="server" ControlToValidate="Question"
                    CssClass="failureNotification" ErrorMessage="Secret Question is required." ToolTip="secret Question is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>

            </div>
            <div>
                <asp:Label ID="LabelAnswer" runat="server" AssociatedControlID="Answer" CssClass="form_label">Answer:</asp:Label>
                <asp:TextBox ID="Answer" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="AnswerRequiredFieldValidator" runat="server" ControlToValidate="Answer"
                    CssClass="failureNotification" ErrorMessage="Answer is required." ToolTip="Answer is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>

            </div>

        </asp:WizardStep>
        <asp:WizardStep ID="WizardStep3" runat="server" Title="Step 3">
            <div>
                <asp:Label ID="LabelFirstName" runat="server" AssociatedControlID="FirstName" CssClass="form_label">First Name:</asp:Label>
                <asp:TextBox ID="FirstName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="FirstName"
                    CssClass="failureNotification" ErrorMessage="First Name is required." ToolTip="First Name is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>

            </div>
            <div>
                <asp:Label ID="LabelMiddleName" runat="server" AssociatedControlID="MiddleName" CssClass="form_label">Middle Name:</asp:Label>
                <asp:TextBox ID="MiddleName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="LabelLastName" runat="server" AssociatedControlID="LastName" CssClass="form_label">Last Name:</asp:Label>
                <asp:TextBox ID="LastName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="LastName"
                    CssClass="failureNotification" ErrorMessage="Last Name is required." ToolTip="Last Name is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Label ID="LabelReferralCode" runat="server" AssociatedControlID="ReferralCode" CssClass="form_label">Referral Code:</asp:Label>
                <asp:TextBox ID="ReferralCode" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
            </div>
        </asp:WizardStep>
    </WizardSteps>
</asp:Wizard>
