<%@ Page Title="Current House" Language="C#" MasterPageFile="~/Master_Pages/Student.Master" AutoEventWireup="true"
    CodeBehind="Student_Profile_Current_House.aspx.cs" Inherits="USA_Rent_House_Project.Student.Student_Profile_Current_House" %>

<%@ Register Src="Modules/Student_Profile_Header.ascx" TagName="Student_Profile_Header"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc1" %>
<%@ Register Src="Modules/Current_House_Landload_info.ascx" TagName="Current_House_Landload_info"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Current_House_Rental_Address_info.ascx" TagName="Current_House_Rental_Address_info"
    TagPrefix="uc2" %>
<%@ Register src="Modules/Current_House_RoomMate_info.ascx" tagname="Current_House_RoomMate_info" tagprefix="uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Student_Profile_Header ID="Student_Profile_HeaderID" runat="server" />
    <div id="currentHomeStudent" runat="server">
        <div id="LeftPanel" runat="server">
            <uc1:Menu_Bar ID="Menu_Bar1" runat="server" />
        </div>
        <div id="RightPanel" runat="server">
            <asp:HyperLink ID="HyperLink1" CssClass="loginlinks" Style="float: right" NavigateUrl="~/Student/Student_Public_Profile.aspx"
                runat="server">My Page</asp:HyperLink>
            <div class="clear">
            </div>
            <div id="div_register_User">
                <h2 class="form_heading">
                    My Current House
                </h2>
                <div id="formwrapper">
                    <div id="forminner">
                        <uc1:Current_House_Landload_info ID="Current_House_Landload_infoID" runat="server" />
                        <uc2:Current_House_Rental_Address_info ID="Current_House_Rental_Address_infoID" runat="server" Visible="false" />
                        <uc3:Current_House_RoomMate_info ID="Current_House_RoomMate_infoID" runat="server"  Visible="false"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
