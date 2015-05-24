<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Comments_View.ascx.cs" Inherits="USA_Rent_House_Project.Administrator.Modules.Comments_View" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<dx:ASPxGridView ID="aspxComments" runat="server" AutoGenerateColumns="False">
    <Columns>
        <dx:GridViewDataTextColumn Caption="ContextType" FieldName="ContextType" Name="ContextType" VisibleIndex="0">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Type" FieldName="Type" Name="Type" VisibleIndex="1">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="CommentText" FieldName="CommentText" Name="CommentText" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
    </Columns>
</dx:ASPxGridView>

