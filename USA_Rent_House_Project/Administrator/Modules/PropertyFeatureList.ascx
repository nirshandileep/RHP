<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PropertyFeatureList.ascx.cs" Inherits="USA_Rent_House_Project.Administrator.Modules.PropertyFeatureList" %>


<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<dx:ASPxGridView ID="gvFeatureList" runat="server" AutoGenerateColumns="False" 
    oncommandbuttoninitialize="gvFeatureList_CommandButtonInitialize" 
    onrowdeleting="gvFeatureList_RowDeleting" 
    onrowinserting="gvFeatureList_RowInserting" 
    onrowupdating="gvFeatureList_RowUpdating" KeyFieldName="OptionId" 
    oncelleditorinitialize="gvFeatureList_CellEditorInitialize" SettingsPager-PageSize="50">
    <Columns>

<%--    [OptionId], [Name], [Description], [OptionCategoryId], [ParentOptionId], [IsDeleted], [IsMultiSelect] --%>

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
        <dx:GridViewDataTextColumn Caption="Name" FieldName="Name" VisibleIndex="1">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
         <dx:GridViewDataComboBoxColumn Caption="Option Category" 
            FieldName="OptionCategoryId" UnboundType="Integer" VisibleIndex="3">
             <PropertiesComboBox TextField="Name" ValueField="OptionCategoryId" 
                 ValueType="System.Int32">
                 <ValidationSettings Display="Dynamic">
                     <RequiredField ErrorText="Required" IsRequired="True" />
                 </ValidationSettings>
             </PropertiesComboBox>
        </dx:GridViewDataComboBoxColumn>
       <%-- <dx:GridViewDataCheckColumn FieldName="IsMultiSelect" UnboundType="Boolean"
            VisibleIndex="6">

        </dx:GridViewDataCheckColumn>--%>
      
        <dx:GridViewDataTextColumn FieldName="Points" UnboundType="Integer" 
            VisibleIndex="4">
            <PropertiesTextEdit>
                <ValidationSettings Display="Dynamic">
                    <RequiredField IsRequired="True" />
                </ValidationSettings>
            </PropertiesTextEdit>
        </dx:GridViewDataTextColumn>
      
    </Columns>
    <SettingsBehavior ConfirmDelete="True" />
    <SettingsEditing Mode="Inline" />
</dx:ASPxGridView>

