﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Profile_Images_Add.ascx.cs" Inherits="USA_Rent_House_Project.Student.Modules.Student_Profile_Images_Add" %>
 
  <h2 class="form_heading">
        Student Profile / Cover Image
    </h2>
 <div id="Div1" runat="server">
        <h2>Profile Cover Image</h2>
     <asp:HiddenField ID="hdprofilecoverimageId" runat="server" />
    <%-- <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Student/Student_Profile_Image_Crop.aspx" runat="server">Crop Image</asp:HyperLink>--%>
            <table cellpadding="3">
                <tr>
                    <td> <asp:Image ID="CoverImage" runat="server" Width="150" Height="100" ImageUrl="~/Images/Sample/Bannerimage.jpg" />
                      
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Select Logo :">Select Photo :</asp:Label>
                    </td>
                    <td>
                        <asp:FileUpload ID="FileUploadCoverImage" CssClass="textEntry" runat="server" AllowMultiple="true" />
                        <asp:Button ID="ButtonCoverImage" runat="server" Text="Upload a Photo" 
                            CssClass="upload_button" onclick="ButtonCoverImage_Click" />
                    </td>
                </tr>
            </table>
          
            <asp:Label ID="Label4" runat="server" Text="">Max Image Size : 6 MB</asp:Label><br />
            <asp:Label ID="Label5" runat="server" Text="">Allowed Only -  .jpg  .jpeg  .png</asp:Label>
        </div>
        <div id="Div2">
        </div>

        <div id="DevProfileImage" runat="server">
        <h2>Profile Image</h2>
         <asp:HiddenField ID="hdProfileImageId" runat="server" />
            <table cellpadding="3">
                <tr>

                    <td>
                     <asp:Image ID="ProfileImage_" runat="server" Width="150" Height="100" ImageUrl="~/Images/Sample/Noimage.jpg" />
                      
                    </td>
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
   
            <asp:Label ID="Label2" runat="server" Text="">Max Image Size : 6 MB</asp:Label><br />
            <asp:Label ID="AllowedLogoLabel" runat="server" Text="">Allowed Only -  .jpg  .jpeg  .png</asp:Label>
        </div>
        <div id="clear">
        </div>
        <br />