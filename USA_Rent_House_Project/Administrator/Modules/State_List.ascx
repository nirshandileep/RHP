<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="State_List.ascx.cs" Inherits="USA_Rent_House_Project.Administrator.Modules.State_List" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<dx:ASPxGridView ID="gvStates" runat="server" AutoGenerateColumns="False" 
    DataSourceID="dsStates" KeyFieldName="StateId">
    <Columns>
        <dx:GridViewCommandColumn Visible="False" VisibleIndex="0">
        </dx:GridViewCommandColumn>
        <dx:GridViewDataTextColumn FieldName="StateId" ReadOnly="True" 
            UnboundType="Integer" Visible="False" VisibleIndex="1">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="StateName" UnboundType="String" 
            VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="StateCode" UnboundType="String" 
            VisibleIndex="3">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Description" UnboundType="String" 
            VisibleIndex="4">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="CreatedBy" UnboundType="Object" 
            Visible="False" VisibleIndex="5">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataDateColumn FieldName="CreatedDate" UnboundType="DateTime" 
            Visible="False" VisibleIndex="6">
        </dx:GridViewDataDateColumn>
        <dx:GridViewDataTextColumn FieldName="UpdatedBy" UnboundType="Object" 
            Visible="False" VisibleIndex="7">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataDateColumn FieldName="UpdatedDate" UnboundType="DateTime" 
            Visible="False" VisibleIndex="8">
        </dx:GridViewDataDateColumn>
    </Columns>
</dx:ASPxGridView>
<asp:SqlDataSource ID="dsStates" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
    DeleteCommand="usp_StateDelete" DeleteCommandType="StoredProcedure" 
    InsertCommand="usp_StateInsert" InsertCommandType="StoredProcedure" 
    SelectCommand="usp_StateSelectAll" SelectCommandType="StoredProcedure" 
    UpdateCommand="usp_StateUpdate" UpdateCommandType="StoredProcedure">
    <DeleteParameters>
        <asp:Parameter Name="StateId" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="StateId" Type="Int32" />
        <asp:Parameter Name="StateName" Type="String" />
        <asp:Parameter Name="StateCode" Type="String" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="CreatedBy" Type="Object" />
        <asp:Parameter Name="CreatedDate" Type="DateTime" />
        <asp:Parameter Name="UpdatedBy" Type="Object" />
        <asp:Parameter Name="UpdatedDate" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="StateId" Type="Int32" />
        <asp:Parameter Name="StateName" Type="String" />
        <asp:Parameter Name="StateCode" Type="String" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="CreatedBy" Type="Object" />
        <asp:Parameter Name="CreatedDate" Type="DateTime" />
        <asp:Parameter Name="UpdatedBy" Type="Object" />
        <asp:Parameter Name="UpdatedDate" Type="DateTime" />
    </UpdateParameters>
</asp:SqlDataSource>

