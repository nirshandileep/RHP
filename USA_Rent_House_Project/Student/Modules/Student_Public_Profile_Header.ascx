<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Public_Profile_Header.ascx.cs" Inherits="USA_Rent_House_Project.Student.Modules.Student_Public_Profile_Header" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<div id="StidentProfileHeader" runat="server">
    <div id="HeaderImage" runat="server">
        <asp:Image ID="jmgHeaderImage" runat="server" />
    </div>
    <div id="StudentProfileImage" runat="server">
        <asp:Image ID="imgStudentProfileImage" runat="server" />
    </div>
    <div id="CurrentHouseImage" runat="server">
        <asp:Image ID="imgCurrentHouseImage" runat="server" />
    </div>
    <div id="LandloadProfileImage" runat="server">
        <asp:Image ID="imgLandloadProfileImage" runat="server" />
    </div>
     <div id="StudentRating" runat="server">
       Student Rating

         <asp:Rating ID="Rating" runat="server" AutoPostBack="true" StarCssClass="blankstar"
                WaitingStarCssClass="waitingstar" FilledStarCssClass="shiningstar" EmptyStarCssClass="blankstar"
                OnChanged="Rating_Changed">
            </asp:Rating>
    </div>
</div>
