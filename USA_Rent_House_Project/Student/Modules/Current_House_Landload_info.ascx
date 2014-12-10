<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Current_House_Landload_info.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Current_House_Landload_info" %>
<h1>
    Landload Info</h1>

<script type = "text/javascript">
    function Confirm() {
        var confirm_value = document.createElement("INPUT");
        confirm_value.type = "hidden";
        confirm_value.name = "confirm_value";
        if (confirm("Do you want to Delete House?")) {
            confirm_value.value = "Yes";
        } else {
            confirm_value.value = "No";
        }
        document.forms[0].appendChild(confirm_value);
    }
    </script>

<asp:ValidationSummary ID="ValidationGroup1" runat="server" CssClass="failureNotification"
    ValidationGroup="ValidationGroup1" />

    <p id="ButtonLeaveHouseID" runat="server" Visible="false">
    If You Want to Leave House Please 
     <asp:LinkButton ID="ButtonLeaveHouse" runat="server" OnClick="OnConfirm" OnClientClick="Confirm()">Click Here</asp:LinkButton>

        </p>
<%--<asp:UpdatePanel ID="UpdatePanelLandloadinfo" runat="server" updatemode="Conditional">
    <ContentTemplate>--%>
<p id="idmessase" runat="server">
    <asp:Label ID="Labelmessage" runat="server" Text=""></asp:Label></p>
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
        CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required.">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
        ControlToValidate="Email" CssClass="failureNotification" ErrorMessage="Enter valid email address."
        ToolTip="Enter valid email address.">* </asp:RegularExpressionValidator>
</p>
<p>
    <asp:Button ID="ButtonVerify" runat="server" CssClass="actionbutton" CommandName="MoveNext"
        Text="Verify Landload" OnClick="ButtonVerify_Click" ValidationGroup="ValidationGroup1" />

        
</p>
<p>
    <asp:Label ID="LabelFirstName" runat="server" AssociatedControlID="FirstName" CssClass="form_label">First Name:</asp:Label>
    <asp:TextBox ID="FirstName" runat="server" CssClass="textEntry textbox_w1" Enabled="false"></asp:TextBox>
    <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="FirstName"
        CssClass="failureNotification" ErrorMessage="First Name is required." ToolTip="First Name is required.">*</asp:RequiredFieldValidator>
</p>
<p>
    <asp:Label ID="LabelMiddleName" runat="server" AssociatedControlID="MiddleName" CssClass="form_label">Middle Name:</asp:Label>
    <asp:TextBox ID="MiddleName" runat="server" CssClass="textEntry textbox_w1" Enabled="false"></asp:TextBox>
</p>
<p>
    <asp:Label ID="LabelLastName" runat="server" AssociatedControlID="LastName" CssClass="form_label">Last Name:</asp:Label>
    <asp:TextBox ID="LastName" runat="server" CssClass="textEntry textbox_w1" Enabled="false"></asp:TextBox>
    <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="LastName"
        CssClass="failureNotification" ErrorMessage="Last Name is required." ToolTip="Last Name is required.">*</asp:RequiredFieldValidator>
</p>

<p>
                <asp:Label ID="MobileLabel" runat="server" AssociatedControlID="MobileArea" CssClass="form_label">Best Contact #:</asp:Label>
                <asp:TextBox ID="MobileArea" runat="server" CssClass="MobiletextEntry" MaxLength="3" Enabled="false"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="MobileArea"
                    CssClass="failureNotification" ErrorMessage="Best Contact No is required." ToolTip="Best Contact No is required."
                    ValidationGroup="ValidationGroup3">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator3" runat="server" Operator="DataTypeCheck"
                    Type="Integer" CssClass="failureNotification" ErrorMessage="Invalid Best Contact No."
                    ToolTip="Invalid Best Contact No." ControlToValidate="MobileArea" ValidationGroup="ValidationGroup3">*</asp:CompareValidator>


                <asp:TextBox ID="Mobile1" runat="server" CssClass="MobiletextEntry" MaxLength="3" Enabled="false"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Mobile1"
                    CssClass="failureNotification" ErrorMessage="Best Contact No is required." ToolTip="Best Contact No is required."
                    ValidationGroup="ValidationGroup3">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator4" runat="server" Operator="DataTypeCheck"
                    Type="Integer" CssClass="failureNotification" ErrorMessage="Invalid Best Contact No."
                    ToolTip="Invalid Best Contact No." ControlToValidate="Mobile1" ValidationGroup="ValidationGroup3">*</asp:CompareValidator>


                <asp:TextBox ID="Mobile2" runat="server" CssClass="MobiletextEntry" MaxLength="4" Enabled="false"></asp:TextBox>
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
        CssClass="failureNotification" ErrorMessage="Best Contact No is required." ToolTip="Best Contact No is required.">*</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator2" runat="server" Operator="DataTypeCheck"
        Type="Integer" CssClass="failureNotification" ErrorMessage="Invalid Best Contact No."
        ToolTip="Invalid Best Contact No." ControlToValidate="Mobile">*</asp:CompareValidator>
</p>--%>
<asp:HiddenField ID="hdnLandlordId" runat="server" />

<%--</ContentTemplate>
</asp:UpdatePanel>--%>
<p>
    <asp:Label ID="lblError" runat="server" CssClass="failureNotification" Text=""></asp:Label>
</p>
