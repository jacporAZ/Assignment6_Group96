<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Try-it-Cookies.aspx.cs" Inherits="eventWeb.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Try it Page : Cookies </h1>
                <h3>
                    This is the try it page for cookies.
                </h3>
                <p>
                    Select which 3 clubs you would like to choose from: </p>
            <p>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="132px">
                        <asp:ListItem>Chess Club</asp:ListItem>
                        <asp:ListItem>Video Game Club</asp:ListItem>
                        <asp:ListItem>Horse Club</asp:ListItem>
                        <asp:ListItem>Cooking Club</asp:ListItem>
                        <asp:ListItem>Robotics Club</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="132px">
                        <asp:ListItem>Chess Club</asp:ListItem>
                        <asp:ListItem>Video Game Club</asp:ListItem>
                        <asp:ListItem>Horse Club</asp:ListItem>
                        <asp:ListItem>Cooking Club</asp:ListItem>
                        <asp:ListItem>Robotics Club</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="132px">
                        <asp:ListItem>Chess Club</asp:ListItem>
                        <asp:ListItem>Video Game Club</asp:ListItem>
                        <asp:ListItem>Horse Club</asp:ListItem>
                        <asp:ListItem>Cooking Club</asp:ListItem>
                        <asp:ListItem>Robotics Club</asp:ListItem>
                    </asp:DropDownList>
            </p>
            <p>
                    Add to Interest List:
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
            </p>
            <p>
                    Your current Interest List:
                    <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
        </div>
        <p>
            Your past Interest List:
        </p>
        <p>
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </p>
        <p>
            Clear List
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear" />
        </p>
    </form>
</body>
</html>
