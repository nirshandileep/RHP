<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Student_Spotlight.ascx.cs"
    Inherits="USA_Rent_House_Project.Student.Modules.Student_Spotlight" %>
<div id="div_Student_Spotlight">
    <h2 class="form_heading">
        Student Spotlight Info
    </h2>
    <div id="formwrapper">
        <div id="forminner">
            <p>
                <asp:Label ID="LabelAwards" runat="server" AssociatedControlID="Awards" CssClass="form_label">Awards:</asp:Label>
                <asp:TextBox ID="Awards" runat="server" TextMode="MultiLine" CssClass="textEntry textbox_w1" Width="790px"  Rows="5" ></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="LabelAchievements" runat="server" AssociatedControlID="Achievements" CssClass="form_label">Achievements:</asp:Label>
                <asp:TextBox ID="Achievements" runat="server" TextMode="MultiLine" CssClass="textEntry textbox_w1" Width="790px"  Rows="5"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="LabelCurentGPA" runat="server" AssociatedControlID="CurentGPA" CssClass="form_label">Curent GPA:</asp:Label>
                <asp:TextBox ID="CurentGPA" runat="server" CssClass="textEntry textbox_w1" 
                    Width="790px"  Rows="2" ControlToValidate="CurentGPA"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server"
                        ErrorMessage="Incorrect GPA Value" ControlToValidate="CurentGPA" 
                    Display="Dynamic" MaximumValue="5.01" MinimumValue="0.01" Type="Double" 
                    SetFocusOnError="True" ValidationGroup="SaveSchoolValidationGroup"></asp:RangeValidator>
            </p>
            <p>
                <asp:Label ID="LabelOraganizations" runat="server" AssociatedControlID="Oraganizations" CssClass="form_label">Student Oraganizations/Clubs/ect:</asp:Label>
                <asp:TextBox ID="Oraganizations" runat="server" TextMode="MultiLine" CssClass="textEntry textbox_w1" Width="790px"  Rows="5"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="LabelInvolvments" runat="server" AssociatedControlID="Involvments" CssClass="form_label">Involvments:</asp:Label>
                <asp:TextBox ID="Involvments" runat="server" TextMode="MultiLine" CssClass="textEntry textbox_w1" Width="790px"  Rows="5"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="LabelFraternity" runat="server" AssociatedControlID="Fraternity" CssClass="form_label">Fraternity:</asp:Label>
                <asp:TextBox ID="Fraternity" runat="server" TextMode="MultiLine" CssClass="textEntry textbox_w1" Width="790px"  Rows="5"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="LabelSoroity" runat="server" AssociatedControlID="Soroity" CssClass="form_label">Soroity:</asp:Label>
                <asp:TextBox ID="Soroity" runat="server" TextMode="MultiLine" CssClass="textEntry textbox_w1" Width="790px"  Rows="5"></asp:TextBox>
            </p>
        </div>
        <p class="submitButton">
            <asp:Button ID="SaveStudent_Spotlight" runat="server" CssClass="actionbutton" CommandName="MoveNext"
                Text="Save" ValidationGroup="SaveSchoolValidationGroup" 
                onclick="SaveStudent_Spotlight_Click" />
            <asp:Label ID="lblError" runat="server" CssClass="failureNotification" Text=""></asp:Label>
        </p>
    </div>
</div>
