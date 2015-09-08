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
    <div class="homebuttonsdiv" style="padding-left: 18px;">
        <uc1:Home ID="HomeID" runat="server" />
    </div>
    <div>
        <h2 id="coming" style="display: none; text-align: center; color: #C00; font-size: 24px;">
            Coming Soon...</h2>
    </div>
    <div class="clear">
    </div>

    <div class="sharebutton" id="messagebox" style="display:none;color:Red;">
    Coming Winter Quarter 2016
    </div>

    <div class="sharebutton">
        <a id="sharetext">share</a>
    </div>
    <div style="height: 85px; border-style: solid; border-color: White;">
        <div class="socialmediaicons" style="display: none;">
            <div class="socialmediaicons-inner">
                <a href="https://www.facebook.com/ratemystudenthousingandme?ref=aymt_homepage_panel"
                    target="_blank">
                    <img src="Images/icon-fb.jpg"></a> <a href="https://plus.google.com/b/117257079120239150318/dashboard/overview "
                        target="_blank">
                        <img src="Images/icon-googleplus.jpg"></a> <a href="https://instagram.com/ratestudenthousing"
                            target="_blank">
                            <img src="Images/icon-insta.jpg"></a> <a href="https://twitter.com/nirmalabey/" target="_blank">
                                <img src="Images/icon-twiiter.jpg"></a> <a href="https://www.linkedin.com/pub/nirmal-abeygunaratne/a1/47b/906"
                                    target="_blank">
                                    <img src="Images/icon-linkdin.jpg"></a>
                <img src="Images/snapchat.png">
                <div class="clear">
                </div>
            </div>
        </div>
    </div>
    <div class="sharebutton">
        Partake in our Campaign and perhaps be rewarded with a Amazon Gift card.
        <br />
        <ul style="list-style: NONE; font-size: 15; border-style: solid; width: 50%; margin: auto;margin-top:20px;    border-color: #0E72B8;">
            <li>15th Person = $5 Gift Card</li>
            <li>30th Person = $10 Gift Card</li>
            <li>60th Person = $20 Gift Card</li>
            <li>120th Person = $40 Gift Card</li>
            <li>250th Person = $100 Gift Card</li>
        </ul>
    </div>
    <div class="sharebutton">
    <a href="Questionnaire.aspx">Begin</a>
    </div>

     <div class="sharebutton" style="list-style: NONE; font-size: 15; border-style: solid; width: 50%; margin: auto;margin-top:20px;    border-color: #0E72B8;" >
      <strong> Counter will restart once the 250 person is reached. Happy Counting</strong>
        </br>
         Also please visit our facebook event page for up to date info
    </div>

    <script type="text/javascript">
        $(document).ready(function () {

            $('#sharetext').hover(function () {

                $('.socialmediaicons').fadeIn(500);
            }, function () {

                $('.socialmediaicons').fadeOut(5000);

            })




        });


        $('#StudentLogin').click(function () {
            $('#messagebox').fadeIn(500);
        });

        $('#MainContent_HomeID_HyperLink1').click(function () {
            $('#messagebox').fadeIn(500);
        });

        $('#MainContent_HomeID_HouseLogin').click(function () {
            $('#messagebox').fadeIn(500);
        });
    
    </script>
</asp:Content>
