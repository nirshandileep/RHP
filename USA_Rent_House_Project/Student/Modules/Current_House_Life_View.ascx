<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Current_House_Life_View.ascx.cs" Inherits="USA_Rent_House_Project.Student.Modules.Current_House_Life_View" %>
 <div>
                <h2 class="form_heading">
                    Current House Life</h2>
                <asp:Repeater ID="RepeaterImages" runat="server">
                    <ItemTemplate>
                        <asp:Image ID="Image" runat="server" Width="150" Height="100" ImageUrl='<%# Container.DataItem %>' />
                    </ItemTemplate>
                </asp:Repeater>
            </div>