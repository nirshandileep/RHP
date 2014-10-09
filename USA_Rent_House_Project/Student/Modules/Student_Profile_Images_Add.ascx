<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Profile_Images_Add.ascx.cs" Inherits="USA_Rent_House_Project.Student.Modules.Student_Profile_Images_Add" %>
 
  <h2 class="form_heading">
        Student Profile / Cover Image
    </h2>
 <div id="Div1" runat="server">
        <h2>Profile Cover Image</h2>
            <table cellpadding="3">
                <tr>
                    <td>
                        <asp:Repeater ID="RepeaterCoverImage" runat="server">
                            <ItemTemplate>
                                <asp:Image ID="Image" runat="server" Width="150" Height="100" ImageUrl='<%# Container.DataItem %>' />
                            </ItemTemplate>
                        </asp:Repeater>
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
            <%--<asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="FileUploads"
                        ErrorMessage="Image Size Cannot Exceed 6 MB" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>--%>
            <asp:Label ID="Label4" runat="server" Text="">Max Image Size : 6 MB</asp:Label><br />
            <asp:Label ID="Label5" runat="server" Text="">Allowed Only - .gif  .jpg  .jpeg  .png</asp:Label>
        </div>
        <div id="Div2">
        </div>

        <div id="ProfileImage" runat="server">
        <h2>Profile Image</h2>
            <table cellpadding="3">
                <tr>
                    <td>
                        <asp:Repeater ID="RepeaterImages" runat="server">
                            <ItemTemplate>
                                <asp:Image ID="Image" runat="server" Width="150" Height="100" ImageUrl='<%# Container.DataItem %>' />
                            </ItemTemplate>
                        </asp:Repeater>
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
            <%--<asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="FileUploads"
                        ErrorMessage="Image Size Cannot Exceed 6 MB" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>--%>
            <asp:Label ID="Label2" runat="server" Text="">Max Image Size : 6 MB</asp:Label><br />
            <asp:Label ID="AllowedLogoLabel" runat="server" Text="">Allowed Only - .gif  .jpg  .jpeg  .png</asp:Label>
        </div>
        <div id="clear">
        </div>
        <br />