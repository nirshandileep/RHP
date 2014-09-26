<%@ Page Title="Current House Life" Language="C#" MasterPageFile="~/Master_Pages/Student.Master"
    AutoEventWireup="true" CodeBehind="Current_House_Life.aspx.cs" Inherits="USA_Rent_House_Project.Student.Current_House_Life" %>

<%@ Register Src="Modules/Student_Profile_Header.ascx" TagName="Student_Profile_Header"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="../Scripts/modernizr-2.5.3.js"></script>
    <script type="text/javascript">
        var selectedFiles;

        $(document).ready(function () {

            if (!Modernizr.draganddrop) {
                alert("This browser doesn't support File API and Drag & Drop features of HTML5!");
                return;
            }

            var box;
            box = document.getElementById("box");
            box.addEventListener("dragenter", OnDragEnter, false);
            box.addEventListener("dragover", OnDragOver, false);
            box.addEventListener("drop", OnDrop, false);

            $("#upload").click(function () {
                var data = new FormData();
                for (var i = 0; i < selectedFiles.length; i++) {
                    data.append(selectedFiles[i].name, selectedFiles[i]);
                }
                $.ajax({
                    type: "POST",
                    url: "../Modules/FileHandler.ashx",
                    contentType: false,
                    processData: false,
                    data: data,
                    success: function (result) {
                        alert(result);
                    },
                    error: function () {
                        alert("There was error uploading files!");
                    }
                });
            });

        });

        function OnDragEnter(e) {
            e.stopPropagation();
            e.preventDefault();
        }

        function OnDragOver(e) {
            e.stopPropagation();
            e.preventDefault();
        }

        function OnDrop(e) {
            e.stopPropagation();
            e.preventDefault();
            selectedFiles = e.dataTransfer.files;
            $("#box").text(selectedFiles.length + " file(s) selected for uploading!");
        }


    </script>
    <style>
        #box
        {
            width: 100%;
            height: 100px;
            text-align: center;
            vertical-align: middle;
            border: 2px solid #bfbc52;
            background-color: #e9e9d3;
            padding: 15px;
            font-family: Arial;
            font-size: 16px;
            margin-top: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Student_Profile_Header ID="Student_Profile_HeaderID" runat="server" />
    <div id="currentHomeStudent" runat="server">
        <div id="LeftPanel" runat="server">
            <uc1:Menu_Bar ID="Menu_Bar1" runat="server" />
        </div>
        <div id="RightPanel" runat="server">
             <asp:HyperLink ID="HyperLinkPublicView" CssClass="loginlinks" Style="float: right" Target="_blank" runat="server">Public view</asp:HyperLink>
            <div id="Search" runat="server">
            <asp:HyperLink ID="SearchStudent" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=s"
                runat="server">Search for Student</asp:HyperLink>
            <asp:HyperLink ID="SearchHouse" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=l"
                runat="server">Search for House</asp:HyperLink>
        </div>
            <div class="clear">
            </div>
              <h2 class="form_heading">
       My College Housing Life
    </h2>
            <center>
            <h1>Add Photo(s)</h1>
                <div id="box">
                    Drag & Drop Photos from your machine on this box.</div>
                <br />
                <input id="upload" type="button" value="Upload Selected Photos" />
                <br />
                OR
                <br />
                <div>
                    <table cellpadding="3">
                        <tr>
                            <td>
                                <asp:Label ID="LogoLabel" runat="server" Text="Select Logo :">Select Photo :</asp:Label>
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUploads" CssClass="textEntry" runat="server" AllowMultiple="true" />
                                <asp:Button ID="btn_Photos" runat="server" Text="Upload a Photo" CssClass="upload_button"
                                    OnClick="btn_Photos_Click" />
                            </td>
                        </tr>
                    </table>
                    <%--<asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="FileUploads"
                        ErrorMessage="Image Size Cannot Exceed 6 MB" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>--%>
                    <asp:Label ID="Label1" runat="server" Text="">Max Image Size : 6 MB</asp:Label><br />
                    <asp:Label ID="AllowedLogoLabel" runat="server" Text="">Allowed Only - .gif  .jpg  .jpeg  .png</asp:Label>
                </div>
                <div id="clear">
                </div>
            </center>

            <div>
            <h2 class="form_heading">House Life</h2>
            <asp:Repeater ID="RepeaterImages" runat="server" >
                <ItemTemplate>
                    <asp:Image ID="Image" runat="server" Width="150" Height="100" ImageUrl='<%# Container.DataItem %>' />
                </ItemTemplate>
            </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
