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
    <div style="padding: 20px;">
        <p class="homeheadingsub">
        </p>
        <p class="homeheadingsub">
            <a href="http://ratemystudenthousing.com/" target="_blank">ratemystudenthousingandme.com</a>
            would like to announce the holiday contest. We are truly blessed to have the student
            community supporting us. Our friends and their support via Facebook, twitter, instagram,
            linkedin, google+ mean everything to us.
        </p>
        <p class="homeheadingsub">
            <a href="http://ratemystudenthousing.com/" target="_blank">ratemystudenthousingandme.com</a>
            contest is as follows and is based on a point system and an algorithm that we have
            created to account for it, <u>YOU MUST YOU MUST GO THROUGH our platform&rsquo;s home
                page. The algorithm that we created is on the home page of the platform. We will
                NOT be able to track your participation if you don&rsquo;t go through the platform.
                THIS IS CRUTIAL!!! </u>
        </p>
        <p>
        </p>
        <p class="homeheadingsub">
            Facebook<br />
            Like = 1 point<br />
            Invite EVENT page = 1points<br />
            comment on our page (relevant) = 1 point<br />
            share = 2 points<br />
            Invite = 2 points<br />
            <br />
            <br />
            twitter<br />
            follow = 1 point<br />
            star = 1 point<br />
            retweet = 2 points<br />
            tweet mention = 2 points<br />
            <br />
            <br />
            Instagram<br />
            follow = 2 points<br />
            heart = 1 point<br />
            <br />
            <br />
            google +<br />
            add = 1 point<br />
            share = 2 points<br />
            mention = 2 points<br />
            <br />
            <br />
            linkedin<br />
            add = 1 point<br />
            mention = 2 points<br />
            <br />
            <br />
            GOOD LUCK to all…. This is not a drawing… it is a contest, so the two three people
            are going to be the winners.
            <br />
            <br />
            <br />
            The contest will run until <span data-term="goog_1372736235" tabindex="0">Jan 1st</span>.
            <a href="http://ratemystudenthousingandme.com/" target="_blank">ratemystudenthousingandme.com</a>
            will be posting the standing periodically so that people can see where they lie
            in the contest. <a href="http://ratemystudenthousingandme.com/" target="_blank">ratemystudenthousingandme.com</a>
            set out to help students and we will continue to do that.
            <br />
        </p>
    </div>
    <div class="socialmediaicons">
        <a href="https://www.facebook.com/ratemystudenthousingandme?ref=aymt_homepage_panel">
            <img src="Images/icon-fb.jpg" /></a> <a href="https://plus.google.com/116442819890932165126/">
                <img src="Images/icon-googleplus.jpg" /></a> <a href="http://instagram.com/nirmal_abeygunaratne/">
                    <img src="Images/icon-insta.jpg" /></a> <a href="https://twitter.com/i/notifications">
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
