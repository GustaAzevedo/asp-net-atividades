<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AgendaTelefonica.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Email do usuário"></asp:Label>
            <br />
            <asp:TextBox ID="tbUsuario" runat="server" Width="210px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="rfvLoginEmail" runat="server" ControlToValidate="tbUsuario" ErrorMessage="Insira um Email válido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="tbUsuario" ErrorMessage="Insira um email"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Senha"></asp:Label>
            <br />
            <asp:TextBox ID="tbSenha" runat="server" TextMode="Password" Width="209px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="rfvSenha" runat="server" ControlToValidate="tbSenha" ErrorMessage="Insira uma senha"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnLogar" runat="server" OnClick="btnLogar_Click" Text="Logar" />
            <br />
            <br />
            <asp:Label ID="txtRetorno" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
