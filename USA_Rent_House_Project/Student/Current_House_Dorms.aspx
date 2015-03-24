<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Student.Master" AutoEventWireup="true"
    CodeBehind="Current_House_Dorms.aspx.cs" Inherits="USA_Rent_House_Project.Student.Current_House_Dorms" %>
    
<%@ Register Src="Modules/Student_Profile_Header.ascx" TagName="Student_Profile_Header"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc1" %>
<%@ Register Src="~/Student/Modules/Ctr_QuickLinks.ascx" TagName="QuickLinks" TagPrefix="uc1" %>
<%@ Register src="Modules/Current_House_Dorms.ascx" tagname="Current_House_Dorms" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <uc1:student_profile_header id="Student_Profile_HeaderID" runat="server" />
    <asp:HiddenField ID="HiddenFieldLandloadID" runat="server" />
    <asp:HiddenField ID="HiddenFieldHouseID" runat="server" />
    <div id="currentHomeStudent" runat="server">
        <div id="LeftPanel" runat="server">
            <uc1:menu_bar id="Menu_Bar1" runat="server" />
        </div>
        <div id="RightPanel" runat="server">
            
         <uc1:QuickLinks ID="QuickLinksid" runat="server" />
            <div class="clear">
            </div>
            <h2 class="form_heading">
                    My Current House
                </h2>
            <uc2:Current_House_Dorms ID="Current_House_Dorms1" runat="server" />
        </div>
    </div>
</asp:Content>
