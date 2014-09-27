<%@ Page Title="Landload Profile info" Language="C#" MasterPageFile="~/Master_Pages/Land-Load.Master" AutoEventWireup="true" CodeBehind="Land_load_Profile_Edit.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Land_load_Profile_Edit" %>

<%@ Register src="Modules/Landload_Profile_info_Edit.ascx" tagname="Landload_Profile_info_Edit" tagprefix="uc1" %>
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
        <div id="RightPanel" runat="server">
       <uc3:Landload_Profile_Banner ID="Landload_Profile_Banner1" runat="server" />
              <uc1:Landload_Profile_info_Edit ID="Landload_Profile_info_Edit1"   runat="server" />
        </div>
    </div>


    
</asp:Content>
