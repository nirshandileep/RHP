<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/General.Master" AutoEventWireup="true"
    CodeBehind="Search.aspx.cs" Inherits="USA_Rent_House_Project.Search" %>
    <%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="div_Search" runat="server" visible="true">
        <p class="homeheadingsub">
            "find your next connection"</p>
        <div class="searchbuttons">
            <asp:Button ID="ButtonSearchHouse" runat="server" CssClass="searchbuttonslarge" Text="Search house"
                OnClick="ButtonSearchHouse_Click" />
            <asp:Button ID="ButtonSearchStudent" runat="server" CssClass="searchbuttonslarge" Text="Search student"
                OnClick="ButtonSearchStudent_Click" />
            <div class="clear">
            </div>
        </div>
        <div class="clear">
        </div>
    </div>
    <div class="clear">
    </div>
    <div id="formwrapper">
        <div id="Div_Search_House" runat="server" visible="false">
            <h1>
                Search House</h1>
            <div id="forminner">
                
                <p>
                    <asp:Label ID="LabelName" runat="server" AssociatedControlID="DrpSchoolName" CssClass="form_label"> School Name:</asp:Label>
                   <%-- <asp:TextBox ID="Name" runat="server" CssClass="textEntry textbox_w3"></asp:TextBox>--%>

                     <dx:ASPxComboBox ID="DrpSchoolName" runat="server"  Width="100%"
                    AutoResizeWithContainer="True" TextFormatString="{0} ({1}, {2})" DropDownRows="10" 
                    IncrementalFilteringMode="Contains" Theme="DevEx" 
                    EnableDefaultAppearance="False" ShowShadow="False">
                    <Columns>
                        <dx:ListBoxColumn FieldName="Name" Name="Name" />
                        <dx:ListBoxColumn FieldName="StreetAddress" Name="Address" />
                        <dx:ListBoxColumn FieldName="City" Name="City" />
                    </Columns>
                    <ValidationSettings Display="Dynamic">
                    </ValidationSettings>
                </dx:ASPxComboBox>
              
                </p>
                <p>
                    <asp:Label ID="LabelZipcode" runat="server" AssociatedControlID="Zipcode" CssClass="form_label">Zip:</asp:Label>
                    <asp:TextBox ID="Zipcode" runat="server" CssClass="textEntry textbox_w3" MaxLength="4"></asp:TextBox>
                </p>
                 <p>
                <asp:Label ID="LabelBedRooms" runat="server" AssociatedControlID="DrpBedRooms" CssClass="form_label">Bed Rooms:</asp:Label>
                <asp:DropDownList ID="DrpBedRooms" runat="server">
                </asp:DropDownList>
            </p>
            <p>
                <asp:Label ID="LabelBathRooms" runat="server" AssociatedControlID="DrpBathRooms"
                    CssClass="form_label">Bath Rooms:</asp:Label>
                <asp:DropDownList ID="DrpBathRooms" runat="server">
                </asp:DropDownList>
            </p>
            </div>
            <p class="submitButton">
                <asp:Button ID="FindHome" runat="server" CssClass="actionbutton" Text="Find House"
                    OnClick="FindHome_Click" />
            </p>
        </div>
        <div id="Div_Search_Student" runat="server" visible="false">
            <h1>
                Search Student</h1>
            <div id="forminner">
                <p>
                    <asp:Label ID="Labellandloadname" runat="server" AssociatedControlID="landloadname"
                        CssClass="form_label"> Name:</asp:Label>
                    <asp:TextBox ID="landloadname" runat="server" CssClass="textEntry textbox_w3"></asp:TextBox>
                </p>
                <p>
                    <asp:Label ID="Label5" runat="server" AssociatedControlID="DrpGender" CssClass="form_label">Male Female:</asp:Label>
                    <asp:DropDownList ID="DrpGender" runat="server" CssClass="dropDownEntry">
                       
                    </asp:DropDownList>
                </p>
                
                <p>
                <asp:Label ID="LabelStatus" runat="server" AssociatedControlID="Status" CssClass="form_label">Status:</asp:Label>
                <asp:DropDownList ID="Status" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="StatusRequired" runat="server" ErrorMessage="Please select Status"
                    CssClass="failureNotification" ControlToValidate="Status" ValidationGroup="SaveSchoolValidationGroup"
                    InitialValue="-1">*</asp:RequiredFieldValidator>
            </p>

              <%-- <p>
                    <asp:Label ID="LabelDrpGrade" runat="server" AssociatedControlID="DrpGrade" CssClass="form_label">Grade:</asp:Label>
                    <asp:DropDownList ID="DrpGrade" runat="server" CssClass="dropDownEntry">
                        <asp:ListItem Value="male">Junior</asp:ListItem>
                      
                    </asp:DropDownList>
                </p>--%>
                
            </div>
            <p class="submitButton">
                <asp:Button ID="FindStudent" runat="server" CssClass="actionbutton" Text="Find Student"
                    OnClick="FindStudent_Click" />
            </p>
        </div>
    </div>

    <div>Search results</div>
</asp:Content>
