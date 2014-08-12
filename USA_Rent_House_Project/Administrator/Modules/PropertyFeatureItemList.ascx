<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PropertyFeatureItemList.ascx.cs" Inherits="USA_Rent_House_Project.Administrator.Modules.PropertyFeatureItemList" %>


<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<dx:ASPxGridView ID="gvFeatureItemList" runat="server" AutoGenerateColumns="False" 
    oncommandbuttoninitialize="gvFeatureItemList_CommandButtonInitialize" 
    onrowdeleting="gvFeatureItemList_RowDeleting" 
    onrowinserting="gvFeatureItemList_RowInserting" 
    onrowupdating="gvFeatureItemList_RowUpdating" KeyFieldName="OptionItemId"
    oncelleditorinitialize="gvFeatureItemList_CellEditorInitialize">
    <Columns>


<%--    [OptionItemId]
      ,[Name]
      ,[Description]
      ,[IsDeleted]
      ,[OptionId]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[UpdatedBy]
      ,[UpdatedDate] --%>

        <dx:GridViewCommandColumn Caption="Actions" FixedStyle="Left" VisibleIndex="0" 
            Width="120px">
            <EditButton Visible="True">
                <Image ToolTip="Edit">
                </Image>
            </EditButton>
            <NewButton Visible="True">
                <Image ToolTip="New">
                </Image>
            </NewButton>
            <DeleteButton Visible="True">
                <Image ToolTip="Delete">
                </Image>
            </DeleteButton>
            <CancelButton Visible="True">
                <Image ToolTip="Cancel">
                </Image>
            </CancelButton>
            <UpdateButton Visible="True">
                <Image ToolTip="Update">
                </Image>
            </UpdateButton>
            <ClearFilterButton Visible="True">
            </ClearFilterButton>
        </dx:GridViewCommandColumn>
        <dx:GridViewDataComboBoxColumn Caption="Option Category" 
            FieldName="OptionId" UnboundType="Integer" VisibleIndex="1">
             <PropertiesComboBox TextField="Name" ValueField="OptionId" 
                 ValueType="System.Int32">
             </PropertiesComboBox>
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataTextColumn Caption="Name" FieldName="Name" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="3">
        </dx:GridViewDataTextColumn>

    </Columns>
    <SettingsBehavior ConfirmDelete="True" />
</dx:ASPxGridView>

