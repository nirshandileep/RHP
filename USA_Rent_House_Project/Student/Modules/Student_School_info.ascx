<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_School_info.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_School_info" %>
<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<div id="div_register_User">
    <h2 class="form_heading">
        Student School Info
    </h2>
   
    <div id="formwrapper">
        <asp:ValidationSummary ID="SaveSchoolValidationSummary" runat="server" CssClass="failureNotification"
            ValidationGroup="SaveSchoolValidationGroup" />
        <div id="forminner">
            <asp:HiddenField ID="HiddenFieldSchoolId" runat="server" />

            <p>
                <asp:Label ID="LabelSchoolName" runat="server" AssociatedControlID="DrpSchoolName"
                    CssClass="form_label">My Current University:</asp:Label>
                <dx:ASPxComboBox ID="DrpSchoolName" runat="server"  Width="52%"
                    AutoResizeWithContainer="True" TextFormatString="{0} ({1}, {2})" DropDownRows="10" 
                    IncrementalFilteringMode="Contains" Theme="DevEx" 
                    EnableDefaultAppearance="False" ShowShadow="False">
                    <Columns>
                        <dx:ListBoxColumn FieldName="Name" Name="Name" />
                        <dx:ListBoxColumn FieldName="StreetAddress" Name="Address" />
                        <dx:ListBoxColumn FieldName="City" Name="City" />
                    </Columns>
                    <ValidationSettings Display="Dynamic">
                    </ValidationSettings>
                </dx:ASPxComboBox>
                <asp:RequiredFieldValidator ID="SchoolNameRequired" runat="server" ErrorMessage="Please select School"
                    CssClass="failureNotification" ControlToValidate="DrpSchoolName" ValidationGroup="SaveSchoolValidationGroup"
                    InitialValue="-1">*</asp:RequiredFieldValidator>
            </p>

              <p>
                <asp:Label ID="Labelpreviousschoolinfo" runat="server" AssociatedControlID="DRPpreviousschoolinfo" CssClass="form_label">Previous School Info:</asp:Label>
                <asp:DropDownList ID="DRPpreviousschoolinfo" runat="server" 
                     onselectedindexchanged="DRPpreviousschoolinfo_SelectedIndexChanged" AutoPostBack="true">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="Requiredpreviousschoolinfo" runat="server" ErrorMessage="Please select previous school info"
                    CssClass="failureNotification" ControlToValidate="DRPpreviousschoolinfo" ValidationGroup="SaveSchoolValidationGroup"
                    InitialValue="-1">*</asp:RequiredFieldValidator>
            </p>

             <p id="previousschoolID" runat="server" visible="false">
                <asp:Label ID="Labelpreviousschool" runat="server" AssociatedControlID="previousschool" CssClass="form_label">Previous School:</asp:Label>
                 <asp:TextBox ID="previousschool" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Requiredpreviousschool" runat="server" ErrorMessage="Please enter previous school"
                    CssClass="failureNotification" ControlToValidate="previousschool" ValidationGroup="SaveSchoolValidationGroup">*</asp:RequiredFieldValidator>
            </p>

            

             <p>
                <asp:Label ID="Labelstartdate" runat="server" AssociatedControlID="DRPstartMonth" CssClass="form_label">Start Date of Current University:</asp:Label>

                <asp:DropDownList ID="DRPstartMonth" runat="server" Width="90px" >
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please select start Month of current University"
                    CssClass="failureNotification" ControlToValidate="DRPstartMonth" ValidationGroup="SaveSchoolValidationGroup"
                    InitialValue="-1">*</asp:RequiredFieldValidator>

                <asp:DropDownList ID="DRPstartYear" runat="server"  Width="90px"  >
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please select start Year of current University"
                    CssClass="failureNotification" ControlToValidate="DRPstartYear" ValidationGroup="SaveSchoolValidationGroup"
                    InitialValue="-1">*</asp:RequiredFieldValidator>

                <%-- <asp:TextBox ID="startMonth" runat="server" CssClass="MobiletextEntry" MaxLength="2" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="Requiredstartdate" runat="server" ErrorMessage="Please enter start Month of current University"
                    CssClass="failureNotification" ControlToValidate="startMonth" ValidationGroup="SaveSchoolValidationGroup">*</asp:RequiredFieldValidator>

                    <asp:TextBox ID="startYear" runat="server" CssClass="MobiletextEntry" MaxLength="4" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter start Year of current University"
                    CssClass="failureNotification" ControlToValidate="startYear" ValidationGroup="SaveSchoolValidationGroup">*</asp:RequiredFieldValidator>--%>
            </p>

            <p>
                <asp:Label ID="LabelStatus" runat="server" AssociatedControlID="Status" CssClass="form_label">Status:</asp:Label>
                <asp:DropDownList ID="Status" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="StatusRequired" runat="server" ErrorMessage="Please select Status"
                    CssClass="failureNotification" ControlToValidate="Status" ValidationGroup="SaveSchoolValidationGroup"
                    InitialValue="-1">*</asp:RequiredFieldValidator>
            </p>

            <p>
                <asp:Label ID="LabelCurentMajor" runat="server" AssociatedControlID="DRPCurentMajor" CssClass="form_label">Curent Major:</asp:Label>
                <asp:DropDownList ID="DRPCurentMajor" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredCurentMajor" runat="server" ErrorMessage="Please Enter Curent Major"
                    CssClass="failureNotification" ControlToValidate="DRPCurentMajor" ValidationGroup="SaveSchoolValidationGroup"
                    InitialValue="-1">*</asp:RequiredFieldValidator>
            </p>

            <p>
                <asp:Label ID="LabelYear" runat="server" AssociatedControlID="DRPYear" CssClass="form_label">Expected Graduation Year:</asp:Label>
                <asp:DropDownList ID="DRPYear" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="YearRequired" runat="server" ErrorMessage="Please select Year"
                    CssClass="failureNotification" ControlToValidate="DRPYear" ValidationGroup="SaveSchoolValidationGroup"
                    InitialValue="-1">*</asp:RequiredFieldValidator>
            </p>
            

           

           <%-- <p>
                <asp:Label ID="LabelLandLoadName" runat="server" AssociatedControlID="LandLoadName"
                    CssClass="form_label">Land load Name:</asp:Label>
                <asp:TextBox ID="LandLoadName" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="SLandLoadNameRequiredFieldValidator" runat="server"
                    ControlToValidate="LandLoadName" CssClass="failureNotification" ErrorMessage="Land load Name is required."
                    ToolTip="Land load Name is required." ValidationGroup="SaveSchoolValidationGroup">*</asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label ID="LabelLandLoadPlace" runat="server" AssociatedControlID="LandLoadPlace"
                    CssClass="form_label">Land Load Place:</asp:Label>
                <asp:TextBox ID="LandLoadPlace" runat="server" CssClass="textEntry textbox_w1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="LandLoadPlaceRequiredFieldValidator" runat="server"
                    ControlToValidate="LandLoadPlace" CssClass="failureNotification" ErrorMessage="Land Load Place is required."
                    ToolTip="Land Load Place is required." ValidationGroup="SaveSchoolValidationGroup">*</asp:RequiredFieldValidator>
            </p>--%>
        </div>
        <p class="submitButton">
            <asp:Button ID="SaveSchoolButton" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                Text="Save" ValidationGroup="SaveSchoolValidationGroup" 
                onclick="SaveSchoolButton_Click" />
            <asp:Label ID="lblError" runat="server" CssClass="failureNotification" Text=""></asp:Label>
        </p>
    </div>
</div>
