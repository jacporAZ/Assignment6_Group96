<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Try-itHash.aspx.cs" Inherits="Assignment5_Group96.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div> 
        <h1>Try it Page : Hashing </h1>
            <h3>
                This is the try it page for hashing.
            </h3>
            <p>
                &nbsp;</p>
        <p>
            Password Hashing: Input a password
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="HASH (SHA256)" />
        </p>
        <p>
            Result: <asp:Label ID="Label1" runat="server" Text="...."></asp:Label>
        </p>
        <p>
            Encryption: Input a Key:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;and a password
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Encrypt" />
        </p>
        <p>
            Result:
            <asp:Label ID="Label2" runat="server" Text="...."></asp:Label>
&nbsp;</p>
        <p>
            Decryption: Input a Key:
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;and the encrypted text<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Decrypt" />
        </p>
        <p>
            Result:<asp:Label ID="Label3" runat="server" Text="..."></asp:Label>
        </p>
    </form>
</body>
</html>
