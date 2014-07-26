<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PropertyFeatureAdd.ascx.cs" Inherits="USA_Rent_House_Project.Administrator.Modules.PropertyFeatureAdd" %>

<div id="div_Property_Feature_Add">
    <h2 class="form_heading">
    Property Feature Add
    </h2>
    
      <div id="formwrapper">
      <asp:ValidationSummary ID="PropertyFeatureAddValidationSummary" runat="server" CssClass="failureNotification"
        ValidationGroup="PropertyFeatureAddValidationGroup" />
            <div id="forminner">
            <p>
                <asp:Label ID="LabelFeatureName" runat="server" AssociatedControlID="FeatureName"
                    CssClass="form_label">Feature Name:</asp:Label>
                <asp:TextBox ID="FeatureName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="FeatureNameRequired" runat="server" ControlToValidate="FeatureName"
                    CssClass="failureNotification" ErrorMessage="Feature Name is required."
                    ToolTip="Feature Name is required." ValidationGroup="PropertyFeatureAddValidationGroup">*</asp:RequiredFieldValidator>
            </p>
             <p>
                <asp:Label ID="LabelFeatureDescription" runat="server" AssociatedControlID="FeatureDescription"
                    CssClass="form_label">Feature Description:</asp:Label>
                <asp:TextBox ID="FeatureDescription" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="FeatureDescriptionRequired" runat="server" ControlToValidate="FeatureDescription"
                    CssClass="failureNotification" ErrorMessage="Feature Description is required."
                    ToolTip="Feature Description is required." ValidationGroup="PropertyFeatureAddValidationGroup">*</asp:RequiredFieldValidator>
               
            </p>
            
      </div>
        <p class="submitButton">
            <asp:Button ID="CreatFeature" runat="server" 
                CssClass="actionbutton" CommandName="MoveNext"
                Text="Add Feature" ValidationGroup="PropertyFeatureAddValidationGroup" 
                onclick="CreatFeature_Click"  />
        </p>
    </div>
</div>
