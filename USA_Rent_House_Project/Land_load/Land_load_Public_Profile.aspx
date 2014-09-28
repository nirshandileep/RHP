<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/General.Master" AutoEventWireup="true" CodeBehind="Land_load_Public_Profile.aspx.cs" Inherits="USA_Rent_House_Project.Land_load.Land_load_Public_Profile" %>
<%@ Register src="Modules/Landload_Public_Profile_Banner.ascx" tagname="Landload_Public_Profile_Banner" tagprefix="uc1" %>
<%@ Register src="Modules/Landload_Public_Profile_Data.ascx" tagname="Landload_Public_Profile_Data" tagprefix="uc2" %>
<%@ Register src="Modules/Landload_Public_Profile_Header.ascx" tagname="Landload_Public_Profile_Header" tagprefix="uc3" %>
<%@ Register src="Modules/Landload_Profile_Comment_Add.ascx" tagname="Landload_Profile_Comment_Add" tagprefix="uc4" %>
<%@ Register src="Modules/Landload_Profile_Comments.ascx" tagname="Landload_Profile_Comments" tagprefix="uc5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <uc3:Landload_Public_Profile_Header ID="Landload_Public_Profile_Header1" 
        runat="server" />
           <div id="MyRatings"> My Ratings</div>
        
        <div id="LeftPanel" runat="server">
        
    </div>
  <div id="RightPanel">    
  <uc1:Landload_Public_Profile_Banner ID="Landload_Public_Profile_Banner1" 
        runat="server" />
    <uc2:Landload_Public_Profile_Data ID="Landload_Public_Profile_Data1" 
        runat="server" />

   <uc4:Landload_Profile_Comment_Add ID="Landload_Profile_Comment_Add1" 
         runat="server" />
           <uc5:landload_profile_comments ID="Landload_Profile_Comments1" 
         runat="server" />
         </div>

</asp:Content>
