<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Current_House_Landload_info.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Current_House_Landload_info" %>

<h1>Landload Info</h1>
<p>
    <asp:Label ID="LabelFirstName" runat="server" AssociatedControlID="FirstName" CssClass="form_label">First Name:</asp:Label>
    <asp:TextBox ID="FirstName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
   <%-- <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="FirstName"
        CssClass="failureNotification" ErrorMessage="First Name is required." ToolTip="First Name is required."
        ValidationGroup="RegisterLand_lordValidationGroup">*</asp:RequiredFieldValidator>--%>
</p>
<p>
    <asp:Label ID="LabelMiddleName" runat="server" AssociatedControlID="MiddleName" CssClass="form_label">Middle Name:</asp:Label>
    <asp:TextBox ID="MiddleName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
</p>
<p>
    <asp:Label ID="LabelLastName" runat="server" AssociatedControlID="LastName" CssClass="form_label">Last Name:</asp:Label>
    <asp:TextBox ID="LastName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
  <%--  <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="LastName"
        CssClass="failureNotification" ErrorMessage="Last Name is required." ToolTip="Last Name is required."
        ValidationGroup="RegisterLand_lordValidationGroup">*</asp:RequiredFieldValidator>--%>
</p>
<p id="setEmail" runat="server">
    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="form_label">E-mail:</asp:Label>
    <asp:TextBox ID="Email" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
   <%-- <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
        CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required."
        ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
        ControlToValidate="Email" CssClass="failureNotification" ValidationGroup="RegisterStudentValidationGroup"
        ErrorMessage="Enter valid email address." ToolTip="Enter valid email address.">* </asp:RegularExpressionValidator>--%>
</p>
<p>
    <asp:Label ID="MobileLabel" runat="server" AssociatedControlID="Mobile" CssClass="form_label">Mobile:</asp:Label>
    <asp:TextBox ID="Mobile" runat="server" CssClass="textEntry" MaxLength="15"></asp:TextBox>
  <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Mobile"
        CssClass="failureNotification" ErrorMessage="Best Contact No is required." ToolTip="Best Contact No is required."
        ValidationGroup="RegisterStudentValidationGroup">*</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator2" runat="server" Operator="DataTypeCheck"
        Type="Integer" CssClass="failureNotification" ErrorMessage="Invalid Best Contact No."
        ToolTip="Invalid Best Contact No." ControlToValidate="Mobile" ValidationGroup="RegisterStudentValidationGroup">*</asp:CompareValidator>--%>
</p>
 <p>
            <asp:Button ID="CreateLandloadButton" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                Text="Save and continue" onclick="CreateLandloadButton_Click"  />
            <asp:Label ID="lblError" runat="server" CssClass="failureNotification" Text=""></asp:Label>
        </p>