﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Profile_info_Edit.ascx.cs" Inherits="USA_Rent_House_Project.Student.Modules.Student_Profile_info_Edit" %>

<div id="div_register_User">
    <h2 class="form_heading">
        Student Profile info
    </h2>

     <asp:HyperLink ID="HyperLinkChangePassword" runat="server" CssClass="loginlinks" NavigateUrl="~/Change_Password.aspx">Change Password</asp:HyperLink>  <asp:HyperLink ID="HyperLinkChangeQuestion" CssClass="loginlinks"  NavigateUrl="~/Change_Secret_Question.aspx" runat="server">Change Seacret Question</asp:HyperLink> 
   
    <div id="formwrapper">
        <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification" ValidationGroup="RegisterStudentValidationGroup" />
        <div id="forminner">

            <p>
                <asp:Label ID="LabelGender" runat="server" AssociatedControlID="DrpGender" CssClass="form_label">Gender:</asp:Label>
                <asp:DropDownList ID="DrpGender" runat="server" CssClass="dropDownEntry">
                </asp:DropDownList>
             <asp:RequiredFieldValidator ID="GenderRequired" runat="server" ErrorMessage="Please select Gender"  CssClass="failureNotification" ControlToValidate="DrpGender" ValidationGroup="RegisterStudentValidationGroup" InitialValue="-1">*</asp:RequiredFieldValidator>
            </p>

            <p>
                <asp:Label ID="LabelName" runat="server" AssociatedControlID="Name" CssClass="form_label">Name:</asp:Label>
                <asp:TextBox ID="Name" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="NameRequired" runat="server" ControlToValidate="Name"
                    CssClass="failureNotification" ErrorMessage="Name is required." ToolTip="Name is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
            </p>
         
            <p id="setEmail" runat="server">
                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="form_label">E-mail:</asp:Label>
                 <asp:Label ID="Email" runat="server" CssClass="form_label"></asp:Label>
               <%-- <asp:TextBox ID="Email" runat="server" CssClass="textEntry textbox_w1" ReadOnly="true"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                    CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="Email" CssClass="failureNotification" ValidationGroup="RegisterStudentValidationGroup"
                    ErrorMessage="Enter valid email address." ToolTip="Enter valid email address.">* </asp:RegularExpressionValidator>--%>
            </p>
           
            <p>
                <asp:Label ID="AddressLabel" runat="server" AssociatedControlID="Address" CssClass="form_label">Address:</asp:Label>
                <asp:TextBox ID="Address" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="AddressRequiredField" runat="server" ControlToValidate="Address"
                    CssClass="failureNotification" ErrorMessage="Address is required." ToolTip="Address is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="CityLabel" runat="server" AssociatedControlID="City" CssClass="form_label">City:</asp:Label>
                <asp:TextBox ID="City" runat="server" CssClass="textEntry textbox_w2"></asp:TextBox>
                <asp:RequiredFieldValidator ID="CityRequiredField" runat="server" ControlToValidate="City"
                    CssClass="failureNotification" ErrorMessage="City is required." ToolTip="City is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="StateLabel" runat="server" AssociatedControlID="Drpstate" CssClass="form_label">State:</asp:Label>
                <asp:DropDownList ID="Drpstate" runat="server" CssClass="dropDownEntry">
                    <asp:ListItem Value="AL"> Alabama </asp:ListItem>
                    <asp:ListItem Value="AK"> Alaska </asp:ListItem>
                    <asp:ListItem Value="AZ"> Arizona </asp:ListItem>
                    <asp:ListItem Value="AR"> Arkansas  </asp:ListItem>
                    <asp:ListItem Value="CA"> California </asp:ListItem>
                    <asp:ListItem Value="CO"> Colorado </asp:ListItem>
                    <asp:ListItem Value="CT"> Connecticut </asp:ListItem>
                    <asp:ListItem Value="DE"> Delaware  </asp:ListItem>
                    <asp:ListItem Value="FL"> Florida  </asp:ListItem>
                    <asp:ListItem Value="GA"> Georgia </asp:ListItem>
                    <asp:ListItem Value="HI"> Hawaii </asp:ListItem>
                    <asp:ListItem Value="ID"> Idaho  </asp:ListItem>
                    <asp:ListItem Value="IL"> Illinois  </asp:ListItem>
                    <asp:ListItem Value="IN"> Indiana  </asp:ListItem>
                    <asp:ListItem Value="IA"> Iowa </asp:ListItem>
                    <asp:ListItem Value="KS"> Kansas  </asp:ListItem>
                    <asp:ListItem Value="KY"> Kentucky  </asp:ListItem>
                    <asp:ListItem Value="LA"> Louisiana </asp:ListItem>
                    <asp:ListItem Value="ME"> Maine </asp:ListItem>
                    <asp:ListItem Value="MD"> Maryland </asp:ListItem>
                    <asp:ListItem Value="MA"> Massachusetts  </asp:ListItem>
                    <asp:ListItem Value="MI"> Michigan  </asp:ListItem>
                    <asp:ListItem Value="MN"> Minnesota </asp:ListItem>
                    <asp:ListItem Value="MS"> Mississippi </asp:ListItem>
                    <asp:ListItem Value="MO"> Missouri </asp:ListItem>
                    <asp:ListItem Value="MT"> Montana </asp:ListItem>
                    <asp:ListItem Value="NE"> Nebraska </asp:ListItem>
                    <asp:ListItem Value="NV"> Nevada </asp:ListItem>
                    <asp:ListItem Value="NH"> New Hampshire  </asp:ListItem>
                    <asp:ListItem Value="NJ"> New Jersey  </asp:ListItem>
                    <asp:ListItem Value="NM"> New Mexico  </asp:ListItem>
                    <asp:ListItem Value="NY"> New York  </asp:ListItem>
                    <asp:ListItem Value="NC"> North Carolina </asp:ListItem>
                    <asp:ListItem Value="ND"> North Dakota </asp:ListItem>
                    <asp:ListItem Value="OH"> Ohio </asp:ListItem>
                    <asp:ListItem Value="OK"> Oklahoma  </asp:ListItem>
                    <asp:ListItem Value="OR"> Oregon  </asp:ListItem>
                    <asp:ListItem Value="PA"> Pennsylvania </asp:ListItem>
                    <asp:ListItem Value="RI"> Rhode Island  </asp:ListItem>
                    <asp:ListItem Value="SC"> South Carolina  </asp:ListItem>
                    <asp:ListItem Value="SD"> South Dakota </asp:ListItem>
                    <asp:ListItem Value="TN"> Tennessee  </asp:ListItem>
                    <asp:ListItem Value="TX"> Texas </asp:ListItem>
                    <asp:ListItem Value="UT"> Utah </asp:ListItem>
                    <asp:ListItem Value="VT"> Vermont </asp:ListItem>
                    <asp:ListItem Value="VA"> Virginia </asp:ListItem>
                    <asp:ListItem Value="WA"> Washington </asp:ListItem>
                    <asp:ListItem Value="WV"> West Virginia </asp:ListItem>
                    <asp:ListItem Value="WI"> Wisconsin </asp:ListItem>
                    <asp:ListItem Value="WY"> Wyoming  </asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                <asp:Label ID="ZipLabel" runat="server" AssociatedControlID="Zip" CssClass="form_label">Zip:</asp:Label>
                <asp:TextBox ID="Zip" runat="server" CssClass="textEntry textbox_w3" MaxLength="4"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ZipRequiredField" runat="server" ControlToValidate="Zip"
                    CssClass="failureNotification" ErrorMessage="Zip is required." ToolTip="Zip is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Zip must be 4 numbers"
                    ControlToValidate="Zip" CssClass="failureNotification" ValidationExpression="^[0-9]{4}$"
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RegularExpressionValidator>
            </p>
            <p>
                <asp:Label ID="MobileLabel" runat="server" AssociatedControlID="Mobile" CssClass="form_label">Best Contact #:</asp:Label>
                <asp:TextBox ID="Mobile" runat="server" CssClass="textEntry" MaxLength="12"></asp:TextBox>
                <asp:RegularExpressionValidator ID="mobileRegularExpression" runat="server" CssClass="failureNotification"
                    ErrorMessage="Invalid Mobile No." ToolTip="Invalid Mobile No." ControlToValidate="Mobile"
                    ValidationGroup="RegisterStudentValidationGroup" ValidationExpression="^0[0-9]{9}$|^0[0-9]{1}[ ][0-9]{8}$|^0[1-9]{1}[ ][0-9]{4}[ ][0-9]{4}$">*
                </asp:RegularExpressionValidator>
            </p>
            <p>
                <asp:Label ID="LabelDriversLicense" runat="server" AssociatedControlID="DriversLicense"
                    CssClass="form_label">Drivers License:</asp:Label>
                <asp:TextBox ID="DriversLicense" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="DriversLicenseRequiredFieldValidator" runat="server"
                    ControlToValidate="DriversLicense" CssClass="failureNotification" ErrorMessage="Drivers License is required."
                    ToolTip="Drivers License is required." ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
            </p>

            
             <p>
                <asp:Label ID="LabelSchoolName" runat="server" AssociatedControlID="DrpSchoolName" CssClass="form_label">School Name:</asp:Label>
                <asp:DropDownList ID="DrpSchoolName" runat="server" CssClass="dropDownEntry">
                </asp:DropDownList>
           <asp:RequiredFieldValidator ID="SchoolNameRequired" runat="server" ErrorMessage="Please select School" CssClass="failureNotification" ControlToValidate="DrpSchoolName" ValidationGroup="RegisterStudentValidationGroup" InitialValue="-1">*</asp:RequiredFieldValidator>
            </p>

           
            <p>
                <asp:Label ID="LabelYear" runat="server" AssociatedControlID="DRPYear" CssClass="form_label">Year:</asp:Label>
                <asp:DropDownList ID="DRPYear" runat="server">
                </asp:DropDownList>
             <asp:RequiredFieldValidator ID="YearRequired" runat="server" ErrorMessage="Please select Year" CssClass="failureNotification" ControlToValidate="DRPYear" ValidationGroup="RegisterStudentValidationGroup" InitialValue="-1">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="LabelStatus" runat="server" AssociatedControlID="Status" CssClass="form_label">Status:</asp:Label>
                <asp:DropDownList ID="Status" runat="server">
                </asp:DropDownList>
             <asp:RequiredFieldValidator ID="StatusRequired" runat="server" ErrorMessage="Please select Status" CssClass="failureNotification"  ControlToValidate="Status" ValidationGroup="RegisterStudentValidationGroup" InitialValue="-1">*</asp:RequiredFieldValidator>
            
            </p>
             <p>
                <asp:Label ID="LabelLandLoadName" runat="server" AssociatedControlID="LandLoadName" CssClass="form_label">Land load Name:</asp:Label>
                <asp:TextBox ID="LandLoadName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="SLandLoadNameRequiredFieldValidator" runat="server"
                    ControlToValidate="LandLoadName" CssClass="failureNotification" ErrorMessage="Land load Name is required."
                    ToolTip="Land load Name is required." ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="LabelLandLoadPlace" runat="server" AssociatedControlID="LandLoadPlace" CssClass="form_label">Land Load Place:</asp:Label>
                <asp:TextBox ID="LandLoadPlace" runat="server" CssClass="textEntry textbox_w1" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="LandLoadPlaceRequiredFieldValidator" runat="server" ControlToValidate="LandLoadPlace"
                    CssClass="failureNotification" ErrorMessage="Land Load Place is required." ToolTip="Land Load Place is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
            </p>
            
        </div>
        <p class="submitButton">
            <asp:Button ID="EditUserButton" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                Text="Edit Student" ValidationGroup="RegisterStudentValidationGroup" 
                onclick="EditUserButton_Click" />
            <asp:Label ID="lblError" runat="server" CssClass="failureNotification" Text=""></asp:Label>
        </p>
    </div>
</div>
