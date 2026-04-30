<%@ Page Title="Staff Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="Assignment5_Group96.Staff" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Protected Staff Page</h2>

    <p>
        This page is restricted to authenticated staff users. Staff credentials are checked against
        <code>App_Data/Staff.xml</code>.
    </p>

    <asp:Label ID="lblWelcome" runat="server" ForeColor="Green"></asp:Label>

    <hr />

    <h3>Staff Test Area</h3>
    <p>This section represents staff-only functionality for Assignment 6.</p>

    <asp:Button ID="btnShowStaffInfo" runat="server" Text="Show Staff Info" OnClick="btnShowStaffInfo_Click" />
    <br /><br />

    <asp:Label ID="lblStaffInfo" runat="server"></asp:Label>

    <br /><br />

    <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
</asp:Content>