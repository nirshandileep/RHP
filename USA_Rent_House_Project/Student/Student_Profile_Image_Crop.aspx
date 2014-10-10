<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Student.Master" AutoEventWireup="true" CodeBehind="Student_Profile_Image_Crop.aspx.cs" Inherits="USA_Rent_House_Project.Student.Student_Profile_Image_Crop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">


 <title>Crop Image</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script src="../Scripts/jquery.Jcrop.js" type="text/javascript"></script>
    <link href="../Styles/jquery.Jcrop.css" rel="stylesheet" type="text/css" />
   
    <script type="text/javascript" language="javascript">

        // fixed box       
                  $(function() {
                      $('#imgcrop').Jcrop({
                          setSelect: [0, 120, 1000, 350],
                      onSelect: updateCoords,
                       onChange: updateCoords
                    });
                });

                function updateCoords(c) {
                   $('#hdnx').val(c.x);
                    $('#hdny').val(c.y);
                    $('#hdnw').val(c.w);
                   $('#hdnh').val(c.h);

                      }

    </script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div>
        <img id="imgcrop" alt="Profile cover image" src="/uploads/78504635-2f99-4eaa-a6db-d44a0675a3aa/ProfileCover/78504635-2f99-4eaa-a6db-d44a0675a3aa.jpg" />
       <%-- <asp:Image ID="imgcrop" runat="server" />--%>

             <input type="hidden" id="hdnx" runat="server" />
        <input type="hidden" id="hdny" runat="server" />
        <input type="hidden" id="hdnw" runat="server" />
        <input type="hidden" id="hdnh" runat="server"/>

        <%-- <input type="hidden" id="hdnx" runat="server" value="0" />
        <input type="hidden" id="hdny" runat="server" value="120" />
        <input type="hidden" id="hdnw" runat="server" value="900" />
        <input type="hidden" id="hdnh" runat="server" value="350" />
--%>
        <asp:Button ID="btncrop" runat="server" OnClick="btncrop_Click" Text="Crop Images" />
        <img id="imgcropped" runat="server" visible="false" />
    </div>
</asp:Content>
