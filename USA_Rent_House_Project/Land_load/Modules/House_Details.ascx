<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="House_Details.ascx.cs"
    Inherits="USA_Rent_House_Project.Land_load.Modules.House_Details" %>
<div id="formwrapper">
    <div id="forminner">
        <h2 class="form_heading">
            House Details
        </h2>
        <div id="DivHouseDetails" runat="server">
            <p>
                <asp:Label ID="AddressLabel" runat="server" AssociatedControlID="Address" CssClass="form_label">Rental Address:</asp:Label>
                <asp:Label ID="Address" runat="server" CssClass="form_label"></asp:Label>
            </p>
            <p>
                <asp:Label ID="CityLabel" runat="server" AssociatedControlID="City" CssClass="form_label">City:</asp:Label>
                <asp:Label ID="City" runat="server" CssClass="form_label"></asp:Label>
            </p>
            <p>
                <asp:Label ID="StateLabel" runat="server" AssociatedControlID="state" CssClass="form_label">State:</asp:Label>
                <asp:Label ID="state" runat="server" CssClass="form_label"></asp:Label>
            </p>
            <p>
                <asp:Label ID="ZipLabel" runat="server" AssociatedControlID="Zip" CssClass="form_label">Zip:</asp:Label>
                <asp:Label ID="Zip" runat="server" AssociatedControlID="Zip" CssClass="form_label"></asp:Label>
            </p>
            <p>
                <asp:Label ID="LabelYear" runat="server" AssociatedControlID="Year" CssClass="form_label">Year House Build:</asp:Label>
                <asp:Label ID="Year" runat="server" CssClass="form_label"></asp:Label>
            </p>
            <p>
                <asp:Label ID="LabelBedRooms" runat="server" AssociatedControlID="BedRooms" CssClass="form_label">Bedrooms:</asp:Label>
                <asp:Label ID="BedRooms" runat="server" CssClass="form_label"></asp:Label>
            </p>
            <p>
                <asp:Label ID="LabelBathRooms" runat="server" AssociatedControlID="BathRooms" CssClass="form_label">Bathrooms:</asp:Label>
                <asp:Label ID="BathRooms" runat="server" CssClass="form_label"></asp:Label>
            </p>
            <p>
                <asp:Label ID="LabelLotSQFootage" runat="server" AssociatedControlID="LotSQFootage"
                    CssClass="form_label">Lot SQ Footage:</asp:Label>
                <asp:Label ID="LotSQFootage" runat="server" CssClass="form_label"></asp:Label>
            </p>
            <p>
                <asp:Label ID="LabelTotalSQFootage" runat="server" AssociatedControlID="TotalSQFootage"
                    CssClass="form_label">Total SQ Footage:</asp:Label>
                <asp:Label ID="TotalSQFootage" runat="server" CssClass="form_label"></asp:Label>
            </p>
            <p>
                <asp:Label ID="LabelUtilities" runat="server" AssociatedControlID="Utilities" CssClass="form_label">Utilities Included in Rent:</asp:Label>
                <asp:Label ID="Utilities" runat="server" CssClass="form_label"></asp:Label>
            </p>
            <asp:HiddenField ID="hdnLandLordId" runat="server" />
            <asp:HiddenField ID="hdnHouseId" runat="server" />
        </div>
        <br />
        <div id="divHouseOptions" runat="server">
            <br />
            <table style="width: 900px">
                <tr valign="top">
                    <td>
                        <h2 class="form_heading">
                            Options / Features
                        </h2>
                        <asp:BulletedList ID="Features" runat="server">
                        </asp:BulletedList>
                    </td>
                    <td>
                        <h2 class="form_heading">
                            Furnished Rooms :</h2>
                        <asp:BulletedList ID="Furnishedrooms" runat="server">
                        </asp:BulletedList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h2 class="form_heading">
                            Furnished Kitchen :</h2>
                        <asp:BulletedList ID="Furnishedkitchen" runat="server">
                        </asp:BulletedList>
                    </td>
                    <td>
                        <h2 class="form_heading">
                            Furnished Living Space :</h2>
                        <asp:BulletedList ID="Furnishedlivingspace" runat="server">
                        </asp:BulletedList>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>
