<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Landload_Profile_Data.ascx.cs"
    Inherits="USA_Rent_House_Project.Land_load.Modules.Landload_Profile_Data" %>
<div id="currentHomeStudent" runat="server">
    <div id="LeftPanel" runat="server">
        <asp:Menu ID="LeftMenuBar" runat="server" Orientation="Vertical">
        </asp:Menu>
    </div>
    <div id="RightPanel" runat="server">
        <p>
            All the students live in the current home</p>
        <div id="currentHomeStudentData" runat="server">
            <asp:DataList ID="DataListCurrentHomeStudent" runat="server" RepeatColumns="2">
                <ItemTemplate>
                    <asp:Image ID="currentHomeStudentImage" runat="server" ImageUrl="~/Images/Sample/profileimage4.jpg"
                        Width="100px" />
                    <asp:Label ID="currentHomeStudentName" runat="server" Text="Name"></asp:Label>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</div>
