<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="House_List.ascx.cs"
    Inherits="USA_Rent_House_Project.Land_load.Modules.House_List" %>
<div id="HouseList" runat="server">
    <br />
    <%-- <strong>
        My Property List.
    </strong>--%>
    <div id="HouseListData" runat="server">
        <asp:DataList ID="DataListHouseList" runat="server" RepeatColumns="1" DataKeyField="HouseId"
            OnItemCommand="DataListHouseList_ItemCommand"  OnItemDataBound="ItemDataBound">
            <ItemTemplate>
                <div class="imagegallery">
                 <asp:HyperLink ID="HyperLinkimage" runat="server" Text='<%# Eval("StreetAddress") + " " +  Eval("City")%>' ImageUrl="~/Images/Sample/Noimage.jpg"  NavigateUrl='<%# Eval("HouseId","~/Land_load/Land_Load_House.aspx?AccessCode={0}") %>'></asp:HyperLink>
                </div>
                <div id="DivHouse" runat="server">
                 <asp:HiddenField ID="hdUserId" runat="server" Value='<%# Eval("LandlordId") %>' />
                    <asp:HiddenField ID="hdnHouseId" runat="server" Value='<%# Eval("HouseId") %>' />
                    <asp:Label ID="StreetAddress" runat="server" Text='<%# Eval("StreetAddress") %>'></asp:Label>,
                    <asp:Label ID="City" runat="server" Text='<%# Eval("City") %>'></asp:Label>,
                    <asp:Label ID="State" runat="server" Text='<%# Eval("State") %>'></asp:Label>,
                    <asp:Label ID="Zip" runat="server" Text='<%# Eval("Zip") %>'></asp:Label>
                    <br />
                    House Rating:
                    <asp:Label ID="RatingValue" runat="server" Text='<%# Eval("RatingValue") %>'></asp:Label>
                    Price :
                    <asp:Label ID="Price" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    <br />
                    BedRooms :
                    <asp:Label ID="BedRooms" runat="server" Text='<%# Eval("BedRooms") %>'></asp:Label>
                    BathRooms :
                    <asp:Label ID="BathRooms" runat="server" Text='<%# Eval("BathRooms") %>'></asp:Label>
                    <br />
                    LotSquareFootage :
                    <asp:Label ID="LotSquareFootage" runat="server" Text='<%# Eval("LotSquareFootage") %>'></asp:Label>
                    UtilitiesIncludedInRent :
                    <asp:Label ID="UtilitiesIncludedInRent" runat="server" Text='<%# Eval("UtilitiesIncludedInRent") %>'></asp:Label>
                    <br />
                    <asp:HyperLink ID="HyperLink3" CssClass="loginlinks" runat="server" NavigateUrl='<%# Eval("HouseId","~/Land_load/Land_Load_House.aspx?AccessCode={0}") %>'>View Property</asp:HyperLink>
                    
                     <asp:HyperLink ID="HyperLinkviewLandlord" CssClass="loginlinks" runat="server"  NavigateUrl='<%# String.Format("~/Land_load/Land_load_Public_Profile.aspx?AccessCode={0}&AccessCode2={1}", DataBinder.Eval(Container.DataItem, "HouseId"), DataBinder.Eval(Container.DataItem, "LandlordId")) %>'>Public View</asp:HyperLink>
                   
                    <asp:HyperLink ID="HyperLink4" CssClass="loginlinks" runat="server" NavigateUrl='<%# Eval("HouseId","~/Land_load/Current_Students.aspx?AccessCode={0}") %>'>Current Students</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink1" CssClass="loginlinks" runat="server" NavigateUrl='<%# Eval("HouseId","~/Land_load/Land_Load_House_info_Add.aspx?HouseId={0}") %>'>Edit House</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink2" CssClass="loginlinks" runat="server" NavigateUrl='<%# Eval("HouseId","~/Land_load/Land_Load_House_Option_Add.aspx?HouseId={0}") %>'>Edit House Options</asp:HyperLink>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</div>
