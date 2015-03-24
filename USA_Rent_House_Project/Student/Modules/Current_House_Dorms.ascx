<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Current_House_Dorms.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Current_House_Dorms" %>
<div id="forminner">

<h2>Drom housing</h2>
    <div id="Step1" runat="server">
        <p>
            <asp:Label ID="LabelDrom" runat="server" AssociatedControlID="DrpDrom" CssClass="form_label">Select Drom:</asp:Label>
            <asp:DropDownList ID="DrpDrom" runat="server" CssClass="dropDownEntry">
                <asp:ListItem>Drom 1</asp:ListItem>
                <asp:ListItem>Drom 2</asp:ListItem>
                <asp:ListItem>Drom 3</asp:ListItem>
            </asp:DropDownList>
        </p>
        <div class="buttons">
            <asp:LinkButton ID="LBSelectDorm" CssClass="homelargebuttons" runat="server" OnClick="LBSelectDorm_Click">Save and Continue</asp:LinkButton>
        </div>
    </div>
    <div id="DromDetails" runat="server" visible="false">
        <p>
            <asp:Label ID="ContactNameLabel" runat="server" AssociatedControlID="ContactName" CssClass="form_label">Contact Name:</asp:Label>
            <asp:Label ID="ContactName" runat="server" CssClass="form_label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="PhoneNumberLabel" runat="server" AssociatedControlID="PhoneNumber" CssClass="form_label">Phone Number:</asp:Label>
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
                <asp:ListItem>Room 1</asp:ListItem>
                <asp:ListItem>Room 2</asp:ListItem>
                <asp:ListItem>Room 3</asp:ListItem>
            </asp:DropDownList>
        </p>
        <div class="buttons" id="VerifyDromRoomNumber" runat="server">
            <asp:LinkButton ID="LBSelectRoom" CssClass="homelargebuttons" runat="server" OnClick="LBSelectRoom_Click">Verify</asp:LinkButton>
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
         <asp:GridView ID="GridView1" runat="server">
         </asp:GridView>

        <div class="buttons" id="SaveVerifiedDromRoomNumber" runat="server">
            <asp:LinkButton ID="LBSaveRoomNumber" CssClass="homelargebuttons" 
                runat="server" onclick="LBSaveRoomNumber_Click" >Save And Confirm</asp:LinkButton>
        </div>
     </div>

     
</div>
