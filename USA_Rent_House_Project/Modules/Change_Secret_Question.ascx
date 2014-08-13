﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Change_Secret_Question.ascx.cs"
    Inherits="USA_Rent_House_Project.Modules.Change_Secret_Question" %>
<h3>
    Change Password Secret and Answer for
    <%= HttpContext.Current.User.Identity.Name%>
</h3>
<asp:Label ID="Msg" ForeColor="maroon" runat="server" /><br />
<table cellpadding="3" border="0">
    <tr>
        <td>
            Current Secret Question:
        </td>
        <td>

            <asp:Label ID="CurrentQuestionTextbox" runat="server" Text=""></asp:Label>
        </td>
        <td>
           
        </td>
    </tr>
    <tr>
        <td>
            Password:
        </td>
        <td>
            <asp:TextBox ID="PasswordTextbox" runat="server" TextMode="Password" />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="OldPasswordRequiredValidator" runat="server" ControlToValidate="PasswordTextbox"
                ForeColor="red" Display="Static" ErrorMessage="Required" />
        </td>
    </tr>
    <tr>
        <td>
            New Secret Question:
        </td>
        <td>
            <asp:TextBox ID="QuestionTextbox" MaxLength="256" Columns="60" runat="server" />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="QuestionRequiredValidator" runat="server" ControlToValidate="QuestionTextbox"
                ForeColor="red" Display="Static" ErrorMessage="Required" />
        </td>
    </tr>
    <tr>
        <td>
            New Secret Answer:
        </td>
        <td>
            <asp:TextBox ID="AnswerTextbox" MaxLength="128" Columns="60" runat="server" />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="AnswerRequiredValidator" runat="server" ControlToValidate="AnswerTextbox"
                ForeColor="red" Display="Static" ErrorMessage="Required" />
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <asp:Button ID="ChangePasswordQuestionButton" Text="Change Secret Question and Answer"
                OnClick="ChangePasswordQuestion_OnClick" runat="server" />
        </td>
    </tr>
</table>