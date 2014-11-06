<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Current_House_Rental_Address_info.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Current_House_Rental_Address_info" %>
<h1>
    Rental Address</h1>
<asp:ValidationSummary ID="ValidationGroup1" runat="server" CssClass="failureNotification"
    ValidationGroup="ValidationGroup2" />

    <div id="HouseSearch" runat="server">
        <p>
            <asp:Label ID="HouseLabel" runat="server" AssociatedControlID="DrpHouse" CssClass="form_label">House owned by landload:</asp:Label>
            <asp:DropDownList ID="DrpHouse" runat="server" CssClass="dropDownEntry" 
                onselectedindexchanged="DrpHouse_SelectedIndexChanged" AutoPostBack="true">
            </asp:DropDownList>
            <br />
            <asp:CheckBox ID="chknotavailable" runat="server" Text="Not Available" AutoPostBack="true"
                OnCheckedChanged="chknotavailable_CheckedChanged" />
        </p>

<h1>
    OR</h1>
    </div>
<p>
    <asp:Label ID="AddressLabel" runat="server" AssociatedControlID="Address" CssClass="form_label">Rental Address:</asp:Label>
    <asp:TextBox ID="Address" runat="server" CssClass="textEntry textbox_w1" Enabled="false"></asp:TextBox>
    <asp:RequiredFieldValidator ID="AddressRequiredField" runat="server" ControlToValidate="Address"
        CssClass="failureNotification" ErrorMessage="Address is required." ToolTip="Address is required."
        ValidationGroup="ValidationGroup2">*</asp:RequiredFieldValidator>
</p>
<p>
    <asp:Label ID="CityLabel" runat="server" AssociatedControlID="City" CssClass="form_label">City:</asp:Label>
    <asp:TextBox ID="City" runat="server" CssClass="textEntry textbox_w2" Enabled="false"></asp:TextBox>
    <asp:RequiredFieldValidator ID="CityRequiredField" runat="server" ControlToValidate="City"
        CssClass="failureNotification" ErrorMessage="City is required." ToolTip="City is required."
        ValidationGroup="ValidationGroup2">*</asp:RequiredFieldValidator>
</p>
<p>
    <asp:Label ID="StateLabel" runat="server" AssociatedControlID="Drpstate" CssClass="form_label">State:</asp:Label>
      <asp:DropDownList ID="Drpstate" runat="server" CssClass="dropDownEntry" Enabled="false">
                </asp:DropDownList>
</p>
<p>
    <asp:Label ID="ZipLabel" runat="server" AssociatedControlID="Zip" CssClass="form_label">Zip:</asp:Label>
    <asp:TextBox ID="Zip" runat="server" CssClass="textEntry textbox_w3" MaxLength="5"
        Enabled="false"></asp:TextBox>
    <asp:RequiredFieldValidator ID="ZipRequiredField" runat="server" ControlToValidate="Zip"
        CssClass="failureNotification" ErrorMessage="Zip is required." ToolTip="Zip is required."
        ValidationGroup="ValidationGroup2">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Zip must be 5 numbers"
        ControlToValidate="Zip" CssClass="failureNotification" ValidationExpression="^[0-9]{5}$"
        ValidationGroup="ValidationGroup2">*</asp:RegularExpressionValidator>
</p>

<p>
   
    <asp:Label ID="lblError" runat="server" CssClass="failureNotification" Text=""></asp:Label>
    <asp:HiddenField ID="hdnLandlordId" runat="server" />
    <asp:HiddenField ID="hdHouseId" runat="server" />
</p>
