<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wParImpar.aspx.cs" Inherits="aula16.ParImpar" %>

<%@ Register src="wucMenu.ascx" tagname="wucMenu" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:BulletedList ID="blList" runat="server" BackColor="White" BulletStyle="Square" Width="540px" DisplayMode="LinkButton" OnClick="blList_Click" Visible="False">
                <asp:ListItem Value="0">Par ou Impar</asp:ListItem>
                <asp:ListItem Value="1">Calcula o Fatorial</asp:ListItem>
            </asp:BulletedList>
            &nbsp;
            <asp:RadioButtonList ID="rblList" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>Par ou Impar</asp:ListItem>
                <asp:ListItem>Calcular Fatorial</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />

            <asp:Panel ID="pnParOuImpar" runat="server" Visible="False">
                <asp:Label ID="Label1" runat="server" Text="Verifica se é par ou impar"></asp:Label>
                <br />
                <asp:TextBox ID="txtValorpn1" runat="server" Width="181px"></asp:TextBox>
                &nbsp;
                <asp:Button ID="Button1" runat="server" Text="Verifica" BorderColor="#FFCC00" BorderStyle="Solid" OnClick="Button1_Click" />
                <br />
                <asp:Label ID="lResp1" runat="server" Text="Digite um número"></asp:Label>
            </asp:Panel>
            <br />
            <br />
            <asp:Panel ID="pnFatorial" runat="server" Visible="False">
                <asp:Label ID="Label3" runat="server" Text="Calcular o fatorial "></asp:Label>
                <br />
                <asp:TextBox ID="txtValorpn2" runat="server" Width="172px"></asp:TextBox>
                &nbsp;
                <asp:Button ID="Button2" runat="server" Text="Calcular" BorderColor="#6600CC" BorderStyle="Solid" OnClick="Button2_Click" style="height: 26px" />
                <br />
                <asp:Label ID="lResp2" runat="server" Text="Digite um número para saber o fatorial"></asp:Label>
            </asp:Panel>

        </div>
    </form>
</body>
</html>
