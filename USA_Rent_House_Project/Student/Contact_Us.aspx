<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Master_Pages/Student.Master"
    AutoEventWireup="true" CodeBehind="Contact_Us.aspx.cs" Inherits="USA_Rent_House_Project.Student.Contact_Us" %>

<%@ Register Src="~/Student/Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc1" %>
<%@ Register Src="~/Student/Modules/Student_Profile_Header.ascx" TagName="Student_Profile_Header"
    TagPrefix="uc1" %>    
<%@ Register Src="~/Student/Modules/Ctr_QuickLinks.ascx" TagName="QuickLinks" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Student_Profile_Header ID="Student_Profile_HeaderID" runat="server" />
    <div id="currentHomeStudent" runat="server">
        <div id="LeftPanel" runat="server">
            <uc1:Menu_Bar ID="Menu_Bar1" runat="server" />
        </div>
        <div id="RightPanel" runat="server">
               <uc1:QuickLinks ID="QuickLinksid" runat="server" />
            <div class="clear">
            </div>
            <h2 class="form_heading">
                Contact Us
            </h2>
            <p>

                <table>
                <tr>
                        <td>  <b>Nirmal J Abeygunaratne</b> 
                        </td>
                        <td>   (Founder and President/CEO)
                        </td>
                    </tr>
                    <tr>
                        <td> <b>Address</b> 
                        </td>
                        <td> 4685 Chicago Ave
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td> Riverside
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td> CA 92507
                        </td>
                    </tr>
                </table>
      
            </p>
            <div id="formwrapper">
                <asp:ValidationSummary ID="MessageValidationSummary" runat="server" CssClass="failureNotification"
                    ValidationGroup="MessageValidationGroup" />
                <div id="forminner">
                    <p>
                        <asp:Label ID="LabelFirstName" runat="server" AssociatedControlID="Name" CssClass="form_label">Name:</asp:Label>
                        <asp:TextBox ID="Name" runat="server" CssClass="textEntry textbox_w2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="Name"
                            CssClass="failureNotification" ErrorMessage="Name is required." ToolTip="Name is required."
                            ValidationGroup="MessageValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label ID="Label1" runat="server" AssociatedControlID="Email" CssClass="form_label">Email:</asp:Label>
                        <asp:TextBox ID="Email" runat="server" CssClass="textEntry textbox_w2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                            CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required."
                            ValidationGroup="MessageValidationGroup">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ControlToValidate="Email" CssClass="failureNotification" ValidationGroup="MessageValidationGroup"
                            ErrorMessage="Enter valid email address." ToolTip="Enter valid email address.">* </asp:RegularExpressionValidator>
                    </p>
                    <p>
                        <asp:Label ID="LabelSubject" runat="server" AssociatedControlID="Subject" CssClass="form_label">Subject:</asp:Label>
                        <asp:TextBox ID="Subject" runat="server" CssClass="textEntry textbox_w2" TextMode="SingleLine"
                            Columns="50" Rows="1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="SubjectRequired" runat="server" ControlToValidate="Subject"
                            CssClass="failureNotification" ErrorMessage="Subject is required." ToolTip="Subject is required."
                            ValidationGroup="MessageValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label ID="LabelMessage" runat="server" AssociatedControlID="Message" CssClass="form_label">Message:</asp:Label>
                        <asp:TextBox ID="Message" runat="server" CssClass="textEntry textbox_w1" TextMode="MultiLine"
                            Columns="50" Rows="10"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="MessageRequired" runat="server" ControlToValidate="Message"
                            CssClass="failureNotification" ErrorMessage="Message is required." ToolTip="Message is required."
                            ValidationGroup="MessageValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                </div>
                <p class="submitButton">
                    <asp:Button ID="MessageButton" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                        Text="Send Message" ValidationGroup="MessageValidationGroup" OnClick="MessageButton_Click" />
                    <asp:Label ID="lblError" runat="server" CssClass="failureNotification" Text=""></asp:Label>
                </p>
            </div>
        </div>
    </div>
</asp:Content>
