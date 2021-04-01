<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aula03.aspx.cs" Inherits="aula03.aula03" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Tabuada</h1>
            <p>
                <asp:DropDownList ID="ddlTabuada" runat="server" OnSelectedIndexChanged="ddlTabuada_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:Button ID="btnExecuta" runat="server" OnClick="btnExecuta_Click" Text="Executa" />
            </p>
            <p>
                <asp:ListBox ID="lbTabuada" runat="server" Height="184px" Width="141px"></asp:ListBox>
            </p>
        </div>
    </form>
</body>
</html>
