<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Current_Students_Add.ascx.cs" Inherits="USA_Rent_House_Project.Land_load.Modules.Current_Students_Add" %>

<h2 class="form_heading">Current students</h2>
   <div id="formwrapper">
        <div id="forminner">

        <div id="StudentListData" runat="server">
   

        <asp:DataList ID="DataListStudentList" runat="server" RepeatColumns="3" DataKeyField="UserId">
                <ItemTemplate>
                    <div class="imagegallerycontainer">
                        <div class="imagegallery">
                        </div>
                        <div>
                            <asp:Label ID="lblname" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("MiddleName") %>'></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("LastName") %>'></asp:Label><br />
   
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>

    </div>

<div id="RoommateAdd" runat="server">
    <h1>
    Current student info</h1>

<asp:ValidationSummary ID="ValidationGroup3ID" runat="server" CssClass="failureNotification"
    ValidationGroup="ValidationGroup3" />


<p id="setEmail" runat="server">
    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="form_label">E-mail:</asp:Label>
    <asp:TextBox ID="Email" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
        CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required."
        ValidationGroup="ValidationGroup3">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
        ControlToValidate="Email" CssClass="failureNotification" ValidationGroup="ValidationGroup3"
        ErrorMessage="Enter valid email address." ToolTip="Enter valid email address.">* </asp:RegularExpressionValidator>
</p>
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
    <asp:Label ID="MobileLabel" runat="server" AssociatedControlID="Mobile" CssClass="form_label">Contact No:</asp:Label>
    <asp:TextBox ID="Mobile" runat="server" CssClass="textEntry" MaxLength="15"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Mobile"
        CssClass="failureNotification" ErrorMessage="Best Contact No is required." ToolTip="Best Contact No is required."
        ValidationGroup="ValidationGroup3">*</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator2" runat="server" Operator="DataTypeCheck"
        Type="Integer" CssClass="failureNotification" ErrorMessage="Invalid Best Contact No."
        ToolTip="Invalid Best Contact No." ControlToValidate="Mobile" ValidationGroup="ValidationGroup3">*</asp:CompareValidator>
</p>
   
<p>
    <asp:Button ID="CreateRommateButton" runat="server" width="150px" CssClass="actionbutton" CommandName="MoveNext"
        Text="Add student" OnClick="CreateRommateButton_Click" ValidationGroup="ValidationGroup3" />
    <asp:Label ID="Label1" runat="server" CssClass="failureNotification" Text=""></asp:Label>
</p>


<div>
<h1>
    Current student List</h1>
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

     <asp:Button ID="ButtonSave" runat="server" width="150px" CssClass="actionbutton" CommandName="MoveNext"
        Text="Save students" onclick="ButtonSave_Click" />
</p>

</div>
    </div>