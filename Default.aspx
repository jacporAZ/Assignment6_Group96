<%@ Page Title="Assignment 6 Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assignment5_Group96._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style type="text/css">
        .page-title { margin-top: 10px; margin-bottom: 8px; }
        .section-box { margin-top: 20px; margin-bottom: 20px; padding: 16px; border: 1px solid #d9d9d9; border-radius: 6px; background-color: #fafafa; }
        .info-text { line-height: 1.7; }
        .custom-table { width: 100%; border-collapse: collapse; margin-top: 12px; }
        .custom-table th, .custom-table td { border: 1px solid #bfbfbf; padding: 10px; vertical-align: top; }
        .custom-table th { background-color: #f0f4f8; }
        .test-output { margin-top: 12px; font-weight: 600; color: #1f4e79; }
        .small-note { color: #666; font-size: 0.95em; }
        .button-row { margin-top: 10px; margin-bottom: 10px; }
        .service-box { margin-top: 18px; padding: 12px; border: 1px solid #d0d0d0; background-color: #ffffff; }
        .service-label { display: inline-block; width: 110px; font-weight: 600; }
    </style>

    <div class="page-title">
        <h1>Assignment 6 - Service-Oriented Web Application</h1>
    </div>

    <div class="section-box">
        <h3>Application Overview</h3>
        <p class="info-text">
            This is the public landing page for our service-oriented ASP.NET Web Forms application.
            It provides a service directory, TryIt access points, and navigation to the protected Member and Staff areas.
        </p>
        <p class="info-text">
            Staff access is protected by a login page that checks credentials stored in <code>App_Data/Staff.xml</code>.
            The required grader test account is <strong>Username: TA</strong> and <strong>Password: Cse445!</strong>.
        </p>
    </div>

    <div class="section-box">
        <h3>How to Test This Page</h3>
        <ol>
            <li>Click <strong>Test Session Component</strong> to create or update a session variable.</li>
            <li>Click <strong>Test Cookie Component</strong> to create a browser cookie and display its value.</li>
            <li>Click <strong>Show Request Info</strong> to display request and session details.</li>
            <li>Enter a number in the MathService area and click <strong>Calculate Square</strong>.</li>
            <li>Open <code>StudyService.asmx</code> and test <code>GetLetterGrade</code> with input <code>95</code>.</li>
            <li>Click <strong>Go to Staff Page</strong>, log in with <code>TA / Cse445!</code>, then test logout.</li>
        </ol>
    </div>

    <div class="section-box">
        <h3>Application and Components Summary Table</h3>

        <table class="custom-table">
            <tr>
                <th style="width: 18%;">Provider Name</th>
                <th style="width: 18%;">Page / Component Type</th>
                <th style="width: 32%;">Component Description</th>
                <th style="width: 32%;">Actual Resources / Methods / Where Used</th>
            </tr>

            <tr>
                <td>Anusha Sharma</td>
                <td>ASPX page and server controls</td>
                <td>Public Default page that introduces the application, shows the summary table, and provides TryIt access points.</td>
                <td><code>Default.aspx</code> and <code>Default.aspx.cs</code>.</td>
            </tr>

            <tr>
                <td>Anusha Sharma</td>
                <td>Session state component</td>
                <td>Stores a test value in session state.</td>
                <td>Implemented using <code>Session[]</code> in the code-behind.</td>
            </tr>

            <tr>
                <td>Anusha Sharma</td>
                <td>Cookie component</td>
                <td>Creates and reads a cookie for temporary client-side state.</td>
                <td>Implemented using <code>HttpCookie</code>.</td>
            </tr>

            <tr>
                <td>Anusha Sharma</td>
                <td>ASMX Web Service</td>
                <td>
                    MathService provides <code>Square(int num)</code>.
                    <br />Input: integer
                    <br />Output: integer
                </td>
                <td><code>MathService.asmx</code> and <code>MathService.asmx.cs</code>.</td>
            </tr>

            <tr>
                <td>Jaden Prather</td>
                <td>Staff Page / Access Control</td>
                <td>
                    Implements staff authentication using XML-based credentials.
                    Includes login page, protected staff page, and logout functionality.
                </td>
                <td>
                    <code>StaffLogin.aspx</code>, <code>Staff.aspx</code>, <code>App_Data/Staff.xml</code>,
                    and session-based authentication.
                </td>
            </tr>

            <tr>
                <td>Jaden Prather</td>
                <td>ASMX Web Service</td>
                <td>
                    StudyService provides <code>GetLetterGrade(double score)</code>.
                    <br />Input: score from 0 to 100
                    <br />Output: letter grade A, B, C, D, or E
                </td>
                <td>
                    <code>StudyService.asmx</code> and <code>StudyService.asmx.cs</code>.
                    Test directly by opening <code>StudyService.asmx</code>.
                </td>
            </tr>

            <tr>
                <td>Team Integration</td>
                <td>Member Page</td>
                <td>Protected member page functionality for Assignment 6.</td>
                <td><code>MemberPage.aspx</code>.</td>
            </tr>
        </table>
    </div>

    <div class="section-box">
        <h3>TryIt Section</h3>

        <div class="button-row">
            <asp:Button ID="btnTestSession" runat="server" Text="Test Session Component" OnClick="btnTestSession_Click" CssClass="btn btn-primary" />
            &nbsp;
            <asp:Button ID="btnTestCookie" runat="server" Text="Test Cookie Component" OnClick="btnTestCookie_Click" CssClass="btn btn-primary" />
            &nbsp;
            <asp:Button ID="btnShowRequestInfo" runat="server" Text="Show Request Info" OnClick="btnShowRequestInfo_Click" CssClass="btn btn-default" />
        </div>

        <asp:Label ID="lblOutput" runat="server" CssClass="test-output"></asp:Label>
        <br />
        <asp:Literal ID="litDetails" runat="server"></asp:Literal>

        <div class="service-box">
            <h4>Test Remote Service: MathService - Square</h4>
            <span class="service-label">Enter Number:</span>
            <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
            &nbsp;
            <asp:Button ID="btnCallService" runat="server" Text="Calculate Square" OnClick="btnCallService_Click" CssClass="btn btn-success" />
            <br /><br />
            <asp:Label ID="lblServiceResult" runat="server" CssClass="test-output"></asp:Label>
        </div>

        <div class="service-box">
            <h4>Test Remote Service: StudyService - Letter Grade</h4>
            <p>
                Open <code>StudyService.asmx</code>, select <code>GetLetterGrade</code>, and test with input <code>95</code>.
                Expected output: <code>A</code>.
            </p>
        </div>
    </div>

    <div class="section-box">
        <h3>Navigation</h3>
        <p class="info-text">
            Use these links to test the Assignment 6 protected pages.
        </p>

        <p>
            <asp:HyperLink ID="lnkMemberPage" runat="server" NavigateUrl="~/MemberPage.aspx">
                Go to Member Page
            </asp:HyperLink>
            <br /><br />
            <asp:HyperLink ID="lnkStaffPage" runat="server" NavigateUrl="~/Staff.aspx">
                Go to Staff Page
            </asp:HyperLink>
        </p>

        <p class="small-note">
            Staff test credentials: <strong>TA</strong> / <strong>Cse445!</strong>
        </p>
    </div>

</asp:Content>