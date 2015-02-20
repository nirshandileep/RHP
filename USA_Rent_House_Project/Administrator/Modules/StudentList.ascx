<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StudentList.ascx.cs" Inherits="USA_Rent_House_Project.Administrator.Modules.StudentList" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<h1>
Student List
</h1>
<dx:ASPxGridView ID="gvStudentList" runat="server" AutoGenerateColumns="False" SettingsPager-PageSize="50"
    KeyFieldName="StudentId">
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
        
          <dx:GridViewDataTextColumn FieldName="ReferralCode" VisibleIndex="8" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>

        <dx:GridViewDataProgressBarColumn FieldName="StudentRatingValue" UnboundType="Decimal" 
            VisibleIndex="9">
            <PropertiesProgressBar CustomDisplayFormat="" Height="" Width="">
            </PropertiesProgressBar>
        </dx:GridViewDataProgressBarColumn>


          <%--  <dx:GridViewDataTextColumn FieldName="FirstName" UnboundType="String" 
            VisibleIndex="0">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="MiddleName" UnboundType="String" 
            VisibleIndex="1">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="LastName" UnboundType="String" 
            VisibleIndex="2">
        </dx:GridViewDataTextColumn>
<dx:GridViewDataTextColumn FieldName="PasswordQuestion" VisibleIndex="14" 
            UnboundType="String">
        </dx:GridViewDataTextColumn> <dx:GridViewDataTextColumn FieldName="DriversLicenseNumber" VisibleIndex="8">
        </dx:GridViewDataTextColumn>
       <dx:GridViewDataTextColumn FieldName="IsDeleted" VisibleIndex="7">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="SchoolName" VisibleIndex="9">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Year" VisibleIndex="10">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Status" UnboundType="String" 
            VisibleIndex="11">
        </dx:GridViewDataTextColumn>--%>
    </Columns>
</dx:ASPxGridView>

