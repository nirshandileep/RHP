<%@ Page Title="Student Update Current House" Language="C#" MasterPageFile="~/Master_Pages/Student.Master"
    AutoEventWireup="true" CodeBehind="Student_Profile_Update_Current_House.aspx.cs"
    Inherits="USA_Rent_House_Project.Student.Student_Profile_Update_Current_House" %>

<%@ Register Src="Modules/Student_Profile_Header.ascx" TagName="Student_Profile_Header"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc1" %>
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
            <asp:HyperLink ID="HyperLinkPublicView" CssClass="loginlinks" Style="float: right"
                runat="server">Public view</asp:HyperLink>
            <div id="Search" class="floatright" runat="server">
                <asp:HyperLink ID="SearchStudent" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=s"
                    runat="server">Search for Student</asp:HyperLink>
                <asp:HyperLink ID="SearchHouse" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=l"
                    runat="server">Search for House</asp:HyperLink>
            </div>
            <div class="clear">
                
            </div>
            <div id="div_register_User">
                <h2 class="form_heading">
                    My Current House
                </h2>
                <div id="formwrapper">
                    <p>
                        <asp:HyperLink ID="CreateCurrentHouseButton" runat="server" Visible="false" CssClass="loginlinks"
                            NavigateUrl="~/Student/Student_Profile_Current_House.aspx">Create current house</asp:HyperLink>&nbsp;
                        <asp:HyperLink ID="ViewCurrentHouseButton" runat="server" Visible="false" CssClass="loginlinks"
                            NavigateUrl="~/Student/Student_Profile_Current_House_Details.aspx">View current house</asp:HyperLink>&nbsp;
                        <asp:HyperLink ID="UpdateCurrentHouseButton" runat="server" Visible="false" CssClass="loginlinks"
                            NavigateUrl="~/Student/Student_Profile_Update_Current_House.aspx">Update current house</asp:HyperLink>
                        &nbsp;
                        <asp:HyperLink ID="LeaveCurrentHouseButton" runat="server" CssClass="loginlinks"
                            NavigateUrl="~/Student/Student_Profile_Leave_Current_House.aspx">Leave current house</asp:HyperLink>
                    </p>
                    <div id="forminner">
                        <h1>
                            Update Current House</h1>
                       
                        <div id="RoommateEdit" runat="server" visible="false">
                            <h1>
                                <asp:Label ID="RoomMateInfoHeader" runat="server" Text=""></asp:Label>
                            </h1>
                            <asp:ValidationSummary ID="ValidationGroup3ID" runat="server" CssClass="failureNotification"
                                ValidationGroup="ValidationGroup3" />
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="failureNotification"
                                ValidationGroup="ValidationGroup1" />
                            <div id="CurrentDetails" runat="server" visible="false">
                                <p>
                                    Current Name :
                                    <asp:Label ID="EditPartialUserName" runat="server" Text=""></asp:Label>
                                    <asp:HiddenField ID="hdEditPartialUserName" runat="server" />
                                </p>
                                <p>
                                    Current Email :
                                    <asp:Label ID="EditPartialUserEmail" runat="server" Text=""></asp:Label>
                                    <asp:HiddenField ID="hdEditPartialUserEmail" runat="server" />
                                </p>
                                <p>
                                    Current Cntact :
                                    <asp:Label ID="EditPartialUserCurrent" runat="server" Text=""></asp:Label>
                                    <asp:HiddenField ID="hdEditPartialUserCurrent" runat="server" />
                                </p>
                            </div>
                            <p id="setEmail" runat="server">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="form_label">E-mail:</asp:Label>
                                <asp:TextBox ID="Email" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                                    CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required."
                                    ValidationGroup="ValidationGroup1">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    ControlToValidate="Email" CssClass="failureNotification" ValidationGroup="ValidationGroup1"
                                    ErrorMessage="Enter valid email address." ToolTip="Enter valid email address.">* </asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email"
                                    CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required."
                                    ValidationGroup="ValidationGroup1">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    ControlToValidate="Email" CssClass="failureNotification" ErrorMessage="Enter valid email address."
                                    ToolTip="Enter valid email address." ValidationGroup="ValidationGroup1">* </asp:RegularExpressionValidator>
                            </p>
                            <p id="idmessase" runat="server">
                                <asp:Label ID="Labelmessage" runat="server" Text=""></asp:Label></p>
                            <p>
                                <asp:Button ID="ButtonVerify" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                                    Text="Verify Student" OnClick="ButtonVerify_Click" ValidationGroup="ValidationGroup1" />
                            </p>
                            <p>
                                <asp:Label ID="LabelFirstName" runat="server" AssociatedControlID="FirstName" CssClass="form_label">First Name:</asp:Label>
                                <asp:TextBox ID="FirstName" runat="server" CssClass="textEntry textbox_w1" Enabled="false"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="FirstName"
                                    CssClass="failureNotification" ErrorMessage="First Name is required." ToolTip="First Name is required."
                                    ValidationGroup="ValidationGroup3">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="LabelMiddleName" runat="server" AssociatedControlID="MiddleName" CssClass="form_label">Middle Name:</asp:Label>
                                <asp:TextBox ID="MiddleName" runat="server" CssClass="textEntry textbox_w1" Enabled="false"></asp:TextBox>
                            </p>
                            <p>
                                <asp:Label ID="LabelLastName" runat="server" AssociatedControlID="LastName" CssClass="form_label">Last Name:</asp:Label>
                                <asp:TextBox ID="LastName" runat="server" CssClass="textEntry textbox_w1" Enabled="false"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="LastName"
                                    CssClass="failureNotification" ErrorMessage="Last Name is required." ToolTip="Last Name is required."
                                    ValidationGroup="ValidationGroup3">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="MobileLabel" runat="server" AssociatedControlID="MobileArea" CssClass="form_label">Best Contact #:</asp:Label>
                                <asp:TextBox ID="MobileArea" runat="server" CssClass="MobiletextEntry" MaxLength="3"
                                    Enabled="false"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="MobileArea"
                                    CssClass="failureNotification" ErrorMessage="Best Contact No is required." ToolTip="Best Contact No is required."
                                    ValidationGroup="ValidationGroup3">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator3" runat="server" Operator="DataTypeCheck"
                                    Type="Integer" CssClass="failureNotification" ErrorMessage="Invalid Best Contact No."
                                    ToolTip="Invalid Best Contact No." ControlToValidate="MobileArea" ValidationGroup="ValidationGroup3">*</asp:CompareValidator>
                                <asp:TextBox ID="Mobile1" runat="server" CssClass="MobiletextEntry" MaxLength="3"
                                    Enabled="false"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Mobile1"
                                    CssClass="failureNotification" ErrorMessage="Best Contact No is required." ToolTip="Best Contact No is required."
                                    ValidationGroup="ValidationGroup3">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator4" runat="server" Operator="DataTypeCheck"
                                    Type="Integer" CssClass="failureNotification" ErrorMessage="Invalid Best Contact No."
                                    ToolTip="Invalid Best Contact No." ControlToValidate="Mobile1" ValidationGroup="ValidationGroup3">*</asp:CompareValidator>
                                <asp:TextBox ID="Mobile2" runat="server" CssClass="MobiletextEntry" MaxLength="4"
                                    Enabled="false"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Mobile2"
                                    CssClass="failureNotification" ErrorMessage="Best Contact No is required." ToolTip="Best Contact No is required."
                                    ValidationGroup="ValidationGroup3">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator2" runat="server" Operator="DataTypeCheck"
                                    Type="Integer" CssClass="failureNotification" ErrorMessage="Invalid Best Contact No."
                                    ToolTip="Invalid Best Contact No." ControlToValidate="Mobile2" ValidationGroup="ValidationGroup3">*</asp:CompareValidator>
                            </p>
                            <p>
                                <asp:Button ID="EditRommateButton" runat="server" Width="150px" CssClass="actionbutton"
                                    CommandName="MoveNext" Text="Save" OnClick="EditRommateButton_Click" ValidationGroup="ValidationGroup3" />
                                <asp:Label ID="Label1" runat="server" CssClass="failureNotification" Text=""></asp:Label>
                                
                                <br />
                            </p>
                        </div>
                        <div id="LandlordInfo" runat="server">
                            
                            <asp:HiddenField ID="hdLandloadId" runat="server" />
                            <asp:HiddenField ID="hdUserID" runat="server" />
                             <asp:HiddenField ID="hdroommatestatus" runat="server" />
                             <asp:HiddenField ID="hdHouseId" runat="server" />
                             <asp:HiddenField ID="hdnStepNumber" runat="server" Value="0" />

                            <h1>
                                Landload Info</h1>
                            
                            <p id="EditLandloadInfoLink" runat="server" visible="true">
                            Click
                                <asp:HyperLink ID="HyperLinkloadInfo" NavigateUrl="~/Student/Student_Profile_Update_Current_Landlord.aspx" runat="server"> Here </asp:HyperLink>

                            &nbsp;to Edit Landload Info.</p>
                       
                            <p id="P1" runat="server">
                                <asp:Label ID="Label4" runat="server" AssociatedControlID="lbEmail" CssClass="form_label">E-mail:</asp:Label>
                                <asp:Label ID="lbEmail" runat="server" CssClass="form_label"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="LabelName" runat="server" AssociatedControlID="lbName" CssClass="form_label">Name:</asp:Label>
                                <asp:Label ID="lbName" runat="server" CssClass="form_label"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="Label6" runat="server" AssociatedControlID="lbMobile" CssClass="form_label">Best Contact #:</asp:Label>
                                <asp:Label ID="lbMobile" runat="server" CssClass="form_label"></asp:Label>
                            </p>
                        </div>
                    
                        <div id="LandlordHouseInfo" runat="server">
                            <h1>
                                House Info</h1>
                            
                           <p id="HouseInfoEditLink" runat="server" visible="true"> Click
                      
                            <asp:HyperLink ID="HyperLinkHouseEditLink" NavigateUrl="~/Student/Student_Profile_Update_Current_House_Details.aspx" runat="server"> Here </asp:HyperLink>
                            &nbsp;to Edit House Info.
                             </p>
                       
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
                       
                        <div id="ParialUsers" runat="server">
                            <div id="StudentListData" runat="server">
                                <br />
                                Click
                                <asp:LinkButton ID="LBAddStudent" runat="server" OnClick="LBAddStudent_Click">Here</asp:LinkButton>
                                &nbsp;to Add a new Student.
                                <br />
                                <asp:DataList ID="DataListStudentList" runat="server" RepeatColumns="2" DataKeyField="UserId"
                                    OnItemDataBound="ItemDataBound">
                                    <ItemTemplate>
                                        <div class="imagegallerycontainer">
                                            <div class="imagegallery">
                                                <asp:HyperLink ID="HyperLinkimage" runat="server" Text='<%# Eval("FirstName") + " " +  Eval("LastName")%>'
                                                    ImageUrl="~/Images/Sample/Noimage.jpg" NavigateUrl='<%# Eval("UserId","~/Student/Student_Public_Profile.aspx?AccessCode={0}") %>'></asp:HyperLink>
                                            </div>
                                            <div>
                                                <asp:HiddenField ID="hdUserId" runat="server" Value='<%# Eval("UserId") %>' />
                                                <asp:HiddenField ID="hdIsPartialUser" runat="server" Value='<%# Eval("IsPartialUser") %>' />
                                                <asp:HiddenField ID="hdAspnetUserId" runat="server" Value='<%# Eval("AspnetUserId") %>' />
                                                <asp:Label ID="lblname" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("MiddleName") %>'></asp:Label>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("LastName") %>'></asp:Label><br />
                                            </div>
                                            <div>
                                                <asp:LinkButton ID="EditPartialUser" CommandName="Edit" CommandArgument='<%# Eval("UserId") %>'
                                                    OnCommand="EditPartialUser_Command" runat="server" Visible="false">Edit </asp:LinkButton>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:DataList>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
