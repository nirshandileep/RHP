<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserList.ascx.cs" Inherits="USA_Rent_House_Project.Administrator.Modules.UserList" %>
<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<dx:ASPxGridView ID="gvUsers" runat="server" AutoGenerateColumns="False" 
    KeyFieldName="UserId">
    <Columns>
        <dx:GridViewDataTextColumn FieldName="Name" VisibleIndex="1">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="StreetAddress" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="City" VisibleIndex="3">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="State" VisibleIndex="4">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="DateOfBirth" UnboundType="DateTime" 
            VisibleIndex="5">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="BestContactNumber" VisibleIndex="6">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="PersonalEmail" VisibleIndex="7">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataProgressBarColumn FieldName="RatingValue" UnboundType="Decimal" 
            VisibleIndex="9">
            <PropertiesProgressBar CustomDisplayFormat="" Height="" Width="">
            </PropertiesProgressBar>
        </dx:GridViewDataProgressBarColumn>
        <dx:GridViewDataTextColumn FieldName="UserType" UnboundType="String" 
            VisibleIndex="0">
        </dx:GridViewDataTextColumn>
    </Columns>
</dx:ASPxGridView>
