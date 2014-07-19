<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Landload_Profile_info_Add.ascx.cs" Inherits="USA_Rent_House_Project.Land_load.Modules.Landload_Profile_info_Add" %>

<div id="div_register_User">
    <h2 class="form_heading">
    Land Load Profile info
    </h2>
    <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification"
        ValidationGroup="RegisterLand_lordValidationGroup" />
    <div class="accountInfo">
        <fieldset class="form_layer">
            <p>
                <asp:Label ID="LabelName" runat="server" AssociatedControlID="Name"
                    CssClass="form_label">Name:</asp:Label>
                <asp:TextBox ID="Name" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="NameRequired" runat="server" ControlToValidate="Name"
                    CssClass="failureNotification" ErrorMessage="Name is required."
                    ToolTip="Name is required." ValidationGroup="RegisterLand_lordValidationGroup">*</asp:RequiredFieldValidator>
               
            </p>

             <p>
                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="form_label">UserName :</asp:Label>
                <asp:TextBox ID="UserName" runat="server" CssClass="textEntry textbox_w2" MaxLength="20"></asp:TextBox>
               <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                    CssClass="failureNotification" ErrorMessage="UserName is required." ToolTip="UserName is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
               
                <asp:RegularExpressionValidator ID="RegExp1" runat="server" CssClass="failureNotification"
                    ErrorMessage="UserName only allowed (a - z  A - Z 0-9 - /). " ToolTip="UserName only allowed (a - z  A - Z 0-9 - /). "
                    ControlToValidate="UserName" ValidationGroup="RegisterStudentValidationGroup" ValidationExpression="^[a-zA-Z0-9/-]+$">*</asp:RegularExpressionValidator>
               
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="failureNotification"
                    ControlToValidate="UserName" ErrorMessage="UserName must be between 4 - 20 characters."
                    ToolTip="UserName must be between 4 - 20 characters." ValidationExpression=".{4}.*"
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RegularExpressionValidator>
                    <br />
                      <span class="form_comments">Your UserName is the unique name you use to login and cannot
                    be changed. This should not be the same as your email. The length must be between
                    4 and 20 characters.</span>
            </p>

            <p>
                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="form_label">E-mail:</asp:Label>
                <asp:TextBox ID="Email" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                    CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required."
                    ValidationGroup="RegisterLand_lordValidationGroup">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="Email" CssClass="failureNotification" ValidationGroup="RegisterLand_lordValidationGroup"
                    ErrorMessage="Enter valid email address." ToolTip="Enter valid email address.">* </asp:RegularExpressionValidator>
            </p>
            <p>
                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="form_label">Password:<span class="form_comments">(6 Characters Min)</span></asp:Label>
                <asp:TextBox ID="Password" runat="server" CssClass="textEntry textbox_w1" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                    CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required."
                    ValidationGroup="RegisterLand_lordValidationGroup">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="valMin" runat="server" CssClass="failureNotification"
                    ControlToValidate="Password" ErrorMessage="Password minimum length is 6" ValidationExpression=".{6}.*"
                    ValidationGroup="RegisterLand_lordValidationGroup">*</asp:RegularExpressionValidator>
            </p>
            <p>
                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword"
                    CssClass="form_label">Retype Password:</asp:Label>
                <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="textEntry textbox_w1"
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" CssClass="failureNotification"
                    Display="Dynamic" ErrorMessage="Retype Password is required." ID="ConfirmPasswordRequired"
                    runat="server" ToolTip="Retype Password is required." ValidationGroup="RegisterLand_lordValidationGroup">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                    ControlToValidate="ConfirmPassword" CssClass="failureNotification" Display="Dynamic"
                    ErrorMessage="The password and confirmation password must match." ValidationGroup="RegisterLand_lordValidationGroup">*</asp:CompareValidator>
            </p>
            <p>
                <asp:Label ID="AddressLabel" runat="server" AssociatedControlID="Address" CssClass="form_label">Address:</asp:Label>
                <asp:TextBox ID="Address" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="AddressRequiredField" runat="server" ControlToValidate="Address"
                    CssClass="failureNotification" ErrorMessage="Address is required." ToolTip="Address is required."
                    ValidationGroup="RegisterLand_lordValidationGroup">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="CityLabel" runat="server" AssociatedControlID="City" CssClass="form_label">Suburb:</asp:Label>
                <asp:TextBox ID="City" runat="server" CssClass="textEntry textbox_w2"></asp:TextBox>
                <asp:RequiredFieldValidator ID="CityRequiredField" runat="server" ControlToValidate="City"
                    CssClass="failureNotification" ErrorMessage="City is required." ToolTip="City is required."
                    ValidationGroup="RegisterLand_lordValidationGroup">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="StateLabel" runat="server" AssociatedControlID="Drpstate" CssClass="form_label">State:</asp:Label>
                <asp:DropDownList ID="Drpstate" runat="server" CssClass="dropDownEntry">
                    <asp:ListItem Value="AL"> Alabama - Montgomery</asp:ListItem>
                    <asp:ListItem Value="AK"> Alaska - Juneau</asp:ListItem>
                    <asp:ListItem Value="AZ"> Arizona - Phoenix</asp:ListItem>
                    <asp:ListItem Value="AR"> Arkansas - Little Rock</asp:ListItem>
                    <asp:ListItem Value="CA"> California - Sacramento</asp:ListItem>
                    <asp:ListItem Value="CO"> Colorado - Denver</asp:ListItem>
                    <asp:ListItem Value="CT"> Connecticut - Hartford</asp:ListItem>
                    <asp:ListItem Value="DE"> Delaware - Dover</asp:ListItem>
                    <asp:ListItem Value="FL"> Florida - Tallahassee</asp:ListItem>
                    <asp:ListItem Value="GA"> Georgia - Atlanta</asp:ListItem>
                    <asp:ListItem Value="HI"> Hawaii - Honolulu</asp:ListItem>
                    <asp:ListItem Value="ID"> Idaho - Boise</asp:ListItem>
                    <asp:ListItem Value="IL"> Illinois - Springfield</asp:ListItem>
                    <asp:ListItem Value="IN"> Indiana - Indianapolis</asp:ListItem>
                    <asp:ListItem Value="IA"> Iowa - Des Moines</asp:ListItem>
                    <asp:ListItem Value="KS"> Kansas - Topeka</asp:ListItem>
                    <asp:ListItem Value="KY"> Kentucky - Frankfort</asp:ListItem>
                    <asp:ListItem Value="LA"> Louisiana - Baton Rouge</asp:ListItem>
                    <asp:ListItem Value="ME"> Maine - Augusta</asp:ListItem>
                    <asp:ListItem Value="MD"> Maryland - Annapolis</asp:ListItem>
                    <asp:ListItem Value="MA"> Massachusetts - Boston</asp:ListItem>
                    <asp:ListItem Value="MI"> Michigan - Lansing</asp:ListItem>
                    <asp:ListItem Value="MN"> Minnesota - Saint Paul</asp:ListItem>
                    <asp:ListItem Value="MS"> Mississippi - Jackson</asp:ListItem>
                    <asp:ListItem Value="MO"> Missouri - Jefferson City</asp:ListItem>
                    <asp:ListItem Value="MT"> Montana - Helena</asp:ListItem>
                    <asp:ListItem Value="NE"> Nebraska - Lincoln</asp:ListItem>
                    <asp:ListItem Value="NV"> Nevada - Carson City</asp:ListItem>
                    <asp:ListItem Value="NH"> New Hampshire - Concord</asp:ListItem>
                    <asp:ListItem Value="NJ"> New Jersey - Trenton</asp:ListItem>
                    <asp:ListItem Value="NM"> New Mexico - Santa Fe</asp:ListItem>
                    <asp:ListItem Value="NY"> New York - Albany</asp:ListItem>
                    <asp:ListItem Value="NC"> North Carolina - Raleigh</asp:ListItem>
                    <asp:ListItem Value="ND"> North Dakota - Bismarck</asp:ListItem>
                    <asp:ListItem Value="OH"> Ohio - Columbus</asp:ListItem>
                    <asp:ListItem Value="OK"> Oklahoma - Oklahoma City</asp:ListItem>
                    <asp:ListItem Value="OR"> Oregon - Salem</asp:ListItem>
                    <asp:ListItem Value="PA"> Pennsylvania - Harrisburg</asp:ListItem>
                    <asp:ListItem Value="RI"> Rhode Island - Providence</asp:ListItem>
                    <asp:ListItem Value="SC"> South Carolina - Columbia</asp:ListItem>
                    <asp:ListItem Value="SD"> South Dakota - Pierre</asp:ListItem>
                    <asp:ListItem Value="TN"> Tennessee - Nashville</asp:ListItem>
                    <asp:ListItem Value="TX"> Texas - Austin</asp:ListItem>
                    <asp:ListItem Value="UT"> Utah - Salt Lake City</asp:ListItem>
                    <asp:ListItem Value="VT"> Vermont - Montpelier</asp:ListItem>
                    <asp:ListItem Value="VA"> Virginia - Richmond</asp:ListItem>
                    <asp:ListItem Value="WA"> Washington - Olympia</asp:ListItem>
                    <asp:ListItem Value="WV"> West Virginia - Charleston</asp:ListItem>
                    <asp:ListItem Value="WI"> Wisconsin - Madison</asp:ListItem>
                    <asp:ListItem Value="WY"> Wyoming - Cheyenne</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                <asp:Label ID="ZipLabel" runat="server" AssociatedControlID="Zip" CssClass="form_label">Zip:</asp:Label>
                <asp:TextBox ID="Zip" runat="server" CssClass="textEntry textbox_w3" MaxLength="4"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ZipRequiredField" runat="server" ControlToValidate="Zip"
                    CssClass="failureNotification" ErrorMessage="Zip is required." ToolTip="Zip is required."
                    ValidationGroup="RegisterLand_lordValidationGroup">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Zip must be 4 numbers"
                    ControlToValidate="Zip" CssClass="failureNotification" ValidationExpression="^[0-9]{4}$"
                    ValidationGroup="RegisterLand_lordValidationGroup">*</asp:RegularExpressionValidator>
            </p>
            <p>
                <asp:Label ID="MobileLabel" runat="server" AssociatedControlID="Mobile" CssClass="form_label">Best Contact #:</asp:Label>
                <asp:TextBox ID="Mobile" runat="server" CssClass="textEntry" MaxLength="12"></asp:TextBox>
                <asp:RegularExpressionValidator ID="mobileRegularExpression" runat="server" CssClass="failureNotification"
                    ErrorMessage="Invalid Mobile No." ToolTip="Invalid Mobile No." ControlToValidate="Mobile"
                    ValidationGroup="RegisterLand_lordValidationGroup" ValidationExpression="^0[0-9]{9}$|^0[0-9]{1}[ ][0-9]{8}$|^0[1-9]{1}[ ][0-9]{4}[ ][0-9]{4}$">*
                </asp:RegularExpressionValidator>
            </p>
            to validate landlord when connecting us : 
            <p>
                <asp:Label ID="LabelQuestion" runat="server" AssociatedControlID="Question"
                    CssClass="form_label">Secret Question:</asp:Label>
                <asp:TextBox ID="Question" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="QuestionRequiredFieldValidator" runat="server" ControlToValidate="Question"
                    CssClass="failureNotification" ErrorMessage="Secret Question is required."
                    ToolTip="secret Question is required." ValidationGroup="RegisterLand_lordValidationGroup">*</asp:RequiredFieldValidator>
               
            </p>
            <p>
                <asp:Label ID="LabelAnswer" runat="server" AssociatedControlID="Answer"
                    CssClass="form_label">Answer:</asp:Label>
                <asp:TextBox ID="Answer" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="AnswerRequiredFieldValidator" runat="server" ControlToValidate="Answer"
                    CssClass="failureNotification" ErrorMessage="Answer is required."
                    ToolTip="Answer is required." ValidationGroup="RegisterLand_lordValidationGroup">*</asp:RequiredFieldValidator>
               
            </p>
        </fieldset>
        <p class="submitButton">
            <asp:Button ID="CreateUserButton" runat="server" 
                CssClass="create_Landlord_button" CommandName="MoveNext"
                Text="Create Landlord" ValidationGroup="RegisterLand_lordValidationGroup" 
                onclick="CreateUserButton_Click"  />
        </p>
    </div>
</div>
