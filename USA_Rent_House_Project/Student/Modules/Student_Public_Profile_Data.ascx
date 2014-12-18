<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Public_Profile_Data.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_Public_Profile_Data" %>
<div id="currentHomeStudent" runat="server">
    <div runat="server">
        <div id="currentHomeStudentData" runat="server" visible="false">
            <h2>
                All Students Living in the Current House</h2>
            <br />
            <asp:DataList ID="DataListStudentList" runat="server" RepeatColumns="3" DataKeyField="UserId"
                OnItemDataBound="ItemDataBound">
                <ItemTemplate>
                    <div class="imagegallerycontainer">
                        <div class="imagegallery">
                            <asp:HiddenField ID="hdUserId" runat="server" Value='<%# Eval("UserId") %>' />
                            <asp:HyperLink ID="HyperLinkimage" runat="server" Text='<%# Eval("FirstName") + " " +  Eval("LastName")%>'
                                ImageUrl="~/Images/Sample/Noimage.jpg" NavigateUrl='<%# Eval("UserId","~/Student/Student_Public_Profile.aspx?AccessCode={0}") %>'></asp:HyperLink>
                        </div>
                        <div id="Name" class="lblnames">
                            <asp:HyperLink ID="HyperLinkviewStudent" runat="server" Text='<%# Eval("FirstName") + " " +  Eval("LastName")%>'
                                NavigateUrl='<%# Eval("UserId","~/Student/Student_Public_Profile.aspx?AccessCode={0}") %>'></asp:HyperLink>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div class="clear">
        </div>
        <div id="StudentHouseData" runat="server">
            <h2 style="display: inline-block;">
                College Housing Life..</h2>
            <asp:HyperLink ID="hypStudentHouseData" CssClass="loginlinks" runat="server">Photos</asp:HyperLink>
        </div>
    </div>
</div>
