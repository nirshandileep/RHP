<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Profile_info_Edit.ascx.cs" Inherits="USA_Rent_House_Project.Student.Modules.Student_Profile_info_Edit" %>

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
                <asp:Label ID="LabelFirstName" runat="server" AssociatedControlID="FirstName"
                    CssClass="form_label">First Name:</asp:Label>
                <asp:TextBox ID="FirstName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="FirstName"
                    CssClass="failureNotification" ErrorMessage="First Name is required."
                    ToolTip="First Name is required." ValidationGroup="RegisterLand_lordValidationGroup">*</asp:RequiredFieldValidator>
               
            </p>
             <p>
                <asp:Label ID="LabelMiddleName" runat="server" AssociatedControlID="MiddleName"
                    CssClass="form_label">Middle Name:</asp:Label>
                <asp:TextBox ID="MiddleName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
            
            </p>
             <p>
                <asp:Label ID="LabelLastName" runat="server" AssociatedControlID="LastName"
                    CssClass="form_label">Last Name:</asp:Label>
                <asp:TextBox ID="LastName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="LastName"
                    CssClass="failureNotification" ErrorMessage="Last Name is required."
                    ToolTip="Last Name is required." ValidationGroup="RegisterLand_lordValidationGroup">*</asp:RequiredFieldValidator>
               
            </p>

         
            <p id="setEmail" runat="server">
                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="form_label">E-mail:</asp:Label>
                 <asp:Label ID="Email" runat="server" CssClass="form_label"></asp:Label>
              
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
                </asp:DropDownList>
            </p>
            <p>
                <asp:Label ID="ZipLabel" runat="server" AssociatedControlID="Zip" CssClass="form_label">Zip:</asp:Label>
                <asp:TextBox ID="Zip" runat="server" CssClass="textEntry textbox_w3" MaxLength="5"></asp:TextBox>

                <asp:RequiredFieldValidator ID="ZipRequiredField" runat="server" ControlToValidate="Zip"
                    CssClass="failureNotification" ErrorMessage="Zip is required." ToolTip="Zip is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
               
                 <asp:CompareValidator ID="CompareValidator1" runat="server" Operator="DataTypeCheck" Type="Integer" ErrorMessage="Zip must be 5 numbers"
                    ControlToValidate="Zip" CssClass="failureNotification"
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:CompareValidator>
  </p>
            <p>
                <asp:Label ID="MobileLabel" runat="server" AssociatedControlID="Mobile" CssClass="form_label">Best Contact #:</asp:Label>
                <asp:TextBox ID="Mobile" runat="server" CssClass="textEntry" MaxLength="15"></asp:TextBox>

                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Mobile"
                    CssClass="failureNotification" ErrorMessage="Best Contact No is required." ToolTip="Best Contact No is required."
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>

                 <asp:CompareValidator ID="CompareValidator2" runat="server" Operator="DataTypeCheck" Type="Integer" CssClass="failureNotification"
                    ErrorMessage="Invalid Best Contact No." ToolTip="Invalid Best Contact No." ControlToValidate="Mobile"
                    ValidationGroup="RegisterStudentValidationGroup">*</asp:CompareValidator>
            </p>
           
            <p>
                <asp:Label ID="LabelDriversLicense" runat="server" AssociatedControlID="DriversLicense"
                    CssClass="form_label">Drivers License:</asp:Label>
                <asp:TextBox ID="DriversLicense" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="DriversLicenseRequiredFieldValidator" runat="server"
                    ControlToValidate="DriversLicense" CssClass="failureNotification" ErrorMessage="Drivers License is required."
                    ToolTip="Drivers License is required." ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
            </p>

            
         <%--    <p>
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
            </p>--%>
            
        </div>
        <p class="submitButton">
            <asp:Button ID="EditUserButton" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                Text="Save" ValidationGroup="RegisterStudentValidationGroup" 
                onclick="EditUserButton_Click" />
            <asp:Label ID="lblError" runat="server" CssClass="failureNotification" Text=""></asp:Label>
        </p>
    </div>
</div>
