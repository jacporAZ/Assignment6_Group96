<%@ Page Title="Assignment 5 Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assignment5_Group96._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style type="text/css">
        .page-title {
            margin-top: 10px;
            margin-bottom: 8px;
        }

        .section-box {
            margin-top: 20px;
            margin-bottom: 20px;
            padding: 16px;
            border: 1px solid #d9d9d9;
            border-radius: 6px;
            background-color: #fafafa;
        }

        .info-text {
            line-height: 1.7;
        }

        .custom-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 12px;
        }

        .custom-table th,
        .custom-table td {
            border: 1px solid #bfbfbf;
            padding: 10px;
            vertical-align: top;
        }

        .custom-table th {
            background-color: #f0f4f8;
        }

        .test-output {
            margin-top: 12px;
            font-weight: 600;
            color: #1f4e79;
        }

        .small-note {
            color: #666;
            font-size: 0.95em;
        }

        .button-row {
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .service-box {
            margin-top: 18px;
            padding: 12px;
            border: 1px solid #d0d0d0;
            background-color: #ffffff;
        }

        .service-label {
            display: inline-block;
            width: 110px;
            font-weight: 600;
        }
    </style>

    <div class="page-title">
        <h1>Assignment 5 - Service-Oriented Web Application</h1>
    </div>

    <div class="section-box">
        <h3>Application Overview</h3>
        <p class="info-text">
            This is the public landing page for our Assignment 5 web application.
            It serves as the main entry page, introduces the application, and provides a service directory
            and TryIt access points so the grader can test the implemented local components and web service.
        </p>
        <p class="info-text">
            User self-signup and protected Member/Staff access will be implemented in Assignment 6.
            For Assignment 5, this page provides public testing access to the implemented local components
            and remote service.
        </p>

        <p class="info-text">
            Current Assignment 5 scope for this page:
        </p>
        <ul>
            <li>Show the Application and Components Summary Table</li>
            <li>Provide visible TryIt access for local components</li>
            <li>Provide visible TryIt access for the remote service</li>
            <li>Provide placeholder links for Member and Staff pages for Assignment 6</li>
        </ul>

        <p class="small-note">
            Note: Member and Staff access control functionality will be completed in Assignment 6.
        </p>
    </div>

    <div class="section-box">
        <h3>How to Test This Page</h3>
        <p class="info-text">
            The grader can test the local component buttons in the TryIt section below.
            The output for each test will appear directly on this page.
            The remote service can also be tested directly from the service TryIt area below.
        </p>

        <p class="info-text">
            Current test cases:
        </p>
        <ol>
            <li>Click <strong>Test Session Component</strong> to create or update a session variable.</li>
            <li>Click <strong>Test Cookie Component</strong> to create a browser cookie and display its value.</li>
            <li>Click <strong>Show Request Info</strong> to display request and session details useful for testing integration.</li>
            <li>Enter a number in the service test area and click <strong>Calculate Square</strong>.</li>
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
                <td>
                    Public Default page that introduces the application, shows the summary table,
                    and provides TryIt access points.
                </td>
                <td>
                    Implemented using <code>Default.aspx</code> and <code>Default.aspx.cs</code>.
                    This is the main landing page and integration page for Assignment 5.
                </td>
            </tr>

            <tr>
                <td>Anusha Sharma</td>
                <td>Session state component</td>
                <td>
                    Stores a test value in session state.
                    <br />
                    Input: button click
                    <br />
                    Output: session key and stored value displayed on page
                </td>
                <td>
                    Implemented in the code-behind using <code>Session[]</code>.
                    Tested from the TryIt section on this page.
                </td>
            </tr>

            <tr>
                <td>Anusha Sharma</td>
                <td>Cookie component</td>
                <td>
                    Creates and reads a cookie for testing temporary client-side state.
                    <br />
                    Input: button click
                    <br />
                    Output: cookie name and value displayed on page
                </td>
                <td>
                    Implemented in the code-behind using <code>HttpCookie</code>.
                    Tested from the TryIt section on this page.
                </td>
            </tr>

            <tr>
                <td>Anusha Sharma</td>
                <td>ASMX Web Service</td>
                <td>
                    MathService provides a Square(int num) operation to compute the square of an integer input.
                    <br />
                    Method: <code>Square(int num)</code>
                    <br />
                    Input: integer
                    <br />
                    Output: integer
                </td>
                <td>
                    Implemented using <code>MathService.asmx</code> and <code>MathService.asmx.cs</code>.
                    The service is tested directly in the TryIt section on this page.
                </td>
            </tr>

            <tr>
                <td>Team Integration</td>
                <td>Future Member Page</td>
                <td>
                    Placeholder access point for Assignment 6 Member page.
                </td>
                <td>
                    Assignment 6 will add actual access control and page implementation.
                </td>
            </tr>

            <tr>
                <td>Team Integration</td>
                <td>Future Staff Page</td>
                <td>
                    Placeholder access point for Assignment 6 Staff page.
                </td>
                <td>
                    Assignment 6 will add actual access control and page implementation.
                </td>
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
            <h4>Test Remote Service (MathService - Square)</h4>

            <span class="service-label">Enter Number:</span>
            <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
            &nbsp;
            <asp:Button ID="btnCallService" runat="server" Text="Calculate Square" OnClick="btnCallService_Click" CssClass="btn btn-success" />

            <br /><br />
            <asp:Label ID="lblServiceResult" runat="server" CssClass="test-output"></asp:Label>
        </div>
    </div>

    <div class="section-box">
        <h3>Navigation</h3>
        <p class="info-text">
            These links are placeholders for Assignment 6 functionality.
        </p>

        <p>
            <asp:HyperLink ID="lnkMemberPage" runat="server" NavigateUrl="~/MemberPage.aspx">
                Go to Member Page
            </asp:HyperLink>
            <br /><br />
            <asp:HyperLink ID="lnkStaffPage" runat="server" NavigateUrl="javascript:void(0);">
                Go to Staff Page (Assignment 6 placeholder)
            </asp:HyperLink>
        </p>
    </div>

</asp:Content>