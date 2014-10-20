<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Landload_House_Images_Add.ascx.cs" Inherits="USA_Rent_House_Project.Land_load.Modules.Landload_House_Images_Add" %>
<h2 class="form_heading">
        Landload Property / House Image
    </h2>

        <div id="ProfileImage" runat="server">
        <h2>House Image</h2>
            <table cellpadding="3">
                <tr>
                    <td>
                         <asp:Image ID="ProfileImage_" runat="server" Width="150" Height="100" ImageUrl="~/Images/Sample/House.jpg" />
                     
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