<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfContato.aspx.cs" Inherits="aula16.wfContato" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #E7E7FF;
        }
        .auto-style2 {
            margin-right: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
            <br />
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
            <br />
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Lista de usuários cadastrados"></asp:Label>
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyField="Id" DataSourceID="SqlDataSource" GridLines="Horizontal" Height="236px" Width="728px" CssClass="auto-style2">
                <AlternatingItemStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <ItemTemplate>
                    <span class="auto-style1">Código ID</span>:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    &nbsp;- Nome:<asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                    &nbsp;- Email:<asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
<br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Contato]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
