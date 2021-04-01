<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aula04.aspx.cs" Inherits="aula04.aula04" %>
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
        .auto-style10 {
            margin-top: 0px;
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
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtBox1" runat="server" Width="193px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtBox2" runat="server" Width="198px" Height="22px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:ListBox ID="lbEndereco" runat="server" CssClass="auto-style9" Width="202px" SelectionMode="Multiple">
                        </asp:ListBox>
                    </td>
                    <td class="auto-style7">
                        Opções<br />
                        <asp:Button ID="bExecuta" runat="server" OnClick="bExecuta_Click" Text="Executa" CssClass="auto-style10" Height="25px" Width="68px" />
                        &nbsp;<asp:Button ID="btnSeleciona" runat="server" OnClick="btnSeleciona_Click" Text="Selecionar" />
                    </td>
                    <td class="auto-style8"></td>
                </tr>
            </table>
   
        </div>
                        <asp:DropDownList ID="ddlDrop" runat="server" Height="23px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="204px">
                        </asp:DropDownList>
    </form>
</body>
</html>