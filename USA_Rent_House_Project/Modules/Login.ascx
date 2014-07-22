<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" Inherits="USA_Rent_House_Project.Modules.Login" %>
<div id="div_Home">
    <div id="two-col-1">
        <div class="logintext">
            <p>
                I'm a student,
                <br />
                looking for a house</p>
            <div class="signupfloatright">
                <asp:HyperLink ID="CreateStudentProfileID" CssClass="signupbutton" runat="server"
                    NavigateUrl="~/Student/Student_Profile_Add.aspx">Sign Up</asp:HyperLink>
            </div>
            <div class="clear">
            </div>
        </div>
        <div class="logintext">
            <p>
                I'm a house owner,
                <br />
                need to rent my house</p>
            <div class="signupfloatright">
                <asp:HyperLink ID="CreateHouseProfileID" CssClass="signupbutton" runat="server" NavigateUrl="~/Land_load/Land_load_Profile_Add.aspx">Sign Up</asp:HyperLink>
            </div>
            <div class="clear">
            </div>
        </div>
    </div>
    <div id="two-col-2">
        <asp:HyperLink ID="FacebookLogin" runat="server" NavigateUrl="~/Facebook-Login.aspx">Login Using Facebook</asp:HyperLink>
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
               
            
            <p class="submitButton">
                <asp:Button ID="LoginButton" runat="server" Width="100%" CommandName="Login" Text="Log In" CssClass="actionbutton"
                    ValidationGroup="LoginUserValidationGroup" onclick="LoginButton_Click" />
            </p>
            
            <div class="clear"></div>

            <div class="centerfloat">
            <asp:HyperLink ID="RecoverPassword" CssClass="loginlinks" runat="server" NavigateUrl="~/Secret_Question.aspx">Recover my password</asp:HyperLink>  
           
            <asp:HyperLink ID="ChangePassword"  CssClass="loginlinks" runat="server" NavigateUrl="~/Change_Password.aspx">Change password</asp:HyperLink>
            <asp:HyperLink ID="Requestpassword" CssClass="loginlinks" runat="server" NavigateUrl="~/Request_New_Password.aspx">Request a new password</asp:HyperLink> 
            </div>
        </div>
    </div>
    <div class="clear">
    </div>
</div>
