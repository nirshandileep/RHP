<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Landload_Public_Profile_Banner.ascx.cs"
    Inherits="USA_Rent_House_Project.Land_load.Modules.Landload_Public_Profile_Banner" %>
<div id="LandloadBanner" runat="server">
    <div class="imagegallerycontainer">
      
        <asp:Repeater ID="RepeaterImages" runat="server">
                    <ItemTemplate>
                        <asp:Image ID="Image" runat="server" Width="150" Height="100" ImageUrl='<%# Container.DataItem %>' />
                    </ItemTemplate>
                </asp:Repeater>
        <%--<div class="imagegallery">
        </div>
        <div class="imagegallery">
        </div>
        <div class="imagegallery">
        </div>
        <div class="imagegallery">
        </div>--%>
        
    </div>
    <div class="clear">
    </div>
</div>
