<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Profile_info_Add.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_Profile_info_Add" %>
<div id="div_register_User">
    <h2 class="form_heading">
        Student Profile Info
    </h2>
    <div id="formwrapper">

    <div id="ShowfullRegistration" runat="server" visible="false">
     Email address,  <asp:Label ID="Label1" runat="server" Text=""></asp:Label>  is already Registered profile with us. 
     if you need to Recover Your Password Please click 
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Secret_Question.aspx">Hear</asp:HyperLink>
    </div>

    <div id="ShowPartialUserEmailRequest" runat="server" visible="false">
    
    <p>
    
    Email address,  <asp:Label ID="lblpartialuserEmail" runat="server" Text=""></asp:Label>  is already a partial profile with us. 
    “Your Current House” already has created a partial profile for you. To send another “Invitation Email” to  <asp:Label ID="lblpartialuserEmail2" runat="server" Text=""></asp:Label> so that you can have a “Full Profile” please click on button below.
   
        is already Registerd with Partial account. Do you Want to Send Request Again to Create an Account with Us? if yes, please click button bellow..
        </p>
        <br />
        <asp:Button ID="BtnResentRequest" runat="server" Text="Re-Send Request" 
            onclick="BtnResentRequest_Click" CssClass="actionbutton"  />
    </div>

        <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification"
            ValidationGroup="RegisterStudentValidationGroup" />
        <div id="forminner">

           
            <p id="setUserName" runat="server">
                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="form_label">User Name :</asp:Label>
                <asp:TextBox ID="UserName" runat="server" CssClass="textEntry textbox_w2" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                    CssClass="failureNotification" ErrorMessage="UserName is required." ToolTip="UserName is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegExp1" runat="server" CssClass="failureNotification"
                    ErrorMessage="UserName only allowed (a - z  A - Z 0-9 - /). " ToolTip="UserName only allowed (a - z  A - Z 0-9 - /). "
                    ControlToValidate="UserName" ValidationGroup="RegisterStudentValidationGroup"
                    ValidationExpression="^[a-zA-Z0-9/-]+$">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="failureNotification"
                    ControlToValidate="UserName" ErrorMessage="UserName must be between 4 - 20 characters."
                    ToolTip="UserName must be between 4 - 20 characters." ValidationExpression=".{4}.*"
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RegularExpressionValidator>
                <br />
                <span class="form_comments">Your UserName is the unique name you use to login and cannot
                    be changed. This should not be the same as your email. The length must be between
                    4 and 20 characters.</span>
            </p>
            <p id="setEmail" runat="server">
                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="form_label">E-mail:</asp:Label>
                <asp:TextBox ID="Email" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                    CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="Email" CssClass="failureNotification" ValidationGroup="RegisterStudentValidationGroup"
                    ErrorMessage="Enter valid email address." ToolTip="Enter valid email address.">* </asp:RegularExpressionValidator>
            </p>

             <p>
                <asp:Label ID="LabelFirstName" runat="server" AssociatedControlID="FirstName" CssClass="form_label">First Name:</asp:Label>
                <asp:TextBox ID="FirstName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="FirstName"
                    CssClass="failureNotification" ErrorMessage="First Name is required." ToolTip="First Name is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="LabelMiddleName" runat="server" AssociatedControlID="MiddleName" CssClass="form_label">Middle Name:</asp:Label>
                <asp:TextBox ID="MiddleName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="LabelLastName" runat="server" AssociatedControlID="LastName" CssClass="form_label">Last Name:</asp:Label>
                <asp:TextBox ID="LastName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="LastName"
                    CssClass="failureNotification" ErrorMessage="Last Name is required." ToolTip="Last Name is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
            </p>

            <p id="setpwd" runat="server">
                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="form_label">Password:<span class="form_comments">(6 Characters Min)</span></asp:Label>
                <asp:TextBox ID="Password" runat="server" CssClass="textEntry textbox_w1" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                    CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="valMin" runat="server" CssClass="failureNotification"
                    ControlToValidate="Password" ErrorMessage="Password minimum length is 6" ValidationExpression=".{6}.*"
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RegularExpressionValidator>
            </p>
            <p id="confirmpwd" runat="server">
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
            </p>
           
            
           <p id="setQuestiontitle" runat="server">        To Validate Student When Connecting Us :</p>
            <p id="setQuestion" runat="server">
     
                <asp:Label ID="LabelQuestion" runat="server" AssociatedControlID="Question" CssClass="form_label">Secret Question:</asp:Label>
                <asp:TextBox ID="Question" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="QuestionRequiredFieldValidator" runat="server" ControlToValidate="Question"
                    CssClass="failureNotification" ErrorMessage="Secret Question is required." ToolTip="secret Question is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
            </p>
            <p id="setAnswer" runat="server">
                <asp:Label ID="LabelAnswer" runat="server" AssociatedControlID="Answer" CssClass="form_label">Answer:</asp:Label>
                <asp:TextBox ID="Answer" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="AnswerRequiredFieldValidator" runat="server" ControlToValidate="Answer"
                    CssClass="failureNotification" ErrorMessage="Answer is required." ToolTip="Answer is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
            </p>

            <p>
           If You Have a "Referral Code" Please Enter Here
            </p>
             <p>
                <asp:Label ID="LabelReferralCode" runat="server" AssociatedControlID="ReferralCode" CssClass="form_label">Referral Code:</asp:Label>
                <asp:TextBox ID="ReferralCode" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
               
            </p>

            <p>
            
            By clicking Create Student, you agree to our 
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/LegalNotice/PrivacyPolicy.pdf" Target="_blank">Privacy Policy</asp:HyperLink> and that you have read our <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/LegalNotice/User_Agreement.pdf" Target="_blank">User Agreement</asp:HyperLink>.
            </p>

          
        </div>
        <p class="submitButton">
            <asp:Button ID="CreateUserButton" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                Text="Create Student" ValidationGroup="RegisterStudentValidationGroup" OnClick="CreateUserButton_Click" />
            <asp:Label ID="lblError" runat="server" CssClass="failureNotification" Text=""></asp:Label>
        </p>

    </div>
</div>
