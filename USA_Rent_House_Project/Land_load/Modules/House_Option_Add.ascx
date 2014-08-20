<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="House_Option_Add.ascx.cs" Inherits="USA_Rent_House_Project.Land_load.Modules.House_Option_Add" %>


<div id="div_register_User">
    <h2 class="form_heading">
        Land Load House / Property Option info
    </h2>
    <asp:ValidationSummary ID="PropertyValidationSummary" runat="server" CssClass="failureNotification"
        ValidationGroup="PropertyValidationGroup" />
      <div id="formwrapper">
            <div id="forminner">
            
            <p>
                Options / Features</p>
            <asp:CheckBoxList ID="chkOptionList" runat="server" RepeatColumns="5">
            </asp:CheckBoxList>
            <br />
            <br />
            Garage :<br />
            <asp:CheckBox ID="chkAttachedgarage" runat="server" Text="Attached garage" />
            <asp:DropDownList ID="drpAttachedgarage" runat="server">
                <asp:ListItem>1</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:CheckBox ID="chkdeattachedgarage" runat="server" Text="deattached garage" />
            <asp:DropDownList ID="drldeattachedgarage" runat="server">
                <asp:ListItem>1</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:CheckBox ID="chkdrivewayparking" runat="server" Text="drive way parking" />
            <asp:DropDownList ID="drpdrivewayparking" runat="server">
                <asp:ListItem>1</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />

            <table style="width: 822px">
            <tr valign="top">
            <td>
             Furnished rooms :
            <asp:CheckBoxList ID="chkFurnishedroomoptions" runat="server" RepeatColumns="2">
            </asp:CheckBoxList>
            </td>
            <td>
              Furnished kitchen :
            <asp:CheckBoxList ID="chkFurnishedkitchenOptions" runat="server" RepeatColumns="2">
            </asp:CheckBoxList>
  
            </td>
            <td>
               Furnished living space :
            <asp:CheckBoxList ID="chkFurnishedlivingspaceOptions" runat="server" RepeatColumns="2">
            </asp:CheckBoxList>
        
            </td>
            </tr>
            </table>
          
           
  
        
        
        </div>
    </div>
     <p class="submitButton">
            <asp:Button ID="AddPropertyOptionButton" runat="server" 
                CssClass="actionbutton" 
                Text="Add Property Options" ValidationGroup="PropertyValidationGroup" onclick="AddPropertyOptionButton_Click" 
  />
            <asp:HiddenField ID="hdnHouseId" runat="server" />
        </p>
</div>
