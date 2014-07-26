<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PropertyFeatureEdit.ascx.cs" Inherits="USA_Rent_House_Project.Administrator.Modules.PropertyFeatureEdit" %>

<div id="div_Property_Feature_Edit">
    <h2 class="form_heading">
    Property Feature Add
    </h2>
    
      <div id="formwrapper">
      <asp:ValidationSummary ID="PropertyFeatureEditValidationSummary" runat="server" CssClass="failureNotification"
        ValidationGroup="PropertyFeatureEditValidationGroup" />
            <div id="forminner">
            <p>
                <asp:Label ID="LabelFeatureName" runat="server" AssociatedControlID="FeatureName"
                    CssClass="form_label">Feature Name:</asp:Label>
                <asp:TextBox ID="FeatureName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="FeatureNameRequired" runat="server" ControlToValidate="FeatureName"
                    CssClass="failureNotification" ErrorMessage="Feature Name is required."
                    ToolTip="Feature Name is required." ValidationGroup="PropertyFeatureEditValidationGroup">*</asp:RequiredFieldValidator>
            </p>
             <p>
                <asp:Label ID="LabelFeatureDescription" runat="server" AssociatedControlID="FeatureDescription"
                    CssClass="form_label">Feature Description:</asp:Label>
                <asp:TextBox ID="FeatureDescription" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="FeatureDescriptionRequired" runat="server" ControlToValidate="FeatureDescription"
                    CssClass="failureNotification" ErrorMessage="Feature Description is required."
                    ToolTip="Feature Description is required." ValidationGroup="PropertyFeatureEditValidationGroup">*</asp:RequiredFieldValidator>
               
            </p>
             <p>
                <asp:Label ID="LabelStatus" runat="server" AssociatedControlID="Status" CssClass="form_label">Status:</asp:Label>
                <asp:DropDownList ID="Status" runat="server">
                    <asp:ListItem>Active</asp:ListItem>
                </asp:DropDownList>
            </p>

      </div>
        <p class="submitButton">
            <asp:Button ID="EditFeature" runat="server" 
                CssClass="actionbutton" CommandName="MoveNext"
                Text="Edit Feature" ValidationGroup="PropertyFeatureAddValidationGroup" 
                onclick="EditFeature_Click"   />
        </p>
    </div>
</div>
