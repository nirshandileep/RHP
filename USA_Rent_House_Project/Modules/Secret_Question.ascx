<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Secret_Question.ascx.cs"
    Inherits="USA_Rent_House_Project.Modules.Secret_Question" %>
<div class="form_layer">
    <h2 class="form_heading">
        Request New Password Using Secret Question and Answer
    </h2>
    <span class="failureNotification">
        <asp:Label ID="Msg" runat="server" ForeColor="maroon" />
    </span>
    <asp:ValidationSummary ID="RequestPasswordValidationSummary" runat="server" CssClass="failureNotification"
        ValidationGroup="RequestPasswordValidationGroup" />
        <asp:ValidationSummary ID="ValidationSummarySummaryAnswer" runat="server" CssClass="failureNotification"
        ValidationGroup="RequestPasswordValidationAnswerGroup" />
    <div class="form_layer2">
        <br />
        <div class="form_layer2">
        Enter username to get Secret Question
            <p>
                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName"
                    CssClass="form_label">Username:</asp:Label>
                <asp:TextBox ID="UserName" Columns="30" runat="server" />
                
                  <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                        CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required."
                        ValidationGroup="RequestPasswordValidationGroup">*</asp:RequiredFieldValidator>
                    
                    <asp:RegularExpressionValidator ID="RegExp1" runat="server" CssClass="failureNotification"     
                ErrorMessage="Login ID only allowed (a - z  A - Z 0-9 - /). " 
                ToolTip="Login ID only allowed (a - z  A - Z 0-9 - /). " 
                ControlToValidate="UserName" ValidationGroup="RequestPasswordValidationGroup"   
                ValidationExpression="^[a-zA-Z0-9/-]+$" >*</asp:RegularExpressionValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="failureNotification"
                            ControlToValidate="UserName"
                            ErrorMessage="Login ID minimum length 4 and maximum length 20" 
                            ToolTip="Login ID minimum length 4 and maximum length 20" 
                            ValidationExpression=".{4}.*"
                            ValidationGroup="RequestPasswordValidationGroup">*</asp:RegularExpressionValidator>
                </p><asp:Button ID="EnterUserName" CssClass="reset_pw_button" Text="Go" runat="server" OnClick="EnterUserName_Click"  ValidationGroup="RequestPasswordValidationGroup"/>
          
           <p>
                <asp:Label ID="Label3" runat="server" AssociatedControlID="MemberUserName" CssClass="form_label">UserName:</asp:Label>
                <b><asp:Label ID="MemberUserName" runat="server" Enabled="false" /></b>
                </p>
            <p>
                <asp:Label ID="Label1" runat="server" AssociatedControlID="QuestionLabel" CssClass="form_label"> Password Question:</asp:Label>
                <b>
                    <asp:Label ID="QuestionLabel" runat="server"  Enabled="false" /></b></p>
            <p>
                <asp:Label ID="Label2" runat="server" AssociatedControlID="AnswerTextBox" CssClass="form_label"> Answer: </asp:Label>
                <asp:TextBox ID="AnswerTextBox" Columns="60" runat="server" Enabled="false" />
               
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorAnswer" runat="server" ControlToValidate="AnswerTextBox"
                        CssClass="failureNotification" ErrorMessage="Answer is required." ToolTip="Answer is required."
                        ValidationGroup="RequestPasswordValidationAnswerGroup">*</asp:RequiredFieldValidator>

               </p>
            <div class="align_right">
                <asp:Button ID="ResetPasswordButton" CssClass="reset_pw_button" OnClick="ResetPassword_OnClick" Text="Enter" runat="server" ValidationGroup="RequestPasswordValidationAnswerGroup" Enabled="false" />
            </div>
        </div>
    </div>
</div>