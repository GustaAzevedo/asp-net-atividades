<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfFilmes.aspx.cs" Inherits="modulo4.wfFilmes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlFilmes" runat="server" Height="24px" Width="200px">
            </asp:DropDownList>
&nbsp;<asp:TextBox ID="tbFilme" runat="server" Height="19px" Width="332px"></asp:TextBox>
&nbsp;<asp:TextBox ID="tbNota" runat="server" Height="19px"></asp:TextBox>
&nbsp;<asp:Button ID="btnInserir" runat="server" OnClick="btnInserir_Click" Text="Inserir" />
&nbsp;<asp:Button ID="btnEnviar" runat="server" OnClick="btnEnviar_Click" PostBackUrl="~/wfListaFilmes.aspx" Text="Enviar" />
            <br />
        </div>
    </form>
</body>
</html>
