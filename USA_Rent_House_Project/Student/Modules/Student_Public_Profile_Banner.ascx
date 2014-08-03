<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Public_Profile_Banner.ascx.cs" Inherits="USA_Rent_House_Project.Student.Modules.Student_Public_Profile_Banner" %>

 <div id="currentHomeStudentBanner" runat="server">

     <asp:HyperLink ID="MyPage" runat="server">My Page</asp:HyperLink>

        <asp:DataList ID="DataListCurrentHomeStudentBanner" runat="server" RepeatColumns="4">
            <ItemTemplate>
                <asp:Image ID="currentHomeStudentBannerImage" runat="server" />
            </ItemTemplate>
        </asp:DataList>
    </div>