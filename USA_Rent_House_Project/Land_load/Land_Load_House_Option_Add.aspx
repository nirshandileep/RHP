<%@ Page Title="House Options" Language="C#" MasterPageFile="~/Master_Pages/Land-Load.Master"
    AutoEventWireup="true" CodeBehind="Land_Load_House_Option_Add.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Land_Load_House_Option_Add" %>

<%@ Register Src="~/Land_load/Modules/House_Option_Add.ascx" TagName="House_Option_Add"
    TagPrefix="uc2" %>
<%@ Register Src="Modules/Landload_Profile_Header.ascx" TagName="Landload_Profile_Header"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Landload_Profile_Banner.ascx" TagName="Landload_Profile_Banner"
    TagPrefix="uc3" %>
        
<%@ Register src="Modules/Menu_Bar.ascx" tagname="Menu_Bar" tagprefix="uc4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Landload_Profile_Header ID="Landload_Profile_Header1" runat="server" />
   
    
    <div id="currentHomeStudent" runat="server">
        <div id="LeftPanel" runat="server">
           
            <uc4:Menu_Bar ID="Menu_Bar1" runat="server" />
           
        </div>
        <div id="RightPanelLL" runat="server">
      <%-- <uc3:Landload_Profile_Banner ID="Landload_Profile_Banner1" runat="server" />--%>
               <uc2:House_Option_Add ID="House_Option_Add1" runat="server" />
        </div>
    </div>
    

</asp:Content>
