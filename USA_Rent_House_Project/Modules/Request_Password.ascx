<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Request_Password.ascx.cs" Inherits="USA_Rent_House_Project.Modules.Request_Password" %>



  <div class="form_layer">
        <h2 class="form_heading">
            Request New Password
        </h2>

            <span class="failureNotification">
                <asp:Label ID="LabelError" runat="server" ForeColor="Red" Text=""></asp:Label>
            </span>

                <asp:ValidationSummary ID="RequestPasswordValidationSummary" runat="server" CssClass="failureNotification"
                    ValidationGroup="RequestPasswordValidationGroup" />
                <div class="form_layer2">
                    <p class="intro_text">
                        Please Enter Your Account Details
                    </p>
                        <p>
                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="form_label">UserName:</asp:Label>
                    <asp:TextBox ID="UserName" runat="server" CssClass="textEntry textbox_w2" MaxLength="20" ></asp:TextBox> 
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
                                
                </p>
                    <p>
                        <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="form_label">Email:</asp:Label>
                        <asp:TextBox ID="Email" runat="server" class="textEntry textbox_w1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                            ErrorMessage="Email is required." ToolTip="Email is required." ValidationGroup="RequestPasswordValidationGroup">*</asp:RequiredFieldValidator>
                      
                    </p>
                </div>
                <div class="align_right">
                    <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" CssClass="reset_pw_button"
                        Text="Request New Password" ValidationGroup="RequestPasswordValidationGroup"
                        OnClick="SubmitButton_Click" />
                </div>
                 
  
    </div><br />
    