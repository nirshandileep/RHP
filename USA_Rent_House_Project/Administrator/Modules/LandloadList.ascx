<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LandloadList.ascx.cs" Inherits="USA_Rent_House_Project.Administrator.Modules.LandloadList" %>

<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<h1>
Land load List
</h1>

<dx:ASPxGridView ID="gvLandloadList" runat="server" AutoGenerateColumns="False" KeyFieldName="LandlordId">
    <Columns>
<%--
     //Landlord.LandlordId,Landlord.LandlordName, aspnet_Users.UserName, [User].Name, [User].StreetAddress, [User].City, [User].State, [User].Zip, [User].BestContactNumber, 
        //              [User].DriversLicenseNumber, [User].RatingValue, [User].IsDeleted, [User].IsFBUser, aspnet_Membership.LoweredEmail, 
        //              aspnet_Membership.PasswordQuestion--%>

        <dx:GridViewDataTextColumn Caption="LandlordName" FieldName="LandlordName" VisibleIndex="1"  UnboundType="String">
      
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
        <dx:GridViewDataTextColumn FieldName="BestContactNumber" VisibleIndex="6" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="LoweredEmail" VisibleIndex="7"  UnboundType="String">
           
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="IsFBUser" VisibleIndex="8" 
            UnboundType="String">
          
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="PasswordQuestion" VisibleIndex="9" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataProgressBarColumn FieldName="RatingValue" VisibleIndex="10" 
            UnboundType="Decimal">
            <PropertiesProgressBar CustomDisplayFormat="" Height="" Width="">
            </PropertiesProgressBar>
        </dx:GridViewDataProgressBarColumn>
    </Columns>
    <SettingsBehavior ConfirmDelete="True" />
</dx:ASPxGridView>

