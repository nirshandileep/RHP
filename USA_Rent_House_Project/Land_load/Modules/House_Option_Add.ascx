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
            <asp:CheckBoxList ID="OptionList" runat="server" RepeatColumns="5">
                <asp:ListItem> Cealing fans   </asp:ListItem>
                <asp:ListItem> Sunroom   </asp:ListItem>
                <asp:ListItem> mother in low quartes   </asp:ListItem>
                <asp:ListItem> Washer , dryer   </asp:ListItem>
                <asp:ListItem> laundery room   </asp:ListItem>
                <asp:ListItem> street parking   </asp:ListItem>
                <asp:ListItem> bike rack   </asp:ListItem>
                <asp:ListItem> motion censor light   </asp:ListItem>
                <asp:ListItem> Second fridge </asp:ListItem>
                <asp:ListItem> wireless internet </asp:ListItem>
                <asp:ListItem> BBQ </asp:ListItem>
                <asp:ListItem> Back yard </asp:ListItem>
                <asp:ListItem> Pool </asp:ListItem>
                <asp:ListItem> Hot tab </asp:ListItem>
                <asp:ListItem> electric stove </asp:ListItem>
                <asp:ListItem> Oven </asp:ListItem>
                <asp:ListItem> Alarm System </asp:ListItem>
                <asp:ListItem> Sana </asp:ListItem>
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
                <asp:ListItem> bed</asp:ListItem>
                <asp:ListItem> chair</asp:ListItem>
                <asp:ListItem> dresser</asp:ListItem>
                <asp:ListItem> lamp</asp:ListItem>
                <asp:ListItem> cooling fans</asp:ListItem>
                <asp:ListItem> fans</asp:ListItem>
            </asp:CheckBoxList>
            </td>
            <td>
              Furnished kitchen :
            <asp:CheckBoxList ID="chkFurnishedkitchenOptions" runat="server" RepeatColumns="2">
                <asp:ListItem> toster</asp:ListItem>
                <asp:ListItem> plates</asp:ListItem>
                <asp:ListItem> mini oven</asp:ListItem>
            </asp:CheckBoxList>
  
            </td>
            <td>
               Furnished living space :
            <asp:CheckBoxList ID="chkFurnishedlivingspaceOptions" runat="server" RepeatColumns="2">
                <asp:ListItem> TV</asp:ListItem>
 <asp:ListItem> Radio</asp:ListItem>
 <asp:ListItem> Couch</asp:ListItem>
 <asp:ListItem> lamp</asp:ListItem>
 <asp:ListItem> fire place</asp:ListItem>
 <asp:ListItem> table chairs</asp:ListItem>
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
        </p>
</div>
