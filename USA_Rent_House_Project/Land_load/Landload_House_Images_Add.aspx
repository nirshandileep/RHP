<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Land-Load.Master" AutoEventWireup="true" CodeBehind="Landload_House_Images_Add.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Landload_House_Images_Add" %>
<%@ Register src="Modules/Landload_House_Images_Add.ascx" tagname="Landload_House_Images_Add" tagprefix="uc1" %>

<%@ Register Src="Modules/Landload_Profile_Header.ascx" TagName="Landload_Profile_Header"
    TagPrefix="uc2" %>
<%@ Register Src="Modules/Landload_Profile_Banner.ascx" TagName="Landload_Profile_Banner"
    TagPrefix="uc3" %>
            
<%@ Register src="Modules/Menu_Bar.ascx" tagname="Menu_Bar" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc2:Landload_Profile_Header ID="Landload_Profile_Header1" runat="server" />
   

    <div id="currentHomeStudent" runat="server">
        <div id="LeftPanel" runat="server">
           
            <uc4:Menu_Bar ID="Menu_Bar1" runat="server" />
           
        </div>
         <uc1:Landload_House_Images_Add ID="Landload_House_Images_Add1" runat="server" />
          </div>
    </div>
</asp:Content>
