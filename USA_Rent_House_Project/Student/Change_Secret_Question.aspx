<%@ Page Title="Change Secret Question" Language="C#" MasterPageFile="~/Master_Pages/Student.Master" AutoEventWireup="true"
    CodeBehind="Change_Secret_Question.aspx.cs" Inherits="USA_Rent_House_Project.Student.Change_Secret_Question" %>

<%@ Register Src="../Modules/Change_Secret_Question.ascx" TagName="Change_Secret_Question"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc1" %>
<%@ Register Src="Modules/Student_Profile_Header.ascx" TagName="Student_Profile_Header"
    TagPrefix="uc1" %>
    
<%@ Register Src="~/Student/Modules/Ctr_QuickLinks.ascx" TagName="QuickLinks" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <uc1:Student_Profile_Header ID="Student_Profile_HeaderID" runat="server" />
  
    <div id="currentHomeStudent" runat="server">
        <div id="LeftPanel" runat="server">
            <uc1:Menu_Bar ID="Menu_Bar1" runat="server" />
        </div>
        <div id="RightPanel" runat="server">
              <uc1:QuickLinks ID="QuickLinksid" runat="server" />
            <div class="clear">
            </div>
           
            <uc1:Change_Secret_Question ID="Change_Secret_Question1" runat="server" />
        </div>
    </div>
</asp:Content>
