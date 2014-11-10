<%@ Page Title="Change_Password" Language="C#" MasterPageFile="~/Master_Pages/Land-Load.Master" AutoEventWireup="true" CodeBehind="Change_Password.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Change_Password" %>
<%@ Register src="../Modules/Change_Password.ascx" tagname="Change_Password" tagprefix="uc1" %>
<%@ Register Src="Modules/Landload_Profile_Header.ascx" TagName="Landload_Profile_Header"
    TagPrefix="uc1" %>
<%@ Register src="Modules/Menu_Bar.ascx" tagname="Menu_Bar" tagprefix="uc4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
       <uc1:Landload_Profile_Header ID="Landload_Profile_Header1" runat="server" />
     <div id="LeftPanel_LandL" runat="server">
           
            <uc4:Menu_Bar ID="Menu_Bar1" runat="server" />
           
        </div>
        <div id="RightPanelLL" runat="server"><uc1:Change_Password ID="Change_Password1" runat="server" />
         </div>
</asp:Content>
