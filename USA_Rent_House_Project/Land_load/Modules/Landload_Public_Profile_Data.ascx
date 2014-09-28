<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Landload_Public_Profile_Data.ascx.cs" Inherits="USA_Rent_House_Project.Land_load.Modules.Landload_Public_Profile_Data" %>
  

            <div id="HouseDetails" runat="server">
                <asp:HyperLink ID="HyperLinkHouseDetails" runat="server"> Details about House</asp:HyperLink>
            </div>
            <div id="currentHomeStudentData" runat="server" visible="false">
                <h2>
                    All the students live in the current home</h2>
                <br />
                <asp:DataList ID="DataListCurrentHomeStudent" runat="server" RepeatColumns="3" DataKeyField="UserId">
                    <ItemTemplate>
                        <div class="imagegallerycontainer">
                            <div class="imagegallery">
                            </div>
                            <div>
                                <asp:Label ID="lblname" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("MiddleName") %>'></asp:Label>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("LastName") %>'></asp:Label><br />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                
            </div>
             <div id="Search" runat="server">
                <asp:HyperLink ID="SearchStudent" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=s"
                    runat="server">Search for Student</asp:HyperLink>
                <asp:HyperLink ID="SearchHouse" CssClass="loginlinks" NavigateUrl="~/Search.aspx?type=l"
                    runat="server">Search for House</asp:HyperLink>
            </div>
            