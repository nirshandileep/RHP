<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PropertyView.ascx.cs"
    Inherits="USA_Rent_House_Project.Administrator.Modules.PropertyView" %>
<div id="div_Property_View">
    <h2 class="form_heading">
        Land Load House / Property info
    </h2>
    <div id="formwrapper">
        <div id="forminner">
            <p>
                <asp:Label ID="AddressLabel" runat="server" AssociatedControlID="AddressLabelID"
                    CssClass="form_label">Rental Address:</asp:Label>
                <asp:Label ID="AddressLabelID" runat="server" CssClass="form_label"></asp:Label>
            </p>
            <p>
                <asp:Label ID="CityLabel" runat="server" AssociatedControlID="CityLabelID" CssClass="form_label">Suburb:</asp:Label>
                <asp:Label ID="CityLabelID" runat="server" CssClass="form_label"></asp:Label>
            </p>
            <p>
                <asp:Label ID="StateLabel" runat="server" AssociatedControlID="StateLabelID" CssClass="form_label">State:</asp:Label>
                <asp:Label ID="StateLabelID" runat="server" CssClass="form_label"></asp:Label>
            </p>
            <p>
                <asp:Label ID="ZipLabel" runat="server" AssociatedControlID="ZipLabelID" CssClass="form_label">Zip:</asp:Label>
                <asp:Label ID="ZipLabelID" runat="server" CssClass="form_label"></asp:Label>
            </p>
            <p>
                <asp:Label ID="LabelYear" runat="server" AssociatedControlID="YearLabelID" CssClass="form_label">Year House build:</asp:Label>
                <asp:Label ID="YearLabelID" runat="server" CssClass="form_label"></asp:Label>
            </p>
            <p>
                <asp:Label ID="LabelBedRooms" runat="server" AssociatedControlID="BedRoomsLabelID"
                    CssClass="form_label">Bed Rooms:</asp:Label>
                <asp:Label ID="BedRoomsLabelID" runat="server" CssClass="form_label"></asp:Label>
            </p>
            <p>
                <asp:Label ID="LabelBathRooms" runat="server" AssociatedControlID="BathRoomsLabelID"
                    CssClass="form_label">Bath Rooms:</asp:Label>
                <asp:Label ID="BathRoomsLabelID" runat="server" CssClass="form_label"></asp:Label>
            </p>
            <p>
                <asp:Label ID="LabelLotSQFootage" runat="server" AssociatedControlID="LotSQFootageLabelID"
                    CssClass="form_label">Lot SQ Footage:</asp:Label>
                <asp:Label ID="LotSQFootageLabelID" runat="server" CssClass="form_label"></asp:Label>
            </p>
            <p>
                <asp:Label ID="LabelTotalSQFootage" runat="server" AssociatedControlID="TotalSQFootageLabelID"
                    CssClass="form_label">Total SQ Footage:</asp:Label>
                <asp:Label ID="TotalSQFootageLabelID" runat="server" CssClass="form_label"></asp:Label>
            </p>
            <p>
                <asp:Label ID="LabelUtilities" runat="server" AssociatedControlID="UtilitiesLabelID"
                    CssClass="form_label">Utilities included in rent:</asp:Label>
                <asp:Label ID="UtilitiesLabelID" runat="server" CssClass="form_label"></asp:Label>
            </p>
            <p>
                Options / Features</p>
            <asp:CheckBoxList ID="OptionList" runat="server" RepeatColumns="2">
                <asp:ListItem> Cealing fans   </asp:ListItem>
                <asp:ListItem> Sunroom   </asp:ListItem>
                <asp:ListItem> mother in low quartes   </asp:ListItem>
                <asp:ListItem> Washer , dryer   </asp:ListItem>
                <asp:ListItem> laundery room   </asp:ListItem>
                <asp:ListItem> street parking   </asp:ListItem>
                <asp:ListItem> bike rack   </asp:ListItem>
                <asp:ListItem> motion censor light   </asp:ListItem>
                <asp:ListItem> Second fridge </asp:ListItem>
                <asp:ListItem> wireless internet </asp:ListItem>
                <asp:ListItem> BBQ </asp:ListItem>
                <asp:ListItem> Back yard </asp:ListItem>
                <asp:ListItem> Pool </asp:ListItem>
                <asp:ListItem> Hot tab </asp:ListItem>
                <asp:ListItem> electric stove </asp:ListItem>
                <asp:ListItem> Oven </asp:ListItem>
                <asp:ListItem> Alarm System </asp:ListItem>
                <asp:ListItem> Sana </asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <br />
            Garage :<br />
            <asp:CheckBox ID="chkAttachedgarage" runat="server" Text="Attached garage" />
            <asp:DropDownList ID="drpAttachedgarage" runat="server">
                <asp:ListItem>1</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:CheckBox ID="chkdeattachedgarage" runat="server" Text="deattached garage" />
            <asp:DropDownList ID="drldeattachedgarage" runat="server">
                <asp:ListItem>1</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:CheckBox ID="chkdrivewayparking" runat="server" Text="drive way parking" />
            <asp:DropDownList ID="drpdrivewayparking" runat="server">
                <asp:ListItem>1</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:CheckBox ID="chkFurnishedrooms" runat="server" Text=" Furnished rooms :" />
            <asp:CheckBoxList ID="chkFurnishedroomoptions" runat="server" RepeatColumns="2">
                <asp:ListItem> bed</asp:ListItem>
                <asp:ListItem> chair</asp:ListItem>
                <asp:ListItem> dresser</asp:ListItem>
                <asp:ListItem> lamp</asp:ListItem>
                <asp:ListItem> cooling fans</asp:ListItem>
                <asp:ListItem> fans</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <asp:CheckBox ID="chkFurnishedkitchen" runat="server" Text=" Furnished kitchen :" />
            <asp:CheckBoxList ID="chkFurnishedkitchenOptions" runat="server" RepeatColumns="2">
                <asp:ListItem> toster</asp:ListItem>
                <asp:ListItem> plates</asp:ListItem>
                <asp:ListItem> mini oven</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <asp:CheckBox ID="chkFurnishedlivingspace" runat="server" Text=" Furnished living space :" />
            <asp:CheckBoxList ID="chkFurnishedlivingspaceOptions" runat="server" RepeatColumns="2">
                <asp:ListItem> TV</asp:ListItem>
                <asp:ListItem> Radio</asp:ListItem>
                <asp:ListItem> Couch</asp:ListItem>
                <asp:ListItem> lamp</asp:ListItem>
                <asp:ListItem> fire place</asp:ListItem>
                <asp:ListItem> table chairs</asp:ListItem>
            </asp:CheckBoxList>
        </div>
    </div>
</div>
