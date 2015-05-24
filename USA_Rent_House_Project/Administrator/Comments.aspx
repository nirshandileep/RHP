<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Site-Admin.Master" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="USA_Rent_House_Project.Administrator.Comments" %>
<%@ Register Src="Modules/Comment_Add.ascx" TagName="Comment_Add" TagPrefix="uc1" %>
<%@ Register src="Modules/Comments_View.ascx" tagname="Comments_View" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Comment-Add">
    <uc1:Comment_Add ID="Comment_Add1" runat="server" />
        </div>
    <div id="Comment-View">

        <uc2:Comments_View ID="gdComments" runat="server" />

    </div>
    </asp:Content>
