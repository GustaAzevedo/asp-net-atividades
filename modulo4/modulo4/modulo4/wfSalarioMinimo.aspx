<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfSalarioMinimo.aspx.cs" Inherits="modulo4.wfSalarioMinimo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Informe o seu salário"></asp:Label>
            <br />
            <asp:TextBox ID="tbSalario" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbSalario" ErrorMessage="Insira o salario sem descontos"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Percentual de desconto"></asp:Label>
            <br />
            <asp:RadioButtonList ID="rblPorcentagem" runat="server" AutoPostBack="True">
                <asp:ListItem Value="10">10%</asp:ListItem>
                <asp:ListItem Value="20">20%</asp:ListItem>
                <asp:ListItem Value="30">30%</asp:ListItem>
                <asp:ListItem>Outro</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:TextBox ID="tbPercentual" runat="server" Visible="False"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPercentual" ErrorMessage="Insira um percentual de desconto"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:Button ID="btnEnvia" runat="server" PostBackUrl="~/wfResposta.aspx" Text="Enviar" />
&nbsp;</div>
    </form>
</body>
</html>
