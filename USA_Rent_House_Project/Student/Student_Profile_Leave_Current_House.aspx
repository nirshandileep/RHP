<%@ Page Title="Student Leave Current House" Language="C#" MasterPageFile="~/Master_Pages/Student.Master"
    AutoEventWireup="true" CodeBehind="Student_Profile_Leave_Current_House.aspx.cs"
    Inherits="USA_Rent_House_Project.Student.Student_Profile_Leave_Current_House" %>

<%@ Register Src="Modules/Student_Profile_Header.ascx" TagName="Student_Profile_Header"
    TagPrefix="uc1" %>
    <%@ Register Src="~/Student/Modules/Current_House_Menu_Bar.ascx" TagName="Current_House_Menu_Bar" TagPrefix="uc3" %>
<%@ Register Src="Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Do you want to Leave Current House?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }

        function ConfirmRequest() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Do you want to Leave Current House?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }

        
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Student_Profile_Header ID="Student_Profile_HeaderID" runat="server" />
    <asp:HiddenField ID="HiddenFieldLandloadID" runat="server" />
    <div id="currentHomeStudent" runat="server">
        <asp:HiddenField ID="HiddenFieldHouseID" runat="server" />
        <div id="LeftPanel" runat="server">
            <uc1:Menu_Bar ID="Menu_Bar1" runat="server" />
        </div>
        <div id="RightPanel" runat="server">
            <asp:HyperLink ID="HyperLinkPublicView" CssClass="loginlinks" Style="float: right"
                runat="server">Public view</asp:HyperLink>
            <div id="Search" class="floatright" runat="server">
                <asp:HyperLink ID="SearchStudent" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=s"
                    runat="server">Search for Student</asp:HyperLink>
                <asp:HyperLink ID="SearchHouse" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=l"
                    runat="server">Search for House</asp:HyperLink>
            </div>
            <div class="clear">
                <asp:HiddenField ID="hdnStepNumber" runat="server" Value="0" />
            </div>
            <div id="div_register_User">
                <h2 class="form_heading">
                    My Current House
                </h2>
                <div id="formwrapper">
                     <uc3:Current_House_Menu_Bar ID="Current_House_Menu_Barid" runat="server" />
                    <div id="forminner">
                        <h1>
                            Leave My Current House</h1>
                        <p id="ButtonLeaveHouseID" runat="server" visible="false">
                            If You Want to Leave Current House Please
                            <asp:LinkButton ID="ButtonLeaveHouse" runat="server" OnClick="OnConfirm" OnClientClick="Confirm()">Click Here</asp:LinkButton>
                        </p>
                        <h1>
                            Request roommates to Leave Current House
                        </h1>
                        <div id="StudentListData" runat="server">
                            <asp:DataList ID="DataListStudentList" runat="server" RepeatColumns="2" DataKeyField="UserId"
                                OnItemDataBound="ItemDataBound">
                                <ItemTemplate>
                                    <div class="imagegallerycontainer">
                                        <div class="imagegallery">
                                            <asp:HyperLink ID="HyperLinkimage" runat="server" Text='<%# Eval("FirstName") + " " +  Eval("LastName")%>'
                                                ImageUrl="~/Images/Sample/Noimage.jpg" NavigateUrl='<%# Eval("UserId","~/Student/Student_Public_Profile.aspx?AccessCode={0}") %>'></asp:HyperLink>
                                        </div>
                                        <div>
                                            <asp:HiddenField ID="hdUserId" runat="server" Value='<%# Eval("UserId") %>' />
                                            <asp:HiddenField ID="hdHouseId" runat="server" Value='<%# Eval("HouseId") %>' />
                                            <asp:Label ID="lblname" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("MiddleName") %>'></asp:Label>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("LastName") %>'></asp:Label><br />
                                        </div>
                                        <div>
                                            <asp:LinkButton ID="RequestLeaveCurrentHouse" CommandName="RequestLeave" CommandArgument='<%# Eval("UserId") %>'
                                                OnCommand="RequestLeaveCurrentHouse_Command" runat="server">Request to Leave</asp:LinkButton>
                                            <asp:Label ID="LabelItsMe" runat="server" Text="" Visible="false"></asp:Label>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <h1>
                            Responde to Leave Current House By roommates
                        </h1>
                        <div id="RespondeToLeaveHouse" runat="server">
                            <p id="RespondeToLeaveHouseTrue" runat="server" visible="false">
                                You have a Request to Leave Current House from :
                                <asp:HyperLink ID="RequestedUser" runat="server" Visible="true"></asp:HyperLink>
                                <asp:Label ID="RequestedUserName" runat="server" Text="" Visible="false"></asp:Label><br />
                                If You Want to Response to Request, Please
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="OnConfirmRequest" OnClientClick="ConfirmRequest()">Click Here</asp:LinkButton>
                            </p>
                            <p id="RespondeToLeaveHouseFalse" runat="server" visible="false">
                                You have no Request to Leave Current house.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
