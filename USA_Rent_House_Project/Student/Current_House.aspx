<%@ Page Title="Current House" Language="C#" MasterPageFile="~/Master_Pages/Student.Master" AutoEventWireup="true"
    CodeBehind="Current_House.aspx.cs" Inherits="USA_Rent_House_Project.Student.Current_House" %>

<%@ Register Src="Modules/Student_Profile_Header.ascx" TagName="Student_Profile_Header"
    TagPrefix="uc1" %>
<%@ Register Src="Modules/Menu_Bar.ascx" TagName="Menu_Bar" TagPrefix="uc1" %>
<%@ Register Src="~/Student/Modules/Ctr_QuickLinks.ascx" TagName="QuickLinks" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <uc1:Student_Profile_Header ID="Student_Profile_HeaderID" runat="server" />
    <asp:HiddenField ID="HiddenFieldLandloadID" runat="server" />
    <asp:HiddenField ID="HiddenFieldHouseID" runat="server" />
    <div id="currentHomeStudent" runat="server">
        <div id="LeftPanel" runat="server">
            <uc1:Menu_Bar ID="Menu_Bar1" runat="server" />
        </div>
        <div id="RightPanel" runat="server">
            <uc1:QuickLinks ID="QuickLinksid" runat="server" />
            <div class="clear">
            </div>
            <div id="div_register_User">
                <h2 class="form_heading">
                    My Current House
                </h2>
                <div id="formwrapper">
                    <asp:HiddenField ID="HiddenFieldStep" runat="server" />
                    <div id="Step1" runat="server">
                        <div class="buttons">
                            <asp:LinkButton ID="LinkButtonAddHouse" CssClass="homelargebuttons" runat="server"
                                OnClick="LinkButtonAddHouse_Click">Add House</asp:LinkButton>
                        </div>
                        <div class="buttons">
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Student/Student_Profile.aspx">Add Roommate</asp:HyperLink>
                        </div>
                    </div>
                    <div id="Step2" runat="server" visible="false">
                        <div class="buttons">
                            <asp:LinkButton ID="LinkButtonOnCampus" CssClass="homelargebuttons" runat="server"
                                OnClick="LinkButtonOnCampus_Click">On Campus</asp:LinkButton>
                        </div>
                        <div class="buttons">
                            <asp:LinkButton ID="LinkButtonOffCampus" CssClass="homelargebuttons" runat="server"
                                OnClick="LinkButtonOffCampus_Click">Off Campus</asp:LinkButton>
                        </div>
                    </div>
                    <div id="Step3" runat="server" visible="false">
                        <div class="buttons">
                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Student/Current_House_Dorms.aspx">Dorms</asp:HyperLink></div>
                        <div class="buttons">
                            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Student/Student_Profile.aspx">Appartments</asp:HyperLink></div>
                        <div class="buttons">
                            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Student/Student_Profile.aspx">Condos</asp:HyperLink></div>
                        <div class="buttons">
                            <asp:HyperLink ID="HyperLink5" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Student/Student_Profile.aspx">Family Housing</asp:HyperLink></div>
                        <div class="buttons">
                            <asp:HyperLink ID="HyperLink6" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Student/Student_Profile.aspx">Houses</asp:HyperLink>
                        </div>
                    </div>

                    <div id="Step4" runat="server" visible="false">
                        
                        <div class="buttons">
                            <asp:HyperLink ID="HyperLink8" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Student/Student_Profile.aspx">Appartments</asp:HyperLink></div>
                        <div class="buttons">
                            <asp:HyperLink ID="HyperLink9" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Student/Student_Profile.aspx">Condos</asp:HyperLink></div>
                        <div class="buttons">
                            <asp:HyperLink ID="HyperLink10" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Student/Student_Profile.aspx">Town Home</asp:HyperLink></div>
                        <div class="buttons">
                            <asp:HyperLink ID="HyperLink11" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Student/Student_Profile.aspx">Houses</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
