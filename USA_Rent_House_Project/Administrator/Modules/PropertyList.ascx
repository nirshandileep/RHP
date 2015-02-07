<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PropertyList.ascx.cs" Inherits="USA_Rent_House_Project.Administrator.Modules.PropertyList" %>


<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<h1>
House / Property List
</h1>

<dx:ASPxGridView ID="gvPropertyList" runat="server" AutoGenerateColumns="False" KeyFieldName="HouseId">
    <Columns>
<%--
    House.HouseId, House.LandlordId, House.StreetAddress, House.City, House.State, House.Zip, House.YearHomeBuild, House.BedRooms, 
                      House.BathRooms, House.LotSquareFootage, House.TotalSquareFootage, House.UtilitiesIncludedInRent, House.PropertyImagePath, House.IsDeleted, 
                      House.CreatedBy, House.CreatedDate, House.UpdatedBy, House.UpdatedDate, House.RatingValue, House.Price, Landlord.LandlordName--%>

        <dx:GridViewDataTextColumn FieldName="LandlordName" VisibleIndex="1"  UnboundType="String">
      
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="StreetAddress" VisibleIndex="2" 
            UnboundType="String">
        
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="City" VisibleIndex="3" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="State" VisibleIndex="4" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Zip" VisibleIndex="5" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>
           <dx:GridViewDataTextColumn FieldName="YearHomeBuild" VisibleIndex="6" Caption="Year" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>
           <dx:GridViewDataTextColumn FieldName="BedRooms" Caption="BedRooms" VisibleIndex="7" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>
           <dx:GridViewDataTextColumn FieldName="BathRooms" Caption="BathRooms" VisibleIndex="8" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>
           <dx:GridViewDataTextColumn FieldName="LotSquareFootage" Caption="Lot Sq. Footage" VisibleIndex="9" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="TotalSquareFootage" Caption="Total Sq. Footage" VisibleIndex="10" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="UtilitiesIncludedInRent" VisibleIndex="11"  UnboundType="String">

          
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Price" VisibleIndex="12" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataProgressBarColumn FieldName="RatingValue" VisibleIndex="13" 
            UnboundType="Decimal">
            <PropertiesProgressBar CustomDisplayFormat="" Height="" Width="">
            </PropertiesProgressBar>
        </dx:GridViewDataProgressBarColumn>
    </Columns>
    <SettingsBehavior ConfirmDelete="True" />
</dx:ASPxGridView>