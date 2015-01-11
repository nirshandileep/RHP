<%@ Page Title="Student Profile Current House Details" Language="C#" MasterPageFile="~/Master_Pages/Student.Master"
    AutoEventWireup="true" CodeBehind="Student_Profile_Current_House_Details.aspx.cs"
    Inherits="USA_Rent_House_Project.Student.Student_Profile_Current_House_Details" %>

<%@ Register Src="Modules/Student_Profile_Header.ascx" TagName="Student_Profile_Header"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc1" %>

<%@ Register Src="~/Student/Modules/Current_House_Menu_Bar.ascx" TagName="Current_House_Menu_Bar" TagPrefix="uc3" %>

<%@ Register Src="~/Student/Modules/Ctr_QuickLinks.ascx" TagName="QuickLinks" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
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
             <uc1:QuickLinks ID="QuickLinksid" runat="server" />
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
                            View Current House</h1>
                        <div id="LandlordInfo" runat="server">
                            <h1>
                                Landload Info</h1>
                            <p id="setEmail" runat="server">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="form_label">E-mail:</asp:Label>
                                <asp:Label ID="Email" runat="server" CssClass="form_label"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="LabelName" runat="server" AssociatedControlID="Name" CssClass="form_label">Name:</asp:Label>
                                <asp:Label ID="Name" runat="server" CssClass="form_label"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="MobileLabel" runat="server" AssociatedControlID="Mobile" CssClass="form_label">Best Contact #:</asp:Label>
                                <asp:Label ID="Mobile" runat="server" CssClass="form_label"></asp:Label>
                            </p>

                        </div>
                        <div id="LandlordHouseInfo" runat="server">
                        <h1>
                                House Info</h1>
                            <p>
                                <asp:Label ID="AddressLabel" runat="server" AssociatedControlID="Address" CssClass="form_label">Rental Address:</asp:Label>
                                <asp:Label ID="Address" runat="server" CssClass="form_label"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="CityLabel" runat="server" AssociatedControlID="City" CssClass="form_label">City:</asp:Label>
                                <asp:Label ID="City" runat="server" CssClass="form_label"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="StateLabel" runat="server" AssociatedControlID="State" CssClass="form_label">State:</asp:Label>
                                <asp:Label ID="State" runat="server" CssClass="form_label"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="ZipLabel" runat="server" AssociatedControlID="Zip" CssClass="form_label">Zip:</asp:Label>
                                <asp:Label ID="Zip" runat="server" CssClass="form_label"></asp:Label>
                            </p>
                        </div>
                        <div id="StudentListData" runat="server">
                            <h1>
                                Current Students</h1>
                            <asp:DataList ID="DataListStudentList" runat="server" RepeatColumns="3" DataKeyField="UserId"
                                OnItemDataBound="ItemDataBound">
                                <ItemTemplate>
                                    <div class="imagegallerycontainer">
                                        <div class="imagegallery">
                                            <asp:HyperLink ID="HyperLinkimage" runat="server" Text='<%# Eval("FirstName") + " " +  Eval("LastName")%>'
                                                ImageUrl="~/Images/Sample/Noimage.jpg" NavigateUrl='<%# Eval("UserId","~/Student/Student_Public_Profile.aspx?AccessCode={0}") %>'></asp:HyperLink>
                                        </div>
                                        <div>
                                            <asp:HiddenField ID="hdUserId" runat="server" Value='<%# Eval("UserId") %>' />
                                            <asp:Label ID="lblname" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("MiddleName") %>'></asp:Label>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("LastName") %>'></asp:Label><br />
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
