<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StudentView.ascx.cs"
    Inherits="USA_Rent_House_Project.Administrator.Modules.StudentView" %>
<div id="div_StudentView">
    <h2 class="form_heading">
        Student Profile info
    </h2>
    <div id="forminner">
        <p>
            <asp:Label ID="NameLabel" runat="server" AssociatedControlID="LabelNameID" CssClass="form_label">Name:</asp:Label>
            <asp:Label ID="LabelNameID" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserNameLabelID"
                CssClass="form_label">User Name :</asp:Label>
            <asp:Label ID="UserNameLabelID" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="EmailLabelID" CssClass="form_label">E-mail:</asp:Label>
            <asp:Label ID="EmailLabelID" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Label ID="AddressLabel" runat="server" AssociatedControlID="AddressLabelID"
                CssClass="form_label">Address:</asp:Label>
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
            <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="QuestionLabelID"
                CssClass="form_label">Secret Question:</asp:Label>
            <asp:Label ID="QuestionLabelID" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Label ID="DriversLicenseLabel" runat="server" AssociatedControlID="DriversLicenseLabelID"
                CssClass="form_label">Drivers License:</asp:Label>
            <asp:Label ID="DriversLicenseLabelID" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Label ID="SchoolNameLabel" runat="server" AssociatedControlID="SchoolNameLabelID" CssClass="form_label">School Name:</asp:Label>
            <asp:Label ID="SchoolNameLabelID" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Label ID="SchoolIDLabel" runat="server" AssociatedControlID="SchoolIDLabelID" CssClass="form_label">School ID:</asp:Label>
            <asp:Label ID="SchoolIDLabelID" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Label ID="YearLabel" runat="server" AssociatedControlID="YearLabelID" CssClass="form_label">Year:</asp:Label>
            <asp:Label ID="YearLabelID" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Label ID="StatusLabel" runat="server" AssociatedControlID="StatusLabelID" CssClass="form_label">Status:</asp:Label>
            <asp:Label ID="StatusLabelID" runat="server" Text=""></asp:Label>
        </p>
    </div>
</div>
