<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SchoolList.ascx.cs" Inherits="USA_Rent_House_Project.Administrator.Modules.SchoolList" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<dx:ASPxGridView ID="gvSchoolList" runat="server" AutoGenerateColumns="False" 
    oncommandbuttoninitialize="gvSchoolList_CommandButtonInitialize" 
    onrowdeleting="gvSchoolList_RowDeleting" 
    onrowinserting="gvSchoolList_RowInserting" 
    onrowupdating="gvSchoolList_RowUpdating">
    <Columns>
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
        <dx:GridViewDataTextColumn FieldName="StreetAddress" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="City" VisibleIndex="3">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="State" VisibleIndex="4">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Zip" VisibleIndex="5">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ContactNumber" VisibleIndex="6">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Email" VisibleIndex="7">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="WebsiteURL" VisibleIndex="8">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Location" VisibleIndex="9">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataProgressBarColumn FieldName="RatingValue" VisibleIndex="10">
            <PropertiesProgressBar CustomDisplayFormat="" Height="" Width="">
            </PropertiesProgressBar>
        </dx:GridViewDataProgressBarColumn>
    </Columns>
    <SettingsBehavior ConfirmDelete="True" />
</dx:ASPxGridView>

