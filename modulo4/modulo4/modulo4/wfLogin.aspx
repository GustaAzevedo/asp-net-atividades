<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfLogin.aspx.cs" Inherits="modulo4.wfLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="pLogin" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                <br />
                <asp:TextBox ID="tbName" runat="server" Width="225px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                <br />
                <asp:TextBox ID="tbPass" runat="server" TextMode="Password" Width="225px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
            </asp:Panel>
            <br />
        </div>
    </form>
</body>
</html>
