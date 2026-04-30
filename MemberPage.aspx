<%@ Page Title="MemberPage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MemberPage.aspx.cs" Inherits="Assignment5_Group96.MemberPage" %>

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
        <h1>Member Page</h1>
    </div>

    <div class="section-box">
        <h3>Login</h3>
        <p class="info-text">
            Members can Login here:</p>
        <p class="info-text">
            &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            username</p>
        <p class="info-text">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            password</p>
        <p class="info-text">
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
        </p> 
        <h3>If you are not registered, register here:</h3>
        <p>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            username</p>
        <br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        password<br />
        <asp:Button ID="Button2" runat="server" Text="Register" OnClick="Button2_Click" />
        <br />
        
    </div>
</asp:Content>