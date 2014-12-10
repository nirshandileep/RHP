<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Master_Pages/General.master"
    AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="USA_Rent_House_Project._Default" %>

<%@ Register Src="Modules/Home.ascx" TagName="Home" TagPrefix="uc1" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <script type="text/javascript" src="Scripts/jquery-1.4.1.min.js"></script>
    <div class="homebuttonsdiv">
        <uc1:Home ID="HomeID" runat="server" />
    </div>
    <div>
        <h2 id="coming" style="display: none; text-align: center; color: #C00; font-size: 24px;">
            Coming Soon...</h2>
    </div>
    <div class="clear">
    </div>
    <div class="socialmediaicons">
        <a href="https://www.facebook.com/ratemystudenthousingandme?ref=aymt_homepage_panel">
            <img src="Images/icon-fb.jpg" /></a> 
            
            <a href="https://plus.google.com/116442819890932165126/">
                <img src="Images/icon-googleplus.jpg" /></a> 
                <a href="http://instagram.com/nirmal_abeygunaratne/">
                    <img src="Images/icon-insta.jpg" /></a> 
                    <a href="https://twitter.com/nirmalabey/">
                        <img src="Images/icon-twiiter.jpg" /></a> 
                       
        <div class="clear">
        </div>
    </div>
    <script type="text/javascript" language="javascript">
        $("#MainContent_HomeID_HyperLink1").click(function () {
            $("#coming").css("display", "block");
        });
        $("#MainContent_HomeID_HouseLogin").click(function () {
            $("#coming").css("display", "block");
        });
        $("#MainContent_HomeID_StudentLogin").click(function () {
            $("#coming").css("display", "block");
        });

    </script>
</asp:Content>
