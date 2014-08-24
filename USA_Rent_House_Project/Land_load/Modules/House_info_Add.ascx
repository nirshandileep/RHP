<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="House_info_Add.ascx.cs"
    Inherits="USA_Rent_House_Project.Land_load.Modules.House_info_Add" %>
<div id="div_register_User">
    <h2 class="form_heading">
        Land Lord House / Property info
    </h2>
    <asp:ValidationSummary ID="PropertyValidationSummary" runat="server" CssClass="failureNotification"
        ValidationGroup="PropertyValidationGroup" />
    <div id="formwrapper">
        <div id="forminner">
            <p>
                <asp:Label ID="AddressLabel" runat="server" AssociatedControlID="Address" CssClass="form_label">Rental Address:</asp:Label>
                <asp:TextBox ID="Address" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="AddressRequiredField" runat="server" ControlToValidate="Address"
                    CssClass="failureNotification" ErrorMessage="Address is required." ToolTip="Address is required."
                    ValidationGroup="PropertyValidationGroup">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="CityLabel" runat="server" AssociatedControlID="City" CssClass="form_label">Suburb:</asp:Label>
                <asp:TextBox ID="City" runat="server" CssClass="textEntry textbox_w2"></asp:TextBox>
                <asp:RequiredFieldValidator ID="CityRequiredField" runat="server" ControlToValidate="City"
                    CssClass="failureNotification" ErrorMessage="City is required." ToolTip="City is required."
                    ValidationGroup="PropertyValidationGroup">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="StateLabel" runat="server" AssociatedControlID="Drpstate" CssClass="form_label">State:</asp:Label>
                <asp:DropDownList ID="Drpstate" runat="server" CssClass="dropDownEntry">
                </asp:DropDownList>
            </p>
            <p>
                <asp:Label ID="ZipLabel" runat="server" AssociatedControlID="Zip" CssClass="form_label">Zip:</asp:Label>
                <asp:TextBox ID="Zip" runat="server" CssClass="textEntry textbox_w3" MaxLength="4"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ZipRequiredField" runat="server" ControlToValidate="Zip"
                    CssClass="failureNotification" ErrorMessage="Zip is required." ToolTip="Zip is required."
                    ValidationGroup="PropertyValidationGroup">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Zip must be 4 numbers"
                    ControlToValidate="Zip" CssClass="failureNotification" ValidationExpression="^[0-9]{4}$"
                    ValidationGroup="PropertyValidationGroup">*</asp:RegularExpressionValidator>
            </p>
            <p>
                <asp:Label ID="LabelYear" runat="server" AssociatedControlID="DRPYear" CssClass="form_label">Year House build:</asp:Label>
                <asp:DropDownList ID="DRPYear" runat="server">
                </asp:DropDownList>
            </p>
            <p>
                <asp:Label ID="LabelBedRooms" runat="server" AssociatedControlID="DrpBedRooms" CssClass="form_label">Bed Rooms:</asp:Label>
                <asp:DropDownList ID="DrpBedRooms" runat="server">
                </asp:DropDownList>
            </p>
            <p>
                <asp:Label ID="LabelBathRooms" runat="server" AssociatedControlID="DrpBathRooms"
                    CssClass="form_label">Bath Rooms:</asp:Label>
                <asp:DropDownList ID="DrpBathRooms" runat="server">
                </asp:DropDownList>
            </p>
            <p>
                <asp:Label ID="LabelLotSQFootage" runat="server" AssociatedControlID="LotSQFootage"
                    CssClass="form_label">Lot SQ Footage:</asp:Label>
                <asp:TextBox ID="LotSQFootage" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="LotSQFootageRequiredFieldValidator" runat="server"
                    ControlToValidate="LotSQFootage" CssClass="failureNotification" ErrorMessage="Lot SQ Footage is required."
                    ToolTip="Lot SQ Footage is required." ValidationGroup="PropertyValidationGroup">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="LabelTotalSQFootage" runat="server" AssociatedControlID="TotalSQFootage"
                    CssClass="form_label">Total SQ Footage:</asp:Label>
                <asp:TextBox ID="TotalSQFootage" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTotalSQFootage" runat="server"
                    ControlToValidate="TotalSQFootage" CssClass="failureNotification" ErrorMessage="Total SQ Footage is required."
                    ToolTip="total SQ Footage is required." ValidationGroup="PropertyValidationGroup">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="LabelUtilities" runat="server" AssociatedControlID="Utilities" CssClass="form_label">Utilities included in rent:</asp:Label>
                <asp:TextBox ID="Utilities" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUtilities" runat="server" ControlToValidate="Utilities"
                    CssClass="failureNotification" ErrorMessage="Utilities included is required."
                    ToolTip="Utilities included is required." ValidationGroup="PropertyValidationGroup">*</asp:RequiredFieldValidator>
            </p>
            <asp:HiddenField ID="hdnLandLordId" runat="server" />
            <asp:HiddenField ID="hdnHouseId" runat="server" />
            <p class="submitButton">
                <asp:Button ID="CreatePropertyButton" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                    Text="Create Property" ValidationGroup="PropertyValidationGroup" OnClick="CreatePropertyButton_Click" />
            </p>
        </div>
    </div>
</div>
