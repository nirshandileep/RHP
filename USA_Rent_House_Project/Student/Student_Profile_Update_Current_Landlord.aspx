<%@ Page Title="Student Profile Update Current Landlord" Language="C#" MasterPageFile="~/Master_Pages/Student.Master" AutoEventWireup="true" CodeBehind="Student_Profile_Update_Current_Landlord.aspx.cs" Inherits="USA_Rent_House_Project.Student.Student_Profile_Update_Current_Landlord" %>




<%@ Register Src="Modules/Student_Profile_Header.ascx" TagName="Student_Profile_Header"
    TagPrefix="uc1" %>
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
            <asp:HyperLink ID="HyperLinkPublicView" CssClass="loginlinks" Style="float: right"
                runat="server">Public view</asp:HyperLink>
            <div id="Search" class="floatright" runat="server">
                <asp:HyperLink ID="SearchStudent" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=s"
                    runat="server">Search for Student</asp:HyperLink>
                <asp:HyperLink ID="SearchHouse" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=l"
                    runat="server">Search for House</asp:HyperLink>
            </div>
            <div class="clear">
                
            </div>
            <div id="div_register_User">
                <h2 class="form_heading">
                    My Current House
                </h2>
                <div id="formwrapper">
                    <p>
                        <asp:HyperLink ID="CreateCurrentHouseButton" runat="server" Visible="false" CssClass="loginlinks"
                            NavigateUrl="~/Student/Student_Profile_Current_House.aspx">Create current house</asp:HyperLink>&nbsp;
                        <asp:HyperLink ID="ViewCurrentHouseButton" runat="server" Visible="false" CssClass="loginlinks"
                            NavigateUrl="~/Student/Student_Profile_Current_House_Details.aspx">View current house</asp:HyperLink>&nbsp;
                        <asp:HyperLink ID="UpdateCurrentHouseButton" runat="server" Visible="false" CssClass="loginlinks"
                            NavigateUrl="~/Student/Student_Profile_Update_Current_House.aspx">Update current house</asp:HyperLink>
                        &nbsp;
                        <asp:HyperLink ID="LeaveCurrentHouseButton" runat="server" CssClass="loginlinks" Visible="false"
                            NavigateUrl="~/Student/Student_Profile_Leave_Current_House.aspx">Leave current house</asp:HyperLink>
                    </p>
                    <div id="forminner">
                        <h1>
                            Update Current House -  Landlord Info</h1>

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
                            <p>
                            <asp:Button ID="ButtonLandload" runat="server" Width="150px" CssClass="actionbutton"
                                    CommandName="MoveNext" Text="Save" 
                                    ValidationGroup="ValidationGroupLandload2" onclick="ButtonLandload_Click" />
                            </p>
                        </div>
                       
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

