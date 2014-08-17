<%@ Page Title="Student Profile info" Language="C#" MasterPageFile="~/Master_Pages/General.Master" AutoEventWireup="true" CodeBehind="Student_Profile_Add.aspx.cs" Inherits="USA_Rent_House_Project.Student.Student_Profile_Add" %>
<%@ Register src="Modules/Student_Profile_info_Add.ascx" tagname="Student_Profile_info_Add" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <uc1:Student_Profile_info_Add ID="Student_Profile_info_AddID" runat="server" />
</asp:Content>
