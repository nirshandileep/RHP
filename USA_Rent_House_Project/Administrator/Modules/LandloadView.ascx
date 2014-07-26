<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LandloadView.ascx.cs"
    Inherits="USA_Rent_House_Project.Administrator.Modules.LandloadView" %>
<div id="div_LandLoadView">
    <h2 class="form_heading">
        Land Load Profile info
    </h2>
    <div id="forminner">
        <p>
            <asp:Label ID="NameLabel" runat="server" AssociatedControlID="LabelNameID" CssClass="form_label">Name:</asp:Label>
            <asp:Label ID="LabelNameID" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserNameLabelID" CssClass="form_label">User Name :</asp:Label>
            <asp:Label ID="UserNameLabelID" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="EmailLabelID" CssClass="form_label">E-mail:</asp:Label>
            <asp:Label ID="EmailLabelID" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Label ID="AddressLabel" runat="server" AssociatedControlID="AddressLabelID" CssClass="form_label">Address:</asp:Label>
            <asp:Label ID="AddressLabelID" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Label ID="CityLabel" runat="server" AssociatedControlID="CityLabelID" CssClass="form_label">City:</asp:Label>
            <asp:Label ID="CityLabelID" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Label ID="StateLabel" runat="server" AssociatedControlID="StateLabelID" CssClass="form_label">State:</asp:Label>
            <asp:Label ID="StateLabelID" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Label ID="ZipLabel" runat="server" AssociatedControlID="ZipLabelID" CssClass="form_label">Zip:</asp:Label>
            <asp:Label ID="ZipLabelID" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Label ID="MobileLabel" runat="server" AssociatedControlID="MobileLabelID" CssClass="form_label">Best Contact #:</asp:Label>
            <asp:Label ID="MobileLabelID" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="QuestionLabelID" CssClass="form_label">Secret Question:</asp:Label>
            <asp:Label ID="QuestionLabelID" runat="server" Text=""></asp:Label>
        </p>
    </div>
</div>
