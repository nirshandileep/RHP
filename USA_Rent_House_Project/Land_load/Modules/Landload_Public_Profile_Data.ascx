<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Landload_Public_Profile_Data.ascx.cs" Inherits="USA_Rent_House_Project.Land_load.Modules.Landload_Public_Profile_Data" %>
  

           <div id="HouseDetails" runat="server">
                <asp:HyperLink ID="HyperLinkHouseDetails" CssClass="loginlinks" runat="server">Details About House</asp:HyperLink>
            </div>
            <div id="currentHomeStudentData" runat="server" visible="false">
                <h2>
                    All Students Living in the Current House</h2>
                <br />
                <asp:DataList ID="DataListCurrentHomeStudent" runat="server" RepeatColumns="2" DataKeyField="UserId" OnItemDataBound="ItemDataBound">
                    <ItemTemplate>
                        <div class="imagegallerycontainer">
                            <div class="imagegallery">
                            <asp:HiddenField ID="hdUserId" runat="server" Value='<%# Eval("UserId") %>' />
                            <asp:HyperLink ID="HyperLinkimage" runat="server" Text='<%# Eval("FirstName") + " " +  Eval("LastName")%>' ImageUrl="~/Images/Sample/Noimage.jpg"  NavigateUrl='<%# Eval("UserId","~/Student/Student_Public_Profile.aspx?AccessCode={0}") %>'></asp:HyperLink>
                      
                        </div>
                             <div id="Name" class="lblnames">
                            <asp:HyperLink ID="HyperLinkviewStudent" runat="server" Text='<%# Eval("FirstName") + " " +  Eval("LastName")%>'
                                NavigateUrl='<%# Eval("UserId","~/Student/Student_Public_Profile.aspx?AccessCode={0}") %>'></asp:HyperLink>
                        </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                
            </div>
            
            