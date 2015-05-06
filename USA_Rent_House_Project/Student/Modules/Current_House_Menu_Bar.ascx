<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Current_House_Menu_Bar.ascx.cs" Inherits="USA_Rent_House_Project.Student.Modules.Current_House_Menu_Bar" %>
 <p>
                <asp:HyperLink ID="CreateCurrentHouseButton" runat="server" CssClass="loginlinks" NavigateUrl="~/Student/Student_Profile_Current_House.aspx" Visible="false">Create current residence</asp:HyperLink>&nbsp;
                                <asp:HyperLink ID="ViewCurrentHouseButton" runat="server" CssClass="loginlinks" NavigateUrl="~/Student/Student_Profile_Current_House_Details.aspx" Visible="false">View current residence</asp:HyperLink>&nbsp;
                    <asp:HyperLink ID="UpdateCurrentHouseButton" runat="server" CssClass="loginlinks" NavigateUrl="~/Student/Student_Profile_Update_Current_House.aspx" Visible="false">Update current residence</asp:HyperLink>
                     &nbsp; <asp:HyperLink ID="LeaveCurrentHouseButton" runat="server" CssClass="loginlinks" NavigateUrl="~/Student/Student_Profile_Leave_Current_House.aspx" Visible="false">Leave current residence</asp:HyperLink>
  
                </p>