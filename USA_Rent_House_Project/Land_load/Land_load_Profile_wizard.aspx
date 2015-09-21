<%@ Page Title="Landlord Profile info " Language="C#" MasterPageFile="~/Master_Pages/General.Master"
    AutoEventWireup="true" CodeBehind="Land_load_Profile_wizard.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Land_load_Profile_Add" %>

<%@ Register Src="~/Land_load/Modules/Landloard_Profile_Wizard.ascx" TagPrefix="uc1"
    TagName="Landloard_Profile_Wizard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    

    <div style="height: 500px;">
        <div class="topimage">
            <a href="../Default.aspx">
                <img src="../../Images/Registration/logo.jpg" />
            </a>
        </div>
        <div class="wizardouterwrapper">

            <uc1:Landloard_Profile_Wizard runat="server" ID="Landloard_Profile_Wizard" />
        </div>
        <div class="verticalstars">
            <img src="../../Images/Registration/verticalstars.jpg" />
        </div>
    </div>

</asp:Content>
