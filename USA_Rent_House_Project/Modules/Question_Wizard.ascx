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
        <h3>
            Thank you in advance for partaking in our campain. The information that you are
            providing is completely ANONYMOUS, and will help guide future students that are
            looking to rent a place.</h3>
        <h3>
            It is a 6 question survey and at the end of it you will be entered for the prize.
            We will contact you via email. You must be a valid student with a vaild .edu (school)
            email address. Thanks
        </h3>
        <div id="ShowfullRegistration" runat="server" visible="false">
            Email address,
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            is already Registered profile with us. if you need to Recover Your Password Please
            click
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Secret_Question.aspx">Here</asp:HyperLink>
        </div>
        <asp:Wizard ID="QuestionWizard" runat="server" ActiveStepIndex="5" DisplaySideBar="False"
            OnLoad="QuestionWizard_Load">
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                    <div class="stepwrapper">
                        <div class="row">
                            <div class="label">
                                <asp:Label ID="EmailLabel" runat="server" CssClass="form_label">My University:</asp:Label>
                            </div>
                            <div class="input">
                                <asp:DropDownList ID="ddlMyUniversity" runat="server" ClientIDMode="Static" OnSelectedIndexChanged="ddlMyUniversity_SelectedIndexChanged"
                                    AutoPostBack="True" ValidationGroup="vg-step1">
                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                    <asp:ListItem>UCR </asp:ListItem>
                                    <asp:ListItem>Add My University</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ClientIDMode="Static"
                                    ControlToValidate="ddlMyUniversity" CssClass="failureNotification" Display="Dynamic"
                                    ErrorMessage="Require" InitialValue="-1" ValidationGroup="vg-step1"></asp:RequiredFieldValidator>
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
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ClientIDMode="Static"
                                    ErrorMessage="Require" ControlToValidate="txtUniversityName" ValidationGroup="vg-step1"
                                    Display="Dynamic" CssClass="failureNotification"></asp:RequiredFieldValidator>
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
                                    ErrorMessage="Require" ControlToValidate="txtUniversityAddress" ValidationGroup="vg-step1"
                                    Display="Dynamic" CssClass="failureNotification"></asp:RequiredFieldValidator>
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
                                <asp:DropDownList ID="ddlTypeOfResidence" runat="server" ClientIDMode="Static" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                                    AutoPostBack="True">
                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                    <asp:ListItem>On Campus</asp:ListItem>
                                    <asp:ListItem>Off Campus</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ClientIDMode="Static"
                                    ControlToValidate="ddlTypeOfResidence" Display="Dynamic" ErrorMessage="Require"
                                    InitialValue="-1" ValidationGroup="vg-step2" CssClass="failureNotification"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="label">
                                <asp:Label ID="Label4" runat="server" CssClass="form_label">Select your option:</asp:Label>
                            </div>
                            <div class="input">
                                <asp:DropDownList ID="ddlOnCampusSelection" runat="server" ClientIDMode="Static">
                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                    <asp:ListItem>Dorms</asp:ListItem>
                                    <asp:ListItem>Apartments</asp:ListItem>
                                    <asp:ListItem>Family Housing</asp:ListItem>
                                    <asp:ListItem>Greek Housing</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="ddlOffCampusSelection" runat="server" ClientIDMode="Static"
                                    Visible="False">
                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                    <asp:ListItem>Apartments</asp:ListItem>
                                    <asp:ListItem>House</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ClientIDMode="Static"
                                    ControlToValidate="ddlOffCampusSelection" Display="Dynamic" ErrorMessage="Require"
                                    InitialValue="-1" ValidationGroup="vg-step2" CssClass="failureNotification"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ClientIDMode="Static"
                                    ControlToValidate="ddlOnCampusSelection" Display="Dynamic" ErrorMessage="Require"
                                    InitialValue="-1" ValidationGroup="vg-step2" CssClass="failureNotification"></asp:RequiredFieldValidator>
                                <br />
                            </div>
                        </div>
                        <div class="row">
                            <asp:Button ID="btnStep2" runat="server" CssClass="actionbutton" Text="Continue"
                                ValidationGroup="vg-step2" OnClick="btnStep2_Click" ClientIDMode="Static" />
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
                            <span class="form_comments">(eg complex name, dorm name, apt complex name, condo complex name, townhouse complex name, or if it’s a house please leave blank)</span>
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
                            <asp:Button ID="btnStep3" runat="server" ClientIDMode="Static" CssClass="actionbutton"
                                Text="Next" ValidationGroup="vg-step3" OnClick="btnStep3_Click" />
                        </div>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep4" runat="server" Title="Step 4">
                    <div class="stepwrapper">
                        <div class="input">
                            <h3>
                                What your thoughts/opinion about your current living situation?<br />
                                Is there something that you would change? Or is there something that need to be
                                brought to attention? Is the “Property Owner” doing a good job?<br></br>
                                What are some things you like or dislike?</h3>
                            <br />
                            <div class="row">
                                <div class="label">
                                    <asp:Label ID="Label3" runat="server" CssClass="form_label">Comment:<span class="form_comments"></span></asp:Label>
                                </div>
                                <div class="input">
                                    <asp:TextBox ID="txtComment" runat="server" CssClass="textEntry textbox_w1" MaxLength="100"
                                        ClientIDMode="Static" TextMode="MultiLine" Height="100" Width="250"></asp:TextBox>
                                    <br />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <asp:Button ID="btnStep4" runat="server" ClientIDMode="Static" CssClass="actionbutton"
                                Text="Next" ValidationGroup="vg-step3" OnClick="btnStep4_Click" />
                        </div>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep5" runat="server" Title="Step 5">
                    <div class="stepwrapper">
                        <div class="row">
                            <div class="label">
                                <asp:Label ID="LabelFirstName" runat="server" CssClass="form_label">Email:</asp:Label>
                            </div>
                            <div class="input">
                                <asp:TextBox ID="txtEmail" ClientIDMode="Static" runat="server" CssClass="textEntry textbox_w1"
                                    MaxLength="50"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ClientIDMode="Static"
                                    ControlToValidate="txtEmail" CssClass="failureNotification" Display="Dynamic"
                                    ErrorMessage="Required" ValidationGroup="vg-step4"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ClientIDMode="Static"
                                    ControlToValidate="txtEmail" CssClass="failureNotification" Display="Dynamic"
                                    ErrorMessage="Invalid email address." ToolTip="Enter valid email address." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    ValidationGroup="vg-step4"></asp:RegularExpressionValidator>
                                <br></br>
                            </div>
                        </div>
                        <div class="row">
                            <span class="form_comments">Only for current students. Please enter a valid edu (school)
                                email address to be entered in contest. Must be a valid email address that can be
                                verified. </span>
                        </div>
                        <div class="row">
                            <asp:Button ID="btnStep5" runat="server" CssClass="actionbutton" Text="Save" ValidationGroup="vg-step4"
                                ClientIDMode="Static" OnClick="btnStep5_Click" />
                        </div>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep6" runat="server" Title="Step 6">
                    <div class="stepwrapper">
                        <h2>
                            Thank you for participating in our campaign. Your first entry has been saved. If you are in a winning position we will contact you. Please feel free to add more residences and reviews if you so desire, although these will not change your initial position.
                        </h2>
                        <div class="row">
                            <asp:Button ID="btnHome" runat="server" CssClass="actionbutton" Text="Finish" ValidationGroup="vg-step4"
                                ClientIDMode="Static" OnClick="btnStep6_Click" />
                        </div>
                    </div>
                </asp:WizardStep>
            </WizardSteps>
            <NavigationButtonStyle CssClass="hidden" />
        </asp:Wizard>
    </div>
</div>
