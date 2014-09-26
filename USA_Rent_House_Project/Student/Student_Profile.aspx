<%@ Page Title="Student Profile" Language="C#" MasterPageFile="~/Master_Pages/Student.Master" AutoEventWireup="true" CodeBehind="Student_Profile.aspx.cs" Inherits="USA_Rent_House_Project.Student.Student_Profile" %>

<%@ Register src="Modules/Student_Profile_Header.ascx" tagname="Student_Profile_Header" tagprefix="uc1" %>
<%@ Register src="Modules/Student_Profile_Data.ascx" tagname="Student_Profile_Data" tagprefix="uc2" %>
<%@ Register src="Modules/Student_Profile_Comments.ascx" tagname="Student_Profile_Comments" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Student_Profile_Header ID="Student_Profile_HeaderID" runat="server" />
    <uc2:Student_Profile_Data ID="Student_Profile_DataID" runat="server" />
    <uc3:Student_Profile_Comments ID="Student_Profile_CommentsID" runat="server" />
</asp:Content>
