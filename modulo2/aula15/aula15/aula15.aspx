<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aula15.aspx.cs" Inherits="aula15.aula15" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#660066">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#FF9900" Text="Validação de Campos"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Nome"></asp:Label>
                <br />
                <asp:TextBox ID="tbNome" runat="server"></asp:TextBox>
                &nbsp;<br />&nbsp;<asp:RequiredFieldValidator ID="rfvValidacao1" runat="server" ControlToValidate="tbNome" ErrorMessage="Nome é Obrigatório" ForeColor="#FF9900">Nome é Obrigatório</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label6" runat="server" ForeColor="White" Text="E-Mail"></asp:Label>
                <br />
                <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" ErrorMessage="Informe um email válido" ForeColor="#FF9900" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Idade"></asp:Label>
                <br />
                <asp:TextBox ID="tbIdade" runat="server"></asp:TextBox>
                <br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tbIdade" ErrorMessage="Idade fora do permitido" ForeColor="#FF9900" MaximumValue="120" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                <br />
                <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Senha"></asp:Label>
                <br />
                <asp:TextBox ID="tbSenha" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;
                <br />
                <asp:RequiredFieldValidator ID="rfvValidacao2" runat="server" ControlToValidate="tbSenha" ErrorMessage="Senha é obrigatória" ForeColor="#FF9900">Senha é obrigatória</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Repta a Senha"></asp:Label>
                <br />
                <asp:TextBox ID="tbSenha2" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbSenha" ControlToValidate="tbSenha2" ErrorMessage="As senhas são diferentes" ForeColor="#FF9900"></asp:CompareValidator>
                &nbsp;<br /> &nbsp;<asp:RequiredFieldValidator ID="rfvSenha" runat="server" ControlToValidate="tbSenha2" ErrorMessage="Repite a senha" ForeColor="#FF9900"></asp:RequiredFieldValidator>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
                <br />
                <asp:Button ID="btnEnviar" runat="server" BackColor="#FF9900" BorderColor="#FFCC00" BorderStyle="Solid" OnClick="btnEnviar_Click" Text="Enviar" />
                <br />
            </asp:Panel>
            <asp:Label ID="lbResp" runat="server" Text="N e S"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
