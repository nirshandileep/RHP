<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="House_info_Add.ascx.cs"
    Inherits="USA_Rent_House_Project.Land_load.Modules.House_info_Add" %>
<div id="div_register_User">
    <h2 class="form_heading">
        Land Load House / Property info
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
