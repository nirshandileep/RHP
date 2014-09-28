<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="House_Option_Add.ascx.cs"
    Inherits="USA_Rent_House_Project.Land_load.Modules.House_Option_Add" %>
<div id="div_register_User">
    <h2 class="form_heading">
        Land Load House / Property Option info
    </h2>
    <asp:ValidationSummary ID="PropertyValidationSummary" runat="server" CssClass="failureNotification"
        ValidationGroup="PropertyValidationGroup" />
    <div id="formwrapper">
        <div id="forminner">
            
               <strong>Options / Features</strong> 
            <asp:CheckBoxList ID="chkOptionList" runat="server" RepeatColumns="15">
            </asp:CheckBoxList>
           <%-- <br />
            <br />
           <strong> Garage :</strong><br />
            <asp:CheckBox ID="chkAttachedgarage" runat="server" Text="Attached garage" />
            <asp:DropDownList ID="drpAttachedgarage" runat="server">
                <asp:ListItem>1</asp:ListItem>
            </asp:DropDownList>
            <br />     <br />
            <asp:CheckBox ID="chkdeattachedgarage" runat="server" Text="deattached garage" />
            <asp:DropDownList ID="drldeattachedgarage" runat="server">
                <asp:ListItem>1</asp:ListItem>
            </asp:DropDownList>
            <br />     <br />
            <asp:CheckBox ID="chkdrivewayparking" runat="server" Text="drive way parking" />
            <asp:DropDownList ID="drpdrivewayparking" runat="server">
                <asp:ListItem>1</asp:ListItem>
            </asp:DropDownList>--%>
            <br />
            <br />
            <table style="width: 900px">
                <tr valign="top">
                    <td>
                       <strong>Furnished rooms :</strong> 
                        <asp:CheckBoxList ID="chkFurnishedroomoptions" runat="server" RepeatColumns="2">
                        </asp:CheckBoxList>
                    </td>
                    <td>
                       <strong>Furnished kitchen :</strong> 
                        <asp:CheckBoxList ID="chkFurnishedkitchenOptions" runat="server" RepeatColumns="2">
                        </asp:CheckBoxList>
                    </td>
                    <td>
                       <strong>Furnished living space :</strong> 
                        <asp:CheckBoxList ID="chkFurnishedlivingspaceOptions" runat="server" RepeatColumns="2">
                        </asp:CheckBoxList>
                    </td>
                </tr>
            </table>
            <asp:HiddenField ID="hdnHouseId" runat="server" />
        </div>
    </div>
    <p class="submitButton">
        <asp:Button ID="AddPropertyOptionButton" runat="server" CssClass="actionbutton" Text="Add Property Options"
            ValidationGroup="PropertyValidationGroup" OnClick="AddPropertyOptionButton_Click" />
    </p>
</div>
