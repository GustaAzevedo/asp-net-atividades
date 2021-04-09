<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfResposta.aspx.cs" Inherits="modulo4.wfResposta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Resposta Salário Mínimo</h1>
            <div>

                <asp:Label ID="lSalarioTotal" runat="server" Text="Salário Total"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lPercental" runat="server" Text="Percentual"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lLiquido" runat="server" Text="Salário líquido"></asp:Label>
                <br />
                <br />
                <asp:Button ID="btnVoltar" runat="server" PostBackUrl="~/wfSalarioMinimo.aspx" Text="Voltar" />

            </div>
        </div>
    </form>
</body>
</html>
