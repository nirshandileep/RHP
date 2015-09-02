<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Question_Wizard.ascx.cs"
    Inherits="USA_Rent_House_Project.Question_Wizard" %>
<script src="../../Scripts/jquery-2.1.4.min.js" type="text/javascript"></script>
<script src="../../Scripts/jquery.maskedinput.min.js" type="text/javascript"></script>
<style type="text/css">
    .hidden
    {
        display: none;
    }
    
    .label
    {
        width: 200px;
        float: left;
    }
    
    .input
    {
        width: 300px;
        float: left;
    }
    
    .stepwrapper
    {
        padding-top: 40px;
    }
    
    .failureNotification
    {
        font-size: -1.8em !important;
    }
    
    .row
    {
        height: 70px;
    }
</style>
<div class="wizardcontent">
    <div>
        <h2 class="form_heading">
            Please answer few questions</h2>
        <div id="ShowfullRegistration" runat="server" visible="false">
            Email address,
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            is already Registered profile with us. if you need to Recover Your Password Please
            click
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Secret_Question.aspx">Here</asp:HyperLink>
        </div>
        <asp:Wizard ID="QuestionWizard" runat="server" ActiveStepIndex="3" 
            DisplaySideBar="False">
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                    <div class="stepwrapper">
                        <div class="row">
                            <div class="label">
                                <asp:Label ID="EmailLabel" runat="server" CssClass="form_label">My University:</asp:Label>
                            </div>
                            <div class="input">
                                <asp:DropDownList ID="ddlMyUniversity" runat="server" ClientIDMode="Static" 
                                    OnSelectedIndexChanged="ddlMyUniversity_SelectedIndexChanged" >
                                    <asp:ListItem>UCR </asp:ListItem>
                                    <asp:ListItem>Add My University</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row" runat="server" id="divUniName" visible="false">
                            <div class="label">
                                <asp:Label ID="UniNameLabel" runat="server" CssClass="form_label">University Name:<span class="form_comments"></span></asp:Label>
                            </div>
                            <div class="input">
                                <asp:TextBox ID="txtUniversityName" runat="server" CssClass="textEntry textbox_w1"
                                    MaxLength="50" ClientIDMode="Static"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ClientIDMode="Static"
                                    ErrorMessage="Require" ControlToValidate="txtUniversityName" 
                                    ValidationGroup="vg-step1" Display="Dynamic"   CssClass="failureNotification" ></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row" runat="server" id="divUniAddress" visible="false">
                            <div class="label">
                                <asp:Label ID="UniAddressLabel" runat="server" CssClass="form_label">University Address:<span class="form_comments"></span></asp:Label>
                            </div>
                            <div class="input">
                                <asp:TextBox ID="txtUniversityAddress" ClientIDMode="Static" runat="server" CssClass="textEntry textbox_w1"
                                    MaxLength="100"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ClientIDMode="Static"
                                    ErrorMessage="Require" ControlToValidate="txtUniversityAddress" 
                                    ValidationGroup="vg-step1" Display="Dynamic"   CssClass="failureNotification" ></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <asp:Button ID="btnStep1" runat="server" CssClass="actionbutton" Text="Continue"
                                ValidationGroup="vg-step1" OnClick="btnStep1_Click" ClientIDMode="Static" />
                        </div>
                        <div>
                        </div>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                    <div class="stepwrapper">
                        <div class="row">
                            <div class="label">
                                <asp:Label ID="LabelQuestion" runat="server" CssClass="form_label">Type of Residence:</asp:Label>
                            </div>
                            <div class="input">
                                <asp:DropDownList ID="ddlTypeOfResidence" runat="server" ClientIDMode="Static" 
                                    OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem>On Campus</asp:ListItem>
                                    <asp:ListItem>Off Campus</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="label">
                                <asp:Label ID="Label4" runat="server" CssClass="form_label">Select your option:</asp:Label>
                            </div>
                            <div class="input">
                                <asp:DropDownList ID="ddlOnCampusSelection" runat="server" ClientIDMode="Static">
                                    <asp:ListItem>Dorms</asp:ListItem>
                                    <asp:ListItem>Apartments</asp:ListItem>
                                    <asp:ListItem>Family Housing</asp:ListItem>
                                    <asp:ListItem>Greek Housing</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="ddlOffCampusSelection" runat="server" 
                                    ClientIDMode="Static" Visible="False">
                                    <asp:ListItem>Apartments</asp:ListItem>
                                    <asp:ListItem>House</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <asp:Button ID="btnStep2" runat="server" CssClass="actionbutton" Text="Continue"
                                ValidationGroup="vg-step2" OnClick="btnStep3_Click" ClientIDMode="Static"/>
                        </div>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep3" runat="server" Title="Step 3">
                    <div class="stepwrapper">
                        <div class="row">
                            <div class="label">
                                <asp:Label ID="Label2" runat="server" CssClass="form_label">Name of Residence:<span class="form_comments"></span></asp:Label>
                            </div>
                            <div class="input">
                                <asp:TextBox ID="txtNameofResidence" runat="server" CssClass="textEntry textbox_w1"
                                    MaxLength="100" ClientIDMode="Static"></asp:TextBox>
                                <br />
                            </div>
                        </div>
                        <div class="row">
                            <div class="label">
                                <asp:Label ID="Label5" runat="server" CssClass="form_label">Address of Residence:<span class="form_comments"></span></asp:Label>
                            </div>
                            <div class="input">
                                <asp:TextBox ID="txtAddressofResidence" runat="server" CssClass="textEntry textbox_w1"
                                    MaxLength="100" ClientIDMode="Static"></asp:TextBox>
                                <br />
                            </div>
                        </div>
                        <div class="row">
                            <asp:Button ID="btnStep3" runat="server"  ClientIDMode="Static" CssClass="actionbutton" Text="Next" ValidationGroup="vg-step3"
                                OnClick="btnStep3_Click" />
                        </div>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep4" runat="server" Title="Step 4">
                    <div class="stepwrapper">
                        <div class="row">
                            <div class="label">
                                <asp:Label ID="LabelFirstName" runat="server" CssClass="form_label">Email:</asp:Label>
                            </div>
                            <div class="input">
                                <asp:TextBox ID="txtEmail" ClientIDMode="Static" runat="server" CssClass="textEntry textbox_w1" MaxLength="50"></asp:TextBox>
                                <br>
                                </br>
                                  <br></br>
                                  <asp:RequiredFieldValidator Display="Dynamic" ID="EmailRequired" runat="server" ControlToValidate="txtEmail"
                                    CssClass="failureNotification" ErrorMessage="Require" ValidationGroup="vg-step4"  ClientIDMode="Static"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator2"
                                    runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    ControlToValidate="txtEmail" CssClass="failureNotification" ValidationGroup="vg-step4"
                                    ErrorMessage="Invalid email address." ToolTip="Enter valid email address." ClientIDMode="Static"> </asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="row">
                            <span class="form_comments">
                                Only for current students. Please enter a valid edu (school) email address to be
                                entered in contest. Must be a valid email address that can be verified.
                          </span>
                           
                        </div>
                        <div class="row">
                            <asp:Button ID="btnStep4" runat="server" CssClass="actionbutton" Text="Save" 
                                ValidationGroup="vg-step4" ClientIDMode="Static" OnClick="btnStep4_Click" />
                        </div>
                    </div>
                </asp:WizardStep>
            </WizardSteps>
            <NavigationButtonStyle CssClass="hidden" />
        </asp:Wizard>
    </div>
</div>
