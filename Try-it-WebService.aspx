<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Try-it-WebService.aspx.cs" Inherits="Assignment5_Group96.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Try it page - Club Web Service</h1> 
            <h2>This is the try it page for the webservice ClubService</h2>
            <h4>1.This is the GetClubs() service, that returns a list of clubs available for signing up</h4>

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GetClubs()" />
&nbsp;List of available clubs:
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <h4>2. This is the GetClubInfo() service, that prints out info regarding the club</h4>

        </div>
        <asp:DropDownList ID="DropDownList2" runat="server" Width="132px">
            <asp:ListItem>Chess Club</asp:ListItem>
            <asp:ListItem>Video Game Club</asp:ListItem>
            <asp:ListItem>Horse Club</asp:ListItem>
            <asp:ListItem>Cooking Club</asp:ListItem>
            <asp:ListItem>Robotics Club</asp:ListItem>
        </asp:DropDownList>
&nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="GetClubInfo()" />
        Club Info:
        <asp:Label ID="Label2" runat="server"></asp:Label> 
        <h4>3. This is GetClubMembers() service, that prints out the number of members per club</h4>
        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Width="132px">
            <asp:ListItem>Chess Club</asp:ListItem>
            <asp:ListItem>Video Game Club</asp:ListItem>
            <asp:ListItem>Horse Club</asp:ListItem>
            <asp:ListItem>Cooking Club</asp:ListItem>
            <asp:ListItem>Robotics Club</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="GetClubMembers()" />
        &nbsp;
        <asp:Label ID="Label3" runat="server"></asp:Label>
    </form>
</body>
</html>
