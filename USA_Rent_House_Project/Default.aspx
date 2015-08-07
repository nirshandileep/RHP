<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Master_Pages/General.master"
    AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="USA_Rent_House_Project._Default" %>

<%@ Register Src="Modules/Home.ascx" TagName="Home" TagPrefix="uc1" %>
<%@ Register Src="Modules/Footerbottom.ascx" TagName="Footerbottom" TagPrefix="uc2" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <script type="text/javascript" src="Scripts/jquery-1.4.1.min.js"></script>
    <div style="text-align: center;">
        <img alt="" src="../Images/Home/homepagetop.jpg" />
    </div>
    <div class="homebuttonsdiv">
        <uc1:Home ID="HomeID" runat="server" />
    </div>
    <div>
        <h2 id="coming" style="display: none; text-align: center; color: #C00; font-size: 24px;">
            Coming Soon...</h2>
    </div>
    <div class="clear">
    </div>
    <div class="sharebutton">
        <a id="sharetext">share</a>
    </div>
    <div style="height: 85px; border-style: solid; border-color: White;">
        <div class="socialmediaicons" style="display: none;">
            <div class="socialmediaicons-inner">
                <a href="https://www.facebook.com/ratemystudenthousingandme?ref=aymt_homepage_panel" target="_blank"> <img src="Images/icon-fb.jpg"></a> 
                <a href="https://plus.google.com/b/117257079120239150318/dashboard/overview " target="_blank"> <img src="Images/icon-googleplus.jpg"></a> 
                <a href="https://instagram.com/ratestudenthousing" target="_blank"> <img src="Images/icon-insta.jpg"></a> 
                <a href="https://twitter.com/nirmalabey/" target="_blank"> <img src="Images/icon-twiiter.jpg"></a> 
                <a href="https://www.linkedin.com/pub/nirmal-abeygunaratne/a1/47b/906" target="_blank"> <img src="Images/icon-linkdin.jpg"></a>
                <img src="Images/snapchat.png">
                <div class="clear">
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {

            $('#sharetext').hover(function () {

                $('.socialmediaicons').fadeIn(500);
            }, function () {

                $('.socialmediaicons').fadeOut(5000);

            })




        });




    
    </script>
</asp:Content>
