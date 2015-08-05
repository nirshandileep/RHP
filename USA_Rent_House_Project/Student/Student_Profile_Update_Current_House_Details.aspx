<%@ Page Title="Student Profile Update Current Residence Details" Language="C#" MasterPageFile="~/Master_Pages/Student.Master" AutoEventWireup="true" CodeBehind="Student_Profile_Update_Current_House_Details.aspx.cs" Inherits="USA_Rent_House_Project.Student.Student_Profile_Update_Current_House_Details" %>


<%@ Register Src="Modules/Student_Profile_Header.ascx" TagName="Student_Profile_Header"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc1" %>
<%@ Register Src="~/Student/Modules/Current_House_Menu_Bar.ascx" TagName="Current_House_Menu_Bar" TagPrefix="uc3" %>
<%@ Register Src="~/Student/Modules/Ctr_QuickLinks.ascx" TagName="QuickLinks" TagPrefix="uc1" %>
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
             <uc1:QuickLinks ID="QuickLinksid" runat="server" />
            <div class="clear">
                
            </div>
            <div id="div_register_User">
                <h2 class="form_heading">
                    My Current Residence
                </h2>
                <div id="formwrapper">
                 
                        <uc3:Current_House_Menu_Bar ID="Current_House_Menu_Barid" runat="server" />
                    <div id="forminner">
                        <h1>
                            Update Current House - Current Residence Info</h1>
                       
                            <asp:HiddenField ID="hdLandloadId" runat="server" />
                            <asp:HiddenField ID="hdUserID" runat="server" />
                             <asp:HiddenField ID="hdHouseId" runat="server" />

                        <div id="LandlordHouseInfo" runat="server">

                            <p>
                                <asp:Label ID="AddressLabel" runat="server" AssociatedControlID="Address" CssClass="form_label">Rental Address:</asp:Label>
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
                                <asp:Label ID="ZipLabel" runat="server" AssociatedControlID="Zip" CssClass="form_label">Zip:</asp:Label>
                                <asp:Label ID="Zip" runat="server" CssClass="form_label"></asp:Label>
                            </p>
                        </div>
                        <div id="HouseEdit" runat="server" visible="false">
                            <h1>
                                House Info - Edit</h1>

                                    <asp:ValidationSummary ID="ValidationGroup1" runat="server" CssClass="failureNotification"
                                        ValidationGroup="ValidationGroupRentalAddress" />

                                        <div id="HouseSearch" runat="server" visible="false">
                                            <p>
                                                <asp:Label ID="HouseLabel" runat="server" AssociatedControlID="DrpHouse" CssClass="form_label">House Owned by Landload:</asp:Label>
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
                                        <asp:Label ID="Label7" runat="server" AssociatedControlID="RentalAddress" CssClass="form_label">Rental Address:</asp:Label>
                                        <asp:TextBox ID="RentalAddress" runat="server" CssClass="textEntry textbox_w1" Enabled="false"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="AddressRequiredField" runat="server" ControlToValidate="RentalAddress"
                                            CssClass="failureNotification" ErrorMessage="Address is required." ToolTip="Address is required."
                                            ValidationGroup="ValidationGroupRentalAddress">*</asp:RequiredFieldValidator>
                                    </p>
                                    <p>
                                        <asp:Label ID="Label12" runat="server" AssociatedControlID="RentalCity" CssClass="form_label">City:</asp:Label>
                                        <asp:TextBox ID="RentalCity" runat="server" CssClass="textEntry textbox_w2" Enabled="false"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="CityRequiredField" runat="server" ControlToValidate="RentalCity"
                                            CssClass="failureNotification" ErrorMessage="City is required." ToolTip="City is required."
                                            ValidationGroup="ValidationGroupRentalAddress">*</asp:RequiredFieldValidator>
                                    </p>
                                    <p>
                                        <asp:Label ID="Label13" runat="server" AssociatedControlID="Drpstate" CssClass="form_label">State:</asp:Label>
                                          <asp:DropDownList ID="Drpstate" runat="server" CssClass="dropDownEntry" Enabled="false">
                                                    </asp:DropDownList>
                                    </p>
                                    <p>
                                        <asp:Label ID="Label14" runat="server" AssociatedControlID="RentalZip" CssClass="form_label">Zip:</asp:Label>
                                        <asp:TextBox ID="RentalZip" runat="server" CssClass="textEntry textbox_w3" MaxLength="5"
                                            Enabled="false"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="ZipRequiredField" runat="server" ControlToValidate="RentalZip"
                                            CssClass="failureNotification" ErrorMessage="Zip is required." ToolTip="Zip is required."
                                            ValidationGroup="ValidationGroupRentalAddress">*</asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Zip must be 5 numbers"
                                            ControlToValidate="RentalZip" CssClass="failureNotification" ValidationExpression="^[0-9]{5}$"
                                            ValidationGroup="ValidationGroupRentalAddress">*</asp:RegularExpressionValidator>
                                    </p>

                                    <p>
                            <asp:Button ID="ButtonHouseEdit" runat="server" Width="150px" CssClass="actionbutton"
                                    CommandName="MoveNext" Text="Save" 
                                    ValidationGroup="ValidationGroupRentalAddress" onclick="ButtonHouseEdit_Click" />
                            </p>

                        </div>
                   
                </div>   
              
                </div>
            </div>
        </div>
    </div>
</asp:Content>
