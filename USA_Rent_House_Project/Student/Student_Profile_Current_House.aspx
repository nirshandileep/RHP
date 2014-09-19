<%@ Page Title="Current House" Language="C#" MasterPageFile="~/Master_Pages/Student.Master" EnableViewState="true"
    AutoEventWireup="true" CodeBehind="Student_Profile_Current_House.aspx.cs" Inherits="USA_Rent_House_Project.Student.Student_Profile_Current_House" %>

<%@ Register Src="Modules/Student_Profile_Header.ascx" TagName="Student_Profile_Header"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc1" %>
<%@ Register Src="Modules/Current_House_Landload_info.ascx" TagName="Current_House_Landload_info"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Current_House_Rental_Address_info.ascx" TagName="Current_House_Rental_Address_info"
    TagPrefix="uc2" %>
<%@ Register Src="Modules/Current_House_RoomMate_info.ascx" TagName="Current_House_RoomMate_info"
    TagPrefix="uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <uc1:Student_Profile_Header ID="Student_Profile_HeaderID" runat="server" />
    <div id="currentHomeStudent" runat="server">
        <asp:HiddenField ID="HiddenFieldLandloadID" runat="server" />
        <asp:HiddenField ID="HiddenFieldHouseID" runat="server" />
        <div id="LeftPanel" runat="server">
            <uc1:Menu_Bar ID="Menu_Bar1" runat="server" />
        </div>
        <div id="RightPanel" runat="server">
            <asp:HyperLink ID="HyperLink1" CssClass="loginlinks" Style="float: right" NavigateUrl="~/Student/Student_Public_Profile.aspx"
                runat="server">My Page</asp:HyperLink>
            <div class="clear">
                <asp:HiddenField ID="hdnStepNumber" runat="server" Value="0" />
            </div>
            <div id="div_register_User">
                <h2 class="form_heading">
                    My Current House
                </h2>
                <div id="formwrapper">
                    <div id="forminner">
                        <uc1:Current_House_Landload_info ID="Current_House_Landload_infoID" 
                            runat="server" ViewStateMode="Enabled" />
                        <uc2:Current_House_Rental_Address_info ID="Current_House_Rental_Address_infoID" runat="server"
                            Visible="false" ViewStateMode="Enabled" />
                        <uc3:Current_House_RoomMate_info ID="Current_House_RoomMate_infoID" runat="server"
                            Visible="true" ViewStateMode="Enabled" />
                        <p>
                            <asp:Button ID="CreateLandloadButton" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                                Text="Save and continue" OnClick="CreateLandloadButton_Click" />
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
