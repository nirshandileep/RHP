<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Land-Load.Master" AutoEventWireup="true" CodeBehind="Current_Students.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Current_Students" %>
<%@ Register src="Modules/Current_Students_Add.ascx" tagname="Current_Students_Add" tagprefix="uc1" %>

<%@ Register Src="Modules/Landload_Profile_Header.ascx" TagName="Landload_Profile_Header"
    TagPrefix="uc1" %>
<%@ Register src="Modules/Menu_Bar.ascx" tagname="Menu_Bar" tagprefix="uc4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
      <uc1:Landload_Profile_Header ID="Landload_Profile_Header1" runat="server" />
     <div id="LeftPanel" runat="server">
           
            <uc4:Menu_Bar ID="Menu_Bar1" runat="server" />
           
        </div>
        <div id="RightPanel" runat="server">
         <uc1:Current_Students_Add ID="Current_Students_Add1" runat="server" />
         </div>
</asp:Content>
