<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/General.Master" AutoEventWireup="true" CodeBehind="Partial_User_Verification.aspx.cs" Inherits="USA_Rent_House_Project.Partial_User_Verification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <h2 class="form_heading">
                <asp:Label ID="Activate" runat="server" Text="Activate User Account">Partial User Verification</asp:Label>
                
            </h2>
    <div id="Div_Active_User" runat="server" visible="false">
        <p>
            Thank you for creating a account with us.<br />
            Your Ratemyhome user account has one step away.<br />
            <br />
            Please click on the link below to login to your account.<br />
            <asp:HyperLink ID="CreateLand_loadProfile" NavigateUrl="~/Land_load/Land_load_Profile_Add.aspx" runat="server" Visible="false">Create Landload Profile </asp:HyperLink>  | 
            <asp:HyperLink ID="CreateStudentProfile" NavigateUrl="~/Student/Student_Profile_Add.aspx" runat="server" Visible="false">Create Student Profile</asp:HyperLink> 
        </p>
    </div>
    <div id="DivNotActive" runat="server" visible="false">
        <p>
            Your Partial User Verification Details Are Incorrect!<br />
            Please Check your Email Again or Contact our Administrator
        </p>
    </div>
</asp:Content>
