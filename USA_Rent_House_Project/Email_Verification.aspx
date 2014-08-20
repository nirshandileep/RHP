<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/General.Master" AutoEventWireup="true"
    CodeBehind="Email_Verification.aspx.cs" Inherits="USA_Rent_House_Project.Email_Verification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <h2 class="form_heading">
                <asp:Label ID="Activate" runat="server" Text="Activate User Account">Activate User Account</asp:Label>
                
            </h2>
    <div id="Div_Active_User" runat="server" visible="false">
        <p>
            Thank you for creating a account with us.<br />
            Your Ratemyhome user account has been activated successfully.<br />
            <br />
            Please click on the link below to login to your account.<br />
            <asp:HyperLink ID="HyperLinkLogin" NavigateUrl="~/Login.aspx" runat="server">Login</asp:HyperLink>
        </p>
    </div>
    <div id="DivAllreadyActivated" runat="server" visible="false">
        <p>
            Your account is already active!
            <br />
            To log in again click here
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Login.aspx" runat="server">Login</asp:HyperLink>
        </p>
    </div>
    <div id="DivNotActive" runat="server" visible="false">
        <p>
            Your Activation Details Are Incorrect!<br />
            Please Check your Email Again or Contact our Administrator
        </p>
    </div>
</asp:Content>
