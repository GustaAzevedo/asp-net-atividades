<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aula02.aspx.cs" Inherits="aula02.aula02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            height: 23px;
            width: 131px;
        }
        .auto-style3 {
            width: 131px;
        }
        .auto-style4 {
            height: 23px;
            width: 194px;
        }
        .auto-style5 {
            width: 194px;
        }
        .auto-style6 {
            width: 131px;
            height: 26px;
        }
        .auto-style7 {
            width: 194px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            margin-right: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
   
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">Site</td>
                    <td class="auto-style4">Endereco</td>
                    <td class="auto-style1">Opções</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtBox1" runat="server" Width="156px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtBox2" runat="server" Width="198px" Height="22px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="bExecuta" runat="server" OnClick="bExecuta_Click" Text="Executa" />
                        <asp:Button ID="btnSeleciona" runat="server" OnClick="btnSeleciona_Click" Text="Selecionar" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:DropDownList ID="ddlDrop" runat="server" Height="21px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="165px">
                            <asp:ListItem Value="0">Elemento0</asp:ListItem>
                            <asp:ListItem Value="1">Elemento1</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style7">
                        <asp:ListBox ID="lbEndereco" runat="server" CssClass="auto-style9" Width="202px">
                            <asp:ListItem Value="0">Endereco0</asp:ListItem>
                            <asp:ListItem Value="1">Endereco1</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
            </table>
   
        </div>
    </form>
</body>
</html>
