<%@ Page Title="Student Profile info" Language="C#" MasterPageFile="~/Master_Pages/Student.Master" AutoEventWireup="true" CodeBehind="Student_Profile_Edit.aspx.cs" Inherits="USA_Rent_House_Project.Student.Student_Profile_Edit" %>
<%@ Register src="Modules/Student_Profile_info_Edit.ascx" tagname="Student_Profile_info_Edit" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Student_Profile_info_Edit ID="Student_Profile_info_Edit1" runat="server" />
</asp:Content>
