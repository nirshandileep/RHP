﻿<%@ Page Title="Current House" Language="C#" MasterPageFile="~/Master_Pages/Student.Master" EnableViewState="true"
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

    <%@ Register Src="~/Student/Modules/Current_House_Menu_Bar.ascx" TagName="Current_House_Menu_Bar"
    TagPrefix="uc4" %>
    
<%@ Register Src="~/Student/Modules/Ctr_QuickLinks.ascx" TagName="QuickLinks" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <uc1:Student_Profile_Header ID="Student_Profile_HeaderID" runat="server" />
    <asp:HiddenField ID="HiddenFieldLandloadID" runat="server" />
    <div id="currentHomeStudent" runat="server">
        <asp:HiddenField ID="HiddenFieldHouseID" runat="server" />
        <div id="LeftPanel" runat="server">
            <uc1:Menu_Bar ID="Menu_Bar1" runat="server" />
        </div>
        <div id="RightPanel" runat="server">
             <uc1:QuickLinks ID="QuickLinksid" runat="server" />
            <div class="clear">
                <asp:HiddenField ID="hdnStepNumber" runat="server" Value="0" />
            </div>
            <div id="div_register_User">
                <h2 class="form_heading">
                    My Current Residence
                </h2>
                <div id="formwrapper">
                  <uc4:Current_House_Menu_Bar ID="Current_House_Menu_Barid" runat="server" />
                
               <%-- <p>
                <asp:HyperLink ID="CreateCurrentHouseButton" runat="server" CssClass="loginlinks" NavigateUrl="~/Student/Student_Profile_Current_House.aspx" Visible="false">Create current house</asp:HyperLink>&nbsp;
                                <asp:HyperLink ID="ViewCurrentHouseButton" runat="server" CssClass="loginlinks" NavigateUrl="~/Student/Student_Profile_Current_House_Details.aspx" Visible="false">View current house</asp:HyperLink>&nbsp;
                    <asp:HyperLink ID="UpdateCurrentHouseButton" runat="server" CssClass="loginlinks" NavigateUrl="~/Student/Student_Profile_Update_Current_House.aspx" Visible="false">Update current house</asp:HyperLink>
                     &nbsp; <asp:HyperLink ID="LeaveCurrentHouseButton" runat="server" CssClass="loginlinks" NavigateUrl="~/Student/Student_Profile_Leave_Current_House.aspx" Visible="false">Leave current house</asp:HyperLink>
  
                </p>--%>
                    <div id="forminner">
                        <uc1:Current_House_Landload_info ID="Current_House_Landload_infoID" 
                            runat="server" ViewStateMode="Enabled" />
                        <uc2:Current_House_Rental_Address_info ID="Current_House_Rental_Address_infoID" runat="server"
                            Visible="false" ViewStateMode="Enabled" />
                        <uc3:Current_House_RoomMate_info ID="Current_House_RoomMate_infoID" runat="server"
                            Visible="true" ViewStateMode="Enabled" />
                        
                        
                    </div>
                    <p>
                            <asp:Button ID="CreateLandloadButton" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                                Text="Save and continue" OnClick="CreateLandloadButton_Click" />

                                <asp:Button ID="ButtonNext" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                                Text="Next" onclick="ButtonNext_Click" Visible="false" />
                        </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
