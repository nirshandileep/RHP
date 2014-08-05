<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StudentList.ascx.cs" Inherits="USA_Rent_House_Project.Administrator.Modules.StudentList" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<dx:ASPxGridView ID="gvStudentList" runat="server" AutoGenerateColumns="False" 
    KeyFieldName="StudentId">
    <Columns>
        <dx:GridViewDataTextColumn FieldName="Name" UnboundType="String" 
            VisibleIndex="0">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="StreetAddress" UnboundType="String" 
            VisibleIndex="1">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="City" UnboundType="String" 
            VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="BestContactNumber" VisibleIndex="3">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="DriversLicenseNumber" VisibleIndex="4">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="PersonalEmail" VisibleIndex="5">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="SchoolName" VisibleIndex="6">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="SchoolStreetAddress" VisibleIndex="7">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="SchoolContactNumber" UnboundType="String" 
            VisibleIndex="8">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataProgressBarColumn FieldName="StudentRatingValue" UnboundType="Decimal" 
            VisibleIndex="9">
            <PropertiesProgressBar CustomDisplayFormat="" Height="" Width="">
            </PropertiesProgressBar>
        </dx:GridViewDataProgressBarColumn>
    </Columns>
</dx:ASPxGridView>

