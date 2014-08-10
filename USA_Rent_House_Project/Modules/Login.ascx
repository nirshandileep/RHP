<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" Inherits="USA_Rent_House_Project.Modules.Login" %>
<div id="div_Home">
   
    <div class="center-col">
        <asp:HyperLink ID="FacebookLogin" CssClass="facebookloginclass" Visible="false" runat="server">Login Using Facebook</asp:HyperLink>
        <h2 class="form_heading">
            Login to your Account
        </h2>
        <div id="formwrapper">
        <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification"
                            ValidationGroup="LoginUserValidationGroup" />
            <div id="forminner">
                <asp:Login ID="LoginUser" runat="server" EnableViewState="false" RenderOuterTable="false"
                    DestinationPageUrl="~/Account/Login.aspx">
                    <LayoutTemplate>
                        <span class="failureNotification">
                            <asp:Literal ID="FailureText" runat="server"></asp:Literal>
                        </span>
                        
                        <div class="accountInfo">
                            <div class="login_main">
                                <div class="login_left">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="loginlabel">Login ID:</asp:Label>
                                    <asp:TextBox ID="UserName" runat="server" CssClass="logintextboxes"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                        CssClass="failureNotification" ErrorMessage="Email is required." ToolTip="Email is required."
                                        ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                                </div>
                                <div class="login_right">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="loginlabel">Password:</asp:Label>
                                    <asp:TextBox ID="Password" runat="server" CssClass="logintextboxes" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                        CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required."
                                        ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                    </LayoutTemplate>
                </asp:Login>
            </div>        
<br />
                <asp:Button ID="LoginButton" runat="server" Width="95%" CommandName="Login" Text="Log In" CssClass="actionbutton"
                    ValidationGroup="LoginUserValidationGroup" onclick="LoginButton_Click" />
   
            
            <div class="clear"></div>

            <div class="centerfloat">
            <p class="button">
            <asp:HyperLink ID="CreateProfile" Visible="false" CssClass="loginlinks" runat="server" >Create new profile</asp:HyperLink>  
           
            <asp:HyperLink ID="ChangePassword"  CssClass="loginlinks" runat="server" NavigateUrl="~/Secret_Question.aspx">Recover my password</asp:HyperLink>
          </p>
            </div>
        </div>
    </div>
    <div class="clear">
    </div>
</div>
