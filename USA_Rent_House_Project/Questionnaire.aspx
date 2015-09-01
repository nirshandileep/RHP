<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/General.Master" AutoEventWireup="true" CodeBehind="Questionnaire.aspx.cs" Inherits="USA_Rent_House_Project.Questionnaire" %>
<%@ Register src="Modules/Question_Wizard.ascx" tagname="Question_Wizard" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div style="height:500px;">
        <div class="topimage">
            <a href="../Default.aspx">
                <img src="../../Images/Registration/logo.jpg" />
            </a>
        </div>
        <div class="wizardouterwrapper">
            
            <uc1:Question_Wizard ID="Question_Wizard1" runat="server" />
            
        </div>
        <div class="verticalstars">
            <img src="../../Images/Registration/verticalstars.jpg" />
        </div>
    </div>
</asp:Content>
