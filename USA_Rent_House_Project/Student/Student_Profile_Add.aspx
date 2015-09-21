<%@ Page Title="Student Profile info" Language="C#" MasterPageFile="~/Master_Pages/General.Master"
    AutoEventWireup="true" CodeBehind="Student_Profile_Add.aspx.cs" Inherits="USA_Rent_House_Project.Student.Student_Profile_Add" %>

<%@ Register Src="Modules/Student_Profile_info_Add.ascx" TagName="Student_Profile_info_Add"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Student_Profile_Wizard.ascx" TagName="Student_Profile_Wizard"
    TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--<uc1:Student_Profile_info_Add ID="Student_Profile_info_AddID" runat="server" />--%>

    <div style="height:500px;">
        <div class="topimage">
            <a href="../Default.aspx">
                <img src="../../Images/Registration/logo.jpg" />
            </a>
        </div>
        <div class="wizardouterwrapper">
            <uc2:Student_Profile_Wizard ID="Student_Profile_Wizard1" runat="server" />
        </div>
        <div class="verticalstars">
            <img src="../../Images/Registration/verticalstars.jpg" />
        </div>
    </div>
</asp:Content>
