<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="eventWeb.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Club Manager - Default.aspx landing page</h1>
            <h2>CSE 445 - Assignment 5</h2> 
            <h3>Jacob Porter</h3>
            <h4>Group 96</h4>
            <h5>Contribution - 100%</h5> 
            <h6>Deployment: </h6>
        </div>
        <p>
            MEMEBER: CLICK HERE<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign in" />
        </p>
        <p>
            STAFF: CLICK HERE<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Staff" />
        </p>
        <h2 style="width: 140px">
            Summary
        </h2>
        <p>This is an app that allows both campus students and admin to explore clubs within ASU.</p>
        <p>There are interest lists as well as info lists</p> 

        <h4>Architecture</h4>
        <p>There is a web service for providing club info and interest, and 2 local componets, one for hashing and another for cookies/session state</p>

        <h4>TUTORIAL</h4>
        <p>There are multiple try it pages that show functionality of the webservice, session state/cookies, and hashing (DLL)</p>
        <p>&nbsp;</p> 
        <h2>Service Directory</h2>
        <p>Provider: Jacob Porter</p>
        <p>Component Type: ASPX page</p>
        <p>Description: Default public landing page for the site, contains service directories and navigation for staff / members</p>
        <p>Resources: ASP.net WebForms, C# implementation</p>
        <p>Try it: Currently here</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>Provider: Jacob Porter</p>
        <p>Component Type: DLL class library </p>
        <p>Description: crypto.HashPass(string) returns string, one way hashing in B64, for password storage </p>
        <p>Resources: crypto.dll, secures Member sign in</p>
        &nbsp;<h3 style="width: 391px">
            Try it Page - Hashing
            <asp:Button ID="Button3" runat="server" Text="Try-it Page"  PostBackUrl="~/Try-itHash.aspx"/>
        </h3>
        <p style="width: 391px">
            &nbsp;</p>
        <p style="width: 391px">
            Provider: Jacob Porter</p>
        <p style="width: 391px">
            Component: Session state</p>
        <p style="width: 391px">
            Description: Tracks the interest of students interested in joining a club, 3 options, each selection persists per postback</p>
        <p style="width: 391px">
            Resources: Session[&quot;SessionHistory&quot;] in memory via List&lt;string&gt; per session</p>
        <h3> Try it Page - Session<asp:Button ID="Button4" runat="server" Text="Try-it Page" PostBackUrl="~/Try-it-Cookies.aspx"/>
        </h3>
        <p> &nbsp;</p>
        <p> Provider: Jacob Porter</p>
        <p> Component Type: ASMX webService
        </p>
        <p> Description: 3 methods</p>
        <p style="margin-left: 40px"> GetClubs() -&gt; returns the clubs available
        </p>
        <p style="margin-left: 40px"> getClubInfo(string clubName) -&gt; returns as list of club info
        </p>
        <p style="margin-left: 40px"> getClubMembers(string clubName) -&gt; returns the number of members in a club</p>
        <h3>Try it Page - Web Service 
            <asp:Button ID="Button5" runat="server" Text="Try-it Page" PostBackUrl="~/Try-it-WebService.aspx" />
        </h3>
        <p>
            &nbsp;</p>
    </form>

</body>
</html>
