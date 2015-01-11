<%@ Page Title="Student Profile Update Current Landlord" Language="C#" MasterPageFile="~/Master_Pages/Student.Master"
    AutoEventWireup="true" CodeBehind="Student_Profile_Update_Current_Landlord.aspx.cs"
    Inherits="USA_Rent_House_Project.Student.Student_Profile_Update_Current_Landlord" %>

<%@ Register Src="~/Student/Modules/Current_House_Menu_Bar.ascx" TagName="Current_House_Menu_Bar"
    TagPrefix="uc3" %>
<%@ Register Src="Modules/Student_Profile_Header.ascx" TagName="Student_Profile_Header"
    TagPrefix="uc1" %>
    <%@ Register Src="~/Student/Modules/Ctr_QuickLinks.ascx" TagName="QuickLinks" TagPrefix="uc1" %>
<%@ Register Src="Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Student_Profile_Header ID="Student_Profile_HeaderID" runat="server" />
    <asp:HiddenField ID="HiddenFieldLandloadID" runat="server" />
    <div id="currentHomeStudent" runat="server">
        <asp:HiddenField ID="HiddenFieldHouseID" runat="server" />
        <div id="LeftPanel" runat="server">
            <uc1:Menu_Bar ID="Menu_Bar1" runat="server" />
        </div>
        <div id="RightPanel" runat="server">
             <uc1:QuickLinks ID="QuickLinksid" runat="server" />
            <div class="clear">
            </div>
            <div id="div_register_User">
                <h2 class="form_heading">
                    My Current House
                </h2>
                <div id="formwrapper">
                    <uc3:Current_House_Menu_Bar ID="Current_House_Menu_Barid" runat="server" />
                    <div id="forminner">
                        <h1>
                            Update Current House - Landlord Info</h1>
                        <div id="LandlordInfo" runat="server">
                            <asp:HiddenField ID="hdLandloadinfoStatus" runat="server" />
                            <asp:HiddenField ID="hdLandloadId" runat="server" />
                            <asp:HiddenField ID="hdUserID" runat="server" />
                            <asp:HiddenField ID="hdHouseId" runat="server" />
                            <asp:HiddenField ID="hdnStepNumber" runat="server" Value="0" />
                            <p id="P1" runat="server">
                                <asp:Label ID="Label4" runat="server" AssociatedControlID="lbEmail" CssClass="form_label">E-mail:</asp:Label>
                                <asp:Label ID="lbEmail" runat="server" CssClass="form_label"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="LabelName" runat="server" AssociatedControlID="lbName" CssClass="form_label">Name:</asp:Label>
                                <asp:Label ID="lbName" runat="server" CssClass="form_label"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="Label6" runat="server" AssociatedControlID="lbMobile" CssClass="form_label">Best Contact #:</asp:Label>
                                <asp:Label ID="lbMobile" runat="server" CssClass="form_label"></asp:Label>
                            </p>
                        </div>
                        <div id="LandloadEdit" runat="server" visible="false">
                            <h1>
                                Landlord Info - Edit</h1>
                            <asp:ValidationSummary ID="ValidationGroup1" runat="server" CssClass="failureNotification"
                                ValidationGroup="ValidationGroupLandload1" />
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="failureNotification"
                                ValidationGroup="ValidationGroupLandload2" />
                            <p id="P2" runat="server">
                                <asp:Label ID="Label5" runat="server" AssociatedControlID="LandloadEmail" CssClass="form_label">E-mail:</asp:Label>
                                <asp:TextBox ID="LandloadEmail" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="LandloadEmail"
                                    CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required."
                                    ValidationGroup="ValidationGroupLandload1">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    ControlToValidate="LandloadEmail" CssClass="failureNotification" ValidationGroup="ValidationGroupLandload1"
                                    ErrorMessage="Enter valid email address." ToolTip="Enter valid email address.">* </asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="LandloadEmail"
                                    CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required."
                                    ValidationGroup="ValidationGroupLandload1">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    ControlToValidate="LandloadEmail" CssClass="failureNotification" ErrorMessage="Enter valid email address."
                                    ToolTip="Enter valid email address." ValidationGroup="ValidationGroupLandload1">* </asp:RegularExpressionValidator>
                            </p>
                            <p id="P3" runat="server">
                                <asp:Label ID="LandloadLabelmessage" runat="server" Text=""></asp:Label></p>
                            <p>
                                <asp:Button ID="ButtonVerifyLandload" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                                    Text="Verify Landload" ValidationGroup="ValidationGroupLandload1" OnClick="ButtonVerifyLandload_Click" />
                            </p>
                            <p>
                                <asp:Label ID="Label8" runat="server" AssociatedControlID="LandloadFirstName" CssClass="form_label">First Name:</asp:Label>
                                <asp:TextBox ID="LandloadFirstName" runat="server" CssClass="textEntry textbox_w1"
                                    Enabled="false"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="LandloadFirstName"
                                    CssClass="failureNotification" ErrorMessage="First Name is required." ToolTip="First Name is required."
                                    ValidationGroup="ValidationGroupLandload2">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="Label9" runat="server" AssociatedControlID="LandloadMiddleName" CssClass="form_label">Middle Name:</asp:Label>
                                <asp:TextBox ID="LandloadMiddleName" runat="server" CssClass="textEntry textbox_w1"
                                    Enabled="false"></asp:TextBox>
                            </p>
                            <p>
                                <asp:Label ID="Label10" runat="server" AssociatedControlID="LandloadLastName" CssClass="form_label">Last Name:</asp:Label>
                                <asp:TextBox ID="LandloadLastName" runat="server" CssClass="textEntry textbox_w1"
                                    Enabled="false"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="LandloadLastName"
                                    CssClass="failureNotification" ErrorMessage="Last Name is required." ToolTip="Last Name is required."
                                    ValidationGroup="ValidationGroupLandload2">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="Label11" runat="server" AssociatedControlID="LandloadMobileArea" CssClass="form_label">Best Contact #:</asp:Label>
                                <asp:TextBox ID="LandloadMobileArea" runat="server" CssClass="MobiletextEntry" MaxLength="3"
                                    Enabled="false"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="LandloadMobileArea"
                                    CssClass="failureNotification" ErrorMessage="Area code  is required." ToolTip="Area code is required."
                                    ValidationGroup="ValidationGroupLandload2">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" Operator="DataTypeCheck"
                                    Type="Integer" CssClass="failureNotification" ErrorMessage="Invalid Area code."
                                    ToolTip="Invalid Area code." ControlToValidate="LandloadMobileArea" ValidationGroup="ValidationGroupLandload2">*</asp:CompareValidator>
                                <asp:TextBox ID="LandloadMobile1" runat="server" CssClass="MobiletextEntry" MaxLength="3"
                                    Enabled="false"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="LandloadMobile1"
                                    CssClass="failureNotification" ErrorMessage="Prefix is required." ToolTip="Prefix is required."
                                    ValidationGroup="ValidationGroupLandload2">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator5" runat="server" Operator="DataTypeCheck"
                                    Type="Integer" CssClass="failureNotification" ErrorMessage="Invalid Prefix."
                                    ToolTip="Invalid Prefix." ControlToValidate="LandloadMobile1" ValidationGroup="ValidationGroupLandload2">*</asp:CompareValidator>
                                <asp:TextBox ID="LandloadMobile2" runat="server" CssClass="MobiletextEntry" MaxLength="4"
                                    Enabled="false"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="LandloadMobile2"
                                    CssClass="failureNotification" ErrorMessage="Line number is required." ToolTip="Line number is required."
                                    ValidationGroup="ValidationGroupLandload2">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator6" runat="server" Operator="DataTypeCheck"
                                    Type="Integer" CssClass="failureNotification" ErrorMessage="Invalid Line number."
                                    ToolTip="Invalid Line number." ControlToValidate="LandloadMobile2" ValidationGroup="ValidationGroupLandload2">*</asp:CompareValidator>
                            </p>

                            <p id="HouseDetails" runat="server" visible="false">
                       <h1>
                                House Details</h1>
                      </p>
                            
                            
                            <p id="House_Search" runat="server" visible="false">
                                <asp:Label ID="HouseLabel" runat="server" AssociatedControlID="DrpHouse" CssClass="form_label">House Owned by Landload:</asp:Label>
                                <asp:DropDownList ID="DrpHouse" runat="server" CssClass="dropDownEntry" OnSelectedIndexChanged="DrpHouse_SelectedIndexChanged"
                                    AutoPostBack="true">
                                </asp:DropDownList>
                            </p> 
                            <p id="RentalAddressMessageId" runat="server" visible="false">
                                <asp:Label ID="LabelRentalAddressMessage" runat="server" CssClass="form_label"></asp:Label>
                            </p>
                            <p id="RentalAddressId" runat="server" visible="false">
                                <asp:Label ID="Label7" runat="server" AssociatedControlID="RentalAddress" CssClass="form_label">Rental Address:</asp:Label>
                                <asp:TextBox ID="RentalAddress" runat="server" CssClass="textEntry textbox_w1" Enabled="false"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AddressRequiredField" runat="server" ControlToValidate="RentalAddress"
                                    CssClass="failureNotification" ErrorMessage="Address is required." ToolTip="Address is required."
                                    ValidationGroup="ValidationGroupLandload2">*</asp:RequiredFieldValidator>
                            </p>
                            <p id="RentalCityId" runat="server" visible="false">
                                <asp:Label ID="Label12" runat="server" AssociatedControlID="RentalCity" CssClass="form_label">City:</asp:Label>
                                <asp:TextBox ID="RentalCity" runat="server" CssClass="textEntry textbox_w2" Enabled="false"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="CityRequiredField" runat="server" ControlToValidate="RentalCity"
                                    CssClass="failureNotification" ErrorMessage="City is required." ToolTip="City is required."
                                    ValidationGroup="ValidationGroupLandload2">*</asp:RequiredFieldValidator>
                            </p>
                            <p id="DrpstateId" runat="server" visible="false">
                                <asp:Label ID="Label13" runat="server" AssociatedControlID="Drpstate" CssClass="form_label">State:</asp:Label>
                                <asp:DropDownList ID="Drpstate" runat="server" CssClass="dropDownEntry" Enabled="false">
                                </asp:DropDownList>
                            </p>
                            <p id="RentalZipId" runat="server" visible="false">
                                <asp:Label ID="Label14" runat="server" AssociatedControlID="RentalZip" CssClass="form_label">Zip:</asp:Label>
                                <asp:TextBox ID="RentalZip" runat="server" CssClass="textEntry textbox_w3" MaxLength="5"
                                    Enabled="false"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ZipRequiredField" runat="server" ControlToValidate="RentalZip"
                                    CssClass="failureNotification" ErrorMessage="Zip is required." ToolTip="Zip is required."
                                    ValidationGroup="ValidationGroupLandload2">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Zip must be 5 numbers"
                                    ControlToValidate="RentalZip" CssClass="failureNotification" ValidationExpression="^[0-9]{5}$"
                                    ValidationGroup="ValidationGroupLandload2">*</asp:RegularExpressionValidator>
                            </p>

                              <asp:Button ID="ButtonLandload" runat="server" Width="150px" CssClass="actionbutton"
                                CommandName="MoveNext" Text="Save" ValidationGroup="ValidationGroupLandload2"
                                OnClick="ButtonLandload_Click" />
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
