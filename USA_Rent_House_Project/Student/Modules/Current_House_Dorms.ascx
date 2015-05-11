<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Current_House_Dorms.ascx.cs"
    Inherits="USA_Rent_House_Project.Current_House_Dorms" %>
<div id="forminner">
    <h2>
        <asp:Label ID="LabelHousingTypeHeader" runat="server" Text=""></asp:Label></h2>
    <div id="Step1" runat="server">
        <p>
            <asp:Label ID="LabelRoom" runat="server" AssociatedControlID="DrpBaseHouse" CssClass="form_label"></asp:Label>
            <asp:DropDownList ID="DrpBaseHouse" runat="server" CssClass="dropDownEntry">
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="DrpBaseHouse"
                Display="Dynamic" ErrorMessage="Select an option" ForeColor="#CC0000" Operator="NotEqual"
                Type="Integer" ValidationGroup="vgSaveAndContinue" ValueToCompare="-1"></asp:CompareValidator>
        </p>
        <div class="buttons">
            <asp:LinkButton ID="LBSelectDorm" CssClass="homelargebuttons" runat="server" OnClick="LBSelectDorm_Click"
                ValidationGroup="vgSaveAndContinue">Save and Continue</asp:LinkButton>
        </div>
    </div>
    <div id="DromDetails" runat="server" visible="false">
        <p>
            <asp:Label ID="ContactNameLabel" runat="server" AssociatedControlID="ContactName"
                CssClass="form_label">Contact Name:</asp:Label>
            <asp:Label ID="ContactName" runat="server" CssClass="form_label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="PhoneNumberLabel" runat="server" AssociatedControlID="PhoneNumber"
                CssClass="form_label">Phone Number:</asp:Label>
            <asp:Label ID="PhoneNumber" runat="server" CssClass="form_label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="AddressLabel" runat="server" AssociatedControlID="Address" CssClass="form_label">Address:</asp:Label>
            <asp:Label ID="Address" runat="server" CssClass="form_label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="CityLabel" runat="server" AssociatedControlID="City" CssClass="form_label">City:</asp:Label>
            <asp:Label ID="City" runat="server" CssClass="form_label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="StateLabel" runat="server" AssociatedControlID="State" CssClass="form_label">State:</asp:Label>
            <asp:Label ID="State" runat="server" CssClass="form_label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="ZipCodeLabel" runat="server" AssociatedControlID="ZipCode" CssClass="form_label">Zip Code:</asp:Label>
            <asp:Label ID="ZipCode" runat="server" CssClass="form_label"></asp:Label>
        </p>
    </div>
    <div id="Step2" runat="server" visible="false">
        <p id="IDDromRoomNumber" runat="server">
            <asp:Label ID="LabelDromRoom" runat="server" AssociatedControlID="DrpDromRooms" CssClass="form_label">My Room Number:</asp:Label>
            <asp:DropDownList ID="DrpDromRooms" runat="server" CssClass="dropDownEntry">
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="DrpDromRooms"
                Display="Dynamic" ErrorMessage="Select an option" ForeColor="#CC0000" 
                Operator="NotEqual" ValidationGroup="vgVerify" ValueToCompare="-1"></asp:CompareValidator>
        </p>
        <div class="buttons" id="VerifyDromRoomNumber" runat="server">
            <asp:LinkButton ID="LBSelectRoom" CssClass="homelargebuttons" runat="server" OnClick="LBSelectRoom_Click"
                ValidationGroup="vgVerify">Verify</asp:LinkButton>
        </div>
    </div>
    <div id="Step3" runat="server" visible="false">
        <p id="IDSelectedDromRoomNumber" runat="server">
            <asp:Label ID="RoomNumberLabel" runat="server" AssociatedControlID="RoomNumber" CssClass="form_label">My Room Number:</asp:Label>
            <asp:Label ID="RoomNumber" runat="server" CssClass="form_label"></asp:Label>
        </p>
        <p>
            Current Roommates
        </p>
        <asp:GridView ID="GridviewRoommatelist" runat="server" CssClass="Grid" AlternatingRowStyle-CssClass="alt"
            PagerStyle-CssClass="pgr" Width="600px" AutoGenerateColumns="False">
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
            <Columns>
                <asp:TemplateField Visible="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="RemAudition" runat="server" OnClick="RemoveRoommate_Click" ForeColor="Black">Remove</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                <asp:BoundField DataField="MiddleName" HeaderText="Middle Name" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                <asp:BoundField DataField="PersonalEmail" HeaderText="Email" />
                <asp:BoundField DataField="StreetAddress" HeaderText="Street Address" />
                <asp:BoundField DataField="City" HeaderText="City" />
            </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
        </asp:GridView>
        <div class="buttons" id="SaveVerifiedDromRoomNumber" runat="server">
            <asp:LinkButton ID="LBSaveRoomNumber" CssClass="homelargebuttons" runat="server"
                OnClick="LBSaveRoomNumber_Click">Save And Confirm</asp:LinkButton>
        </div>
    </div>
    <asp:HiddenField ID="HiddenFieldHouseTypeId" runat="server" />
    <asp:HiddenField ID="HiddenFieldBaseHouseId" runat="server" Value="0" />
    <asp:HiddenField ID="HiddenFieldBaseHouseRoomId" runat="server" Value="0" />
</div>
<script type="text/javascript" language="javascript">

    function setHouseIdToHiddenField() {
        var houseId = $('#MainContent_Current_House_Dorms1_DrpBaseHouse').val();
        document.getElementById("MainContent_Current_House_Dorms1_HiddenFieldBaseHouseId").value = houseId;

    }

    function setRoomIdToHiddenField() {
        var houseId = $('#MainContent_Current_House_Dorms1_DrpDromRooms').val();
        document.getElementById("MainContent_Current_House_Dorms1_HiddenFieldBaseHouseRoomId").value = houseId;
    }
    
</script>
