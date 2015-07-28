<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CurrentHouse.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.CurrentHouse" %>
<div id="currentHomeStudent" runat="server">
    <asp:HiddenField ID="HiddenFieldLandloadID" runat="server" />
    <asp:HiddenField ID="HiddenFieldHouseID" runat="server" />
    <div id="RightPanel">
        <div id="div_register_User">
            <h2 class="form_heading">
                My Current Residence
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
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Student/Current_House_Dorms.aspx?housetype=1">Dorms</asp:HyperLink></div>
                    <div class="buttons">
                        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Student/Current_House_Dorms.aspx?housetype=2">Apartments</asp:HyperLink></div>
                    <div class="buttons" style="display: none">
                        <asp:HyperLink ID="HyperLink4" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Student/Current_House_Dorms.aspx?housetype=3">Condos</asp:HyperLink></div>
                    <div class="buttons" style="display: none">
                        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Student/Current_House_Dorms.aspx?housetype=4">Family Housing</asp:HyperLink></div>
                    <div class="buttons" style="display: none">
                        <asp:HyperLink ID="HyperLink6" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Student/Current_House_Dorms.aspx?housetype=5">Houses</asp:HyperLink>
                    </div>
                </div>
                <div id="Step4" runat="server" visible="false">
                    <div class="buttons">
                        <asp:HyperLink ID="HyperLink8" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Student/Current_House_Dorms.aspx?housetype=6">Apartments</asp:HyperLink></div>
                    <div class="buttons">
                        <asp:HyperLink ID="HyperLink9" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Student/Student_Profile_Current_House.aspx?housetype=7">Condos</asp:HyperLink></div>
                    <div class="buttons">
                        <asp:HyperLink ID="HyperLink10" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Student/Student_Profile_Current_House.aspx?housetype=8">Town Home</asp:HyperLink></div>
                    <div class="buttons">
                        <asp:HyperLink ID="HyperLink11" runat="server" CssClass="homelargebuttons" NavigateUrl="~/Student/Student_Profile_Current_House.aspx?housetype=9">Houses</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
