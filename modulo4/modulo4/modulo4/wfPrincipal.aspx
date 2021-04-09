<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfPrincipal.aspx.cs" Inherits="modulo4.wfPrincipal" %>
<%@ PreviousPageType VirtualPath="~/wfLogin.aspx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Principal</h1>
            <p>
                <asp:Label ID="lbCookie" runat="server" Text="Label"></asp:Label>
            </p>
            <p>
                <asp:Button ID="btnSair" runat="server" OnClick="Button1_Click" Text="Sair" />
            &nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="limpar" />
            </p>
        </div>
    </form>
</body>
</html>
