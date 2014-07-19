<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" Inherits="USA_Rent_House_Project.Modules.Login" %>

<div class="form_layer1">
    <h2 class="form_heading"> <asp:Image ID="imgLogo" runat="server" ImageUrl="~/Images/House_Logo.jpg"  Width="220" Height="165"  CssClass=""/>   
       Login to your Account
    </h2>

    <asp:HyperLink ID="FacebookLogin" runat="server" NavigateUrl="www.facebook.com">Login Using Facebook</asp:HyperLink>
    <br />
    <asp:Login ID="LoginUser" runat="server" EnableViewState="false" RenderOuterTable="false"
        DestinationPageUrl="~/Account/Login.aspx" OnAuthenticate="LoginUser_Authenticate">
        <LayoutTemplate>
            <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
             <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification" 
                 ValidationGroup="LoginUserValidationGroup"/>
                 <p> Please enter your username / email and password.</p>
            <div class="accountInfo">
                <fieldset class="form_layer2">
                    <div class="login_main">
                        <div class="login_left">
                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="login_label">Login ID:</asp:Label>
                            <asp:TextBox ID="UserName" runat="server" CssClass="login_textEntry"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                CssClass="failureNotification" ErrorMessage="Email is required." ToolTip="Email is required."
                                ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                        </div>
                        <div class="login_right">
                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="login_label">Password:</asp:Label>
                            <asp:TextBox ID="Password" runat="server" CssClass="login_textEntry" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required."
                                ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="clear">
                    </div>
                   
                </fieldset>
                <p class="submitButton">
                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" CssClass="login_button"
                        ValidationGroup="LoginUserValidationGroup"  />
                </p>
            </div>
        </LayoutTemplate>
    </asp:Login>
    <br />
     <asp:HyperLink ID="Requestpassword" runat="server" NavigateUrl="">Request new password</asp:HyperLink>
    <br />
     <asp:HyperLink ID="CreateStudentProfile" runat="server" NavigateUrl="~/Student/Student_Profile_Add.aspx">Create student Profile</asp:HyperLink> |  <asp:HyperLink ID="CreateHouseProfile" runat="server" NavigateUrl="~/Land_load/Land_load_Profile_Add.aspx">Create House Owener Profile</asp:HyperLink>

</div>
