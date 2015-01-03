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
        <a href="https://www.facebook.com/ratemystudenthousingandme?ref=aymt_homepage_panel"
            target="_blank">
            <img src="Images/icon-fb.jpg"></a> <a href="https://plus.google.com/116442819890932165126/"
                target="_blank">
                <img src="Images/icon-googleplus.jpg"></a> <a href="http://instagram.com/nirmal_abeygunaratne/"
                    target="_blank">
                    <img src="Images/icon-insta.jpg"></a> <a href="https://twitter.com/nirmalabey/"
                        target="_blank">
                        <img src="Images/icon-twiiter.jpg"></a> <a href="https://www.linkedin.com/pub/nirmal-abeygunaratne/a1/47b/906"
                            target="_blank">
                            <img src="Images/icon-linkdin.jpg"></a>
        <div class="clear">
        </div>
    </div>

      <div class="buttons" style="width: 362px; margin: 0 auto;">
                    <a id="MainContent_HomeID_HyperLink2" class="homelargebuttons" href="Contest.html">Contest</a>
                </div>

</asp:Content>
