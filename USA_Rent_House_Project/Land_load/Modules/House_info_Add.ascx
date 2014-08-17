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
                <asp:Label ID="LabelBathRooms" runat="server" AssociatedControlID="DrpBathRooms" CssClass="form_label">Bath Rooms:</asp:Label>
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
           
        
        </div>
    </div>
     <p class="submitButton">
            <asp:Button ID="CreatePropertyButton" runat="server" 
                CssClass="actionbutton" CommandName="MoveNext"
                Text="Create Property" ValidationGroup="PropertyValidationGroup" 
                 onclick="CreatePropertyButton_Click"  />
            <asp:HiddenField ID="hdnLandLordId" runat="server" />
            <asp:HiddenField ID="hdnHouseId" runat="server" />
        </p>
</div>
