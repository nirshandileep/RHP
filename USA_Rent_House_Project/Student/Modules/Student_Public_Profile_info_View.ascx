<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Public_Profile_info_View.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_Public_Profile_info_View" %>
<div id="div_register_User">
<div id="forminfo">
    <div id="formwrapper">
        <div id="forminner">
            <div id="BasicInfomation">
                <h2 class="form_heading">
                    Basic Information
                </h2>
                <p>
                    <asp:Label ID="LabelName" runat="server" AssociatedControlID="Name" CssClass="form_label"> Name:</asp:Label>
                    <asp:Label ID="Name" runat="server"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="LabelGender" runat="server" AssociatedControlID="Gender" CssClass="form_label">Gender:</asp:Label>
                    <asp:Label ID="Gender" runat="server"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="Label1" runat="server" AssociatedControlID="DOB" CssClass="form_label">Date of Birth:</asp:Label>
                    <asp:Label ID="DOB" runat="server"></asp:Label>
                </p>
            </div>
            <div id="ContactInformation">
                <h2 class="form_heading">
                    Contact Information
                </h2>
                <p id="setEmail" runat="server">
                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="form_label">Email:</asp:Label>
                    <asp:Label ID="Email" runat="server"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="AddressLabel" runat="server" AssociatedControlID="Address" CssClass="form_label">Address:</asp:Label>
                    <asp:Label ID="Address" runat="server"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="LabelState" runat="server" AssociatedControlID="State" CssClass="form_label">State:</asp:Label>
                    <asp:Label ID="State" runat="server"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="LabelCity" runat="server" AssociatedControlID="City" CssClass="form_label">City:</asp:Label>
                    <asp:Label ID="City" runat="server"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="MobileLabel" runat="server" AssociatedControlID="Mobile" CssClass="form_label">Best Contact #:</asp:Label>
                    <asp:Label ID="Mobile" runat="server"></asp:Label>
                </p>
            </div>
            <div id="SchoolInformation">
                <h2 class="form_heading">
                    School Information
                </h2>
                <p>
                    <asp:Label ID="LabelSchoolName" runat="server" AssociatedControlID="SchoolName" CssClass="form_label">Current School:</asp:Label>
                    <asp:Label ID="SchoolName" runat="server"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="Labelpreviousschoolinfo" runat="server" AssociatedControlID="previousschoolinfo"
                        CssClass="form_label">Previous School Info:</asp:Label>
                    <asp:Label ID="previousschoolinfo" runat="server"></asp:Label>
                </p>
                <p id="previousschoolID" runat="server" visible="false">
                    <asp:Label ID="Labelpreviousschool" runat="server" AssociatedControlID="previousschool"
                        CssClass="form_label">Previous School:</asp:Label>
                    <asp:Label ID="previousschool" runat="server"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="Labelstartdate" runat="server" AssociatedControlID="startdate" CssClass="form_label">Start Date of Current University:</asp:Label>
                    <asp:Label ID="startdate" runat="server"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="LabelStatus" runat="server" AssociatedControlID="Status" CssClass="form_label">Status:</asp:Label>
                    <asp:Label ID="Status" runat="server"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="LabelCurentMajor" runat="server" AssociatedControlID="CurentMajor"
                        CssClass="form_label">Current Major:</asp:Label>
                    <asp:Label ID="CurentMajor" runat="server"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="LabelYear" runat="server" AssociatedControlID="Year" CssClass="form_label">Graduation Year:</asp:Label>
                    <asp:Label ID="Year" runat="server"></asp:Label>
                </p>
            </div>
            <div id="SpotlightInformation">
                <h2 class="form_heading">
                    Spotlight Information
                </h2>
                <p>
                    <asp:Label ID="LabelAwards" runat="server" AssociatedControlID="Awards" CssClass="form_label">Awards:</asp:Label>
                      <asp:Label ID="Awards" runat="server"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="LabelAchievements" runat="server" AssociatedControlID="Achievements" CssClass="form_label">Achievements:</asp:Label>
                      <asp:Label ID="Achievements" runat="server"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="LabelCurentGPA" runat="server" AssociatedControlID="CurentGPA" CssClass="form_label">Current GPA:</asp:Label>
                      <asp:Label ID="CurentGPA" runat="server"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="LabelOraganizations" runat="server" AssociatedControlID="txtOraganizations" CssClass="form_label">Student Organizations/Clubs/Etc:</asp:Label>
                      <asp:Label ID="txtOraganizations" runat="server"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="LabelInvolvments" runat="server" AssociatedControlID="Involvments" CssClass="form_label">Involvements:</asp:Label>
                      <asp:Label ID="Involvments" runat="server"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="LabelFraternity" runat="server" AssociatedControlID="txtFraternity" CssClass="form_label">Fraternity:</asp:Label>
                      <asp:Label ID="txtFraternity" runat="server"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="LabelSoroity" runat="server" AssociatedControlID="txtSoroity" CssClass="form_label">Soroity:</asp:Label>
                      <asp:Label ID="txtSoroity" runat="server"></asp:Label>
                </p>
            </div>
        </div>
    </div>
    </div>
</div>
