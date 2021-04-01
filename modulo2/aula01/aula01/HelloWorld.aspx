<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HelloWorld.aspx.cs" Inherits="aula01.HelloWorld" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hello World - Aula 1</title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
&nbsp;&nbsp;
        </p>
        <p>
            <asp:TextBox ID="txtMsg" runat="server" OnTextChanged="TextBox1_TextChanged1" Width="373px"></asp:TextBox>
            <asp:Button ID="btExecutar" runat="server" Height="20px" OnClick="btExecutar_Click" Text="Btn Executar" Width="102px" />
        </p>
        <p>
            <asp:Label ID="lMsg" runat="server" Text="Excreva o que deseja informar na caixa de texto"></asp:Label>
        </p>
    </form>
</body>
</html>
