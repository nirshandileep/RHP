<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LandloadList.ascx.cs" Inherits="USA_Rent_House_Project.Administrator.Modules.LandloadList" %>

<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<h1>
Land load List
</h1>

<dx:ASPxGridView ID="gvLandloadList" runat="server" AutoGenerateColumns="False" KeyFieldName="LandlordId" SettingsPager-PageSize="50">
    <Columns>

      <dx:GridViewDataTextColumn FieldName="Name" UnboundType="String" 
            VisibleIndex="0">
        </dx:GridViewDataTextColumn>

         <dx:GridViewDataTextColumn Caption="Email" FieldName="PersonalEmail" VisibleIndex="1"  UnboundType="String">    
        </dx:GridViewDataTextColumn>

         <dx:GridViewDataTextColumn FieldName="BestContactNumber" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
     
        <dx:GridViewDataTextColumn FieldName="StreetAddress" UnboundType="String" 
            VisibleIndex="3">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="City" UnboundType="String" 
            VisibleIndex="4">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="State" VisibleIndex="5" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Zip" VisibleIndex="6" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>

       
         <dx:GridViewDataTextColumn FieldName="IsFBUser" VisibleIndex="7" 
            UnboundType="String">
          
        </dx:GridViewDataTextColumn>
        

        <dx:GridViewDataProgressBarColumn FieldName="StudentRatingValue" UnboundType="Decimal" 
            VisibleIndex="8">
            <PropertiesProgressBar CustomDisplayFormat="" Height="" Width="">
            </PropertiesProgressBar>
        </dx:GridViewDataProgressBarColumn>



<%--
        <dx:GridViewDataTextColumn FieldName="FirstName" UnboundType="String" 
            VisibleIndex="0">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="MiddleName" UnboundType="String" 
            VisibleIndex="1">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="LastName" UnboundType="String" 
            VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="StreetAddress" VisibleIndex="3" 
            UnboundType="String">
        
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="City" VisibleIndex="4" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="State" VisibleIndex="5" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Zip" VisibleIndex="6" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="BestContactNumber" VisibleIndex="7" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Email"  FieldName="LoweredEmail" VisibleIndex="8"  UnboundType="String">
           
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="IsFBUser" VisibleIndex="9" 
            UnboundType="String">
          
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="PasswordQuestion" VisibleIndex="10" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataProgressBarColumn FieldName="RatingValue" VisibleIndex="11" 
            UnboundType="Decimal">
            <PropertiesProgressBar CustomDisplayFormat="" Height="" Width="">
            </PropertiesProgressBar>
        </dx:GridViewDataProgressBarColumn>--%>
    </Columns>
    <SettingsBehavior ConfirmDelete="True" />
</dx:ASPxGridView>

