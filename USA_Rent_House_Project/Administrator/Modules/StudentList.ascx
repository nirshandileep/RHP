<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StudentList.ascx.cs" Inherits="USA_Rent_House_Project.Administrator.Modules.StudentList" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<h1>
Student List
</h1>
<dx:ASPxGridView ID="gvStudentList" runat="server" AutoGenerateColumns="False" 
    KeyFieldName="StudentId">
    <Columns>

<%--     Student.StudentId, aspnet_Users.UserName, aspnet_Membership.LoweredEmail, aspnet_Membership.PasswordQuestion, [User].IsFBUser, [User].Name, 
                      [User].StreetAddress, [User].City, [User].State, [User].Zip, [User].BestContactNumber, [User].DriversLicenseNumber, [User].Status, [User].IsDeleted, 
                      [User].RatingValue, School.Name AS SchoolName, Student.Year, Student.LandloadName, Student.LandloadPlace, [User].CreatedDate--%>

        <dx:GridViewDataTextColumn FieldName="FirstName" UnboundType="String" 
            VisibleIndex="0">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="MiddleName" UnboundType="String" 
            VisibleIndex="1">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="LastName" UnboundType="String" 
            VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="StreetAddress" UnboundType="String" 
            VisibleIndex="3">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="City" UnboundType="String" 
            VisibleIndex="4">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="State" VisibleIndex="5" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Zip" VisibleIndex="6" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>

        <dx:GridViewDataTextColumn FieldName="BestContactNumber" VisibleIndex="7">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="DriversLicenseNumber" VisibleIndex="8">
        </dx:GridViewDataTextColumn>
       <%-- <dx:GridViewDataTextColumn FieldName="IsDeleted" VisibleIndex="7">
        </dx:GridViewDataTextColumn>--%>
        <dx:GridViewDataTextColumn FieldName="SchoolName" VisibleIndex="9">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Year" VisibleIndex="10">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Status" UnboundType="String" 
            VisibleIndex="11">
        </dx:GridViewDataTextColumn>
         <dx:GridViewDataTextColumn FieldName="IsFBUser" VisibleIndex="12" 
            UnboundType="String">
          
        </dx:GridViewDataTextColumn>
         <dx:GridViewDataTextColumn Caption="Email"  FieldName="LoweredEmail" VisibleIndex="13"  UnboundType="String">
           
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="PasswordQuestion" VisibleIndex="14" 
            UnboundType="String">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataProgressBarColumn FieldName="StudentRatingValue" UnboundType="Decimal" 
            VisibleIndex="15">
            <PropertiesProgressBar CustomDisplayFormat="" Height="" Width="">
            </PropertiesProgressBar>
        </dx:GridViewDataProgressBarColumn>
    </Columns>
</dx:ASPxGridView>

