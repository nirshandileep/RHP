<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_School_info.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_School_info" %>
<div id="div_register_User">
    <h2 class="form_heading">
        Student School info
    </h2>
   
    <div id="formwrapper">
        <asp:ValidationSummary ID="SaveSchoolValidationSummary" runat="server" CssClass="failureNotification"
            ValidationGroup="SaveSchoolValidationGroup" />
        <div id="forminner">
            <asp:HiddenField ID="HiddenFieldSchoolId" runat="server" />
            <p>
                <asp:Label ID="LabelSchoolName" runat="server" AssociatedControlID="DrpSchoolName"
                    CssClass="form_label">School Name:</asp:Label>
                <asp:DropDownList ID="DrpSchoolName" runat="server" CssClass="dropDownEntry">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="SchoolNameRequired" runat="server" ErrorMessage="Please select School"
                    CssClass="failureNotification" ControlToValidate="DrpSchoolName" ValidationGroup="SaveSchoolValidationGroup"
                    InitialValue="-1">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="LabelYear" runat="server" AssociatedControlID="DRPYear" CssClass="form_label">Year:</asp:Label>
                <asp:DropDownList ID="DRPYear" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="YearRequired" runat="server" ErrorMessage="Please select Year"
                    CssClass="failureNotification" ControlToValidate="DRPYear" ValidationGroup="SaveSchoolValidationGroup"
                    InitialValue="-1">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="LabelStatus" runat="server" AssociatedControlID="Status" CssClass="form_label">Status:</asp:Label>
                <asp:DropDownList ID="Status" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="StatusRequired" runat="server" ErrorMessage="Please select Status"
                    CssClass="failureNotification" ControlToValidate="Status" ValidationGroup="SaveSchoolValidationGroup"
                    InitialValue="-1">*</asp:RequiredFieldValidator>
            </p>
           <%-- <p>
                <asp:Label ID="LabelLandLoadName" runat="server" AssociatedControlID="LandLoadName"
                    CssClass="form_label">Land load Name:</asp:Label>
                <asp:TextBox ID="LandLoadName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="SLandLoadNameRequiredFieldValidator" runat="server"
                    ControlToValidate="LandLoadName" CssClass="failureNotification" ErrorMessage="Land load Name is required."
                    ToolTip="Land load Name is required." ValidationGroup="SaveSchoolValidationGroup">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="LabelLandLoadPlace" runat="server" AssociatedControlID="LandLoadPlace"
                    CssClass="form_label">Land Load Place:</asp:Label>
                <asp:TextBox ID="LandLoadPlace" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="LandLoadPlaceRequiredFieldValidator" runat="server"
                    ControlToValidate="LandLoadPlace" CssClass="failureNotification" ErrorMessage="Land Load Place is required."
                    ToolTip="Land Load Place is required." ValidationGroup="SaveSchoolValidationGroup">*</asp:RequiredFieldValidator>
            </p>--%>
        </div>
        <p class="submitButton">
            <asp:Button ID="SaveSchoolButton" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                Text="Save" ValidationGroup="SaveSchoolValidationGroup" 
                onclick="SaveSchoolButton_Click" />
            <asp:Label ID="lblError" runat="server" CssClass="failureNotification" Text=""></asp:Label>
        </p>
    </div>
</div>
