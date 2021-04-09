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
            <asp:Label ID="Label1" runat="server" Text="Session ID:"></asp:Label>
        &nbsp;<asp:TextBox ID="tbIdSession" runat="server" Width="163px"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Contador Session:"></asp:Label>
&nbsp;<asp:TextBox ID="tbContador" runat="server" Width="121px"></asp:TextBox>
&nbsp;
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
&nbsp;<asp:Button ID="btnRemove" runat="server" OnClick="btnRemove_Click" Text="Remover" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Contador Aplicação"></asp:Label>
&nbsp;<asp:TextBox ID="tbContaAplica" runat="server" Width="112px"></asp:TextBox>
&nbsp;
            <asp:Button ID="btnAddAplicacao" runat="server" OnClick="btnAddAplicacao_Click" Text="Add" />
&nbsp;<asp:Button ID="btnRemoveAplication" runat="server" OnClick="btnRemoveAplication_Click" Text="Remover" />
        </div>
    </form>
</body>
</html>
