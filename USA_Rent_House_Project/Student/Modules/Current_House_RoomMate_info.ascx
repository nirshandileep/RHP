<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Current_House_RoomMate_info.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Current_House_RoomMate_info" %>

    <h2>Current students</h2>

        <div id="StudentListData" runat="server">
        <%--<asp:DataList ID="DataListStudentList" runat="server" RepeatColumns="1" DataKeyField="UserId">
            <ItemTemplate>
                <div id="DivStudent" runat="server">


                    Email : 
                    <asp:Label ID="lblPersonalEmail" runat="server" Text='<%# Eval("PersonalEmail") %>' ></asp:Label>
                    <br />
                    Full Name :  <asp:Label ID="lblname" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>  <asp:Label ID="Label2" runat="server" Text= '<%# Eval("MiddleName") %>' ></asp:Label>   <asp:Label ID="Label3" runat="server" Text='<%# Eval("MiddleName") %>'></asp:Label><br />
                   
                    Best Contact Number : <asp:Label ID="lblMobile" runat="server" Text='<%# Eval("BestContactNumber") %>'></asp:Label>
                   
                </div>
            </ItemTemplate>
        </asp:DataList>--%>

        <asp:DataList ID="DataListStudentList" runat="server" RepeatColumns="3" DataKeyField="UserId">
                <ItemTemplate>
                    <div class="imagegallerycontainer">
                        <div class="imagegallery">
                        </div>
                        <div>
     <%--
                            <asp:Label ID="lblPersonalEmail" runat="server" Text='<%# Eval("PersonalEmail") %>'></asp:Label>
                            <br />--%>
                            <asp:Label ID="lblname" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("MiddleName") %>'></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("LastName") %>'></asp:Label><br />
                         <%--   <asp:Label ID="lblMobile" runat="server" Text='<%# Eval("BestContactNumber") %>'></asp:Label>--%>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>

    </div>

<div id="RoommateAdd" runat="server">
    <h1>
    Room-mate info</h1>

<asp:ValidationSummary ID="ValidationGroup3ID" runat="server" CssClass="failureNotification"
    ValidationGroup="ValidationGroup3" />


<%--<p id="setEmail" runat="server">
    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="form_label">E-mail:</asp:Label>
    <asp:TextBox ID="Email" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
        CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required."
        ValidationGroup="ValidationGroup3">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
        ControlToValidate="Email" CssClass="failureNotification" ValidationGroup="ValidationGroup3"
        ErrorMessage="Enter valid email address." ToolTip="Enter valid email address.">* </asp:RegularExpressionValidator>
</p>--%>


<p id="idmessase" runat="server">
    <asp:Label ID="Labelmessage" runat="server" Text=""></asp:Label></p>
<p id="setEmail" runat="server">
    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="form_label">E-mail:</asp:Label>
    <asp:TextBox ID="Email" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
        CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required."
        ValidationGroup="ValidationGroup3">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
        ControlToValidate="Email" CssClass="failureNotification" ValidationGroup="ValidationGroup3"
        ErrorMessage="Enter valid email address." ToolTip="Enter valid email address.">* </asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email"
        CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="ValidationGroup3">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
        ControlToValidate="Email" CssClass="failureNotification" ErrorMessage="Enter valid email address."
        ToolTip="Enter valid email address." ValidationGroup="ValidationGroup3">* </asp:RegularExpressionValidator>
</p>
<%--<p>
    <asp:Button ID="ButtonVerify" runat="server" CssClass="actionbutton" CommandName="MoveNext"
        Text="Verify Landload" OnClick="ButtonVerify_Click" ValidationGroup="ValidationGroup1" />
</p>--%>

<p>
    <asp:Label ID="LabelFirstName" runat="server" AssociatedControlID="FirstName" CssClass="form_label">First Name:</asp:Label>
    <asp:TextBox ID="FirstName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
    <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="FirstName"
        CssClass="failureNotification" ErrorMessage="First Name is required." ToolTip="First Name is required."
        ValidationGroup="ValidationGroup3">*</asp:RequiredFieldValidator>
</p>
<p>
    <asp:Label ID="LabelMiddleName" runat="server" AssociatedControlID="MiddleName" CssClass="form_label">Middle Name:</asp:Label>
    <asp:TextBox ID="MiddleName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
</p>
<p>
    <asp:Label ID="LabelLastName" runat="server" AssociatedControlID="LastName" CssClass="form_label">Last Name:</asp:Label>
    <asp:TextBox ID="LastName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
    <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="LastName"
        CssClass="failureNotification" ErrorMessage="Last Name is required." ToolTip="Last Name is required."
        ValidationGroup="ValidationGroup3">*</asp:RequiredFieldValidator>
</p>

<p>
                <asp:Label ID="MobileLabel" runat="server" AssociatedControlID="MobileArea" CssClass="form_label">Best Contact #:</asp:Label>
                <asp:TextBox ID="MobileArea" runat="server" CssClass="MobiletextEntry" MaxLength="3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="MobileArea"
                    CssClass="failureNotification" ErrorMessage="Best Contact No is required." ToolTip="Best Contact No is required."
                    ValidationGroup="ValidationGroup3">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator3" runat="server" Operator="DataTypeCheck"
                    Type="Integer" CssClass="failureNotification" ErrorMessage="Invalid Best Contact No."
                    ToolTip="Invalid Best Contact No." ControlToValidate="MobileArea" ValidationGroup="ValidationGroup3">*</asp:CompareValidator>


                <asp:TextBox ID="Mobile1" runat="server" CssClass="MobiletextEntry" MaxLength="3" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Mobile1"
                    CssClass="failureNotification" ErrorMessage="Best Contact No is required." ToolTip="Best Contact No is required."
                    ValidationGroup="ValidationGroup3">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator4" runat="server" Operator="DataTypeCheck"
                    Type="Integer" CssClass="failureNotification" ErrorMessage="Invalid Best Contact No."
                    ToolTip="Invalid Best Contact No." ControlToValidate="Mobile1" ValidationGroup="ValidationGroup3">*</asp:CompareValidator>


                <asp:TextBox ID="Mobile2" runat="server" CssClass="MobiletextEntry" MaxLength="4" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Mobile2"
                    CssClass="failureNotification" ErrorMessage="Best Contact No is required." ToolTip="Best Contact No is required."
                    ValidationGroup="ValidationGroup3">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" Operator="DataTypeCheck"
                    Type="Integer" CssClass="failureNotification" ErrorMessage="Invalid Best Contact No."
                    ToolTip="Invalid Best Contact No." ControlToValidate="Mobile2" ValidationGroup="ValidationGroup3">*</asp:CompareValidator>
            </p>

<%--<p>
    <asp:Label ID="MobileLabel" runat="server" AssociatedControlID="Mobile" CssClass="form_label">Contact No:</asp:Label>
    <asp:TextBox ID="Mobile" runat="server" CssClass="textEntry" MaxLength="15" Enabled="false"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Mobile"
        CssClass="failureNotification" ErrorMessage="Best Contact No is required." ToolTip="Best Contact No is required."
        ValidationGroup="ValidationGroup3">*</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator2" runat="server" Operator="DataTypeCheck"
        Type="Integer" CssClass="failureNotification" ErrorMessage="Invalid Best Contact No."
        ToolTip="Invalid Best Contact No." ControlToValidate="Mobile" ValidationGroup="ValidationGroup3">*</asp:CompareValidator>
</p>--%>
   
<p>
    <asp:Button ID="CreateRommateButton" runat="server" width="150px" CssClass="actionbutton" CommandName="MoveNext"
        Text="Add Rome-mate" OnClick="CreateRommateButton_Click" ValidationGroup="ValidationGroup3" />
    <asp:Label ID="Label1" runat="server" CssClass="failureNotification" Text=""></asp:Label>
</p>


<div>
<h1>
    Room-mate List</h1>
    <asp:GridView ID="GridviewRoommatelist" runat="server" CssClass="Grid" AlternatingRowStyle-CssClass="alt" PagerStyle-CssClass="pgr" Width="600">
    <Columns>
     <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="RemAudition" runat="server" OnClick="RemoveRoommate_Click" ForeColor="Black">Remove</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            </Columns>
    </asp:GridView>
    </div>
</div>
   <p>
      <asp:HiddenField ID="hdnLandlordId" runat="server" />
    <asp:HiddenField ID="hdHouseId" runat="server" />
    <asp:Label ID="lblError" runat="server" CssClass="failureNotification" Text=""></asp:Label>
</p>

