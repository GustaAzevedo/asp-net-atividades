<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wUpload.aspx.cs" Inherits="aula16.wUpload" %>

<%@ Register src="wucMenu.ascx" tagname="wucMenu" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="UPLOAD de Arquivos"></asp:Label>
            <br />
            <asp:FileUpload ID="fuUpload" runat="server" AllowMultiple="True" Width="273px" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Nome do Arquivo: "></asp:Label>
&nbsp;<asp:TextBox ID="txtNm" runat="server" CssClass="auto-style1" Width="145px"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Tamanho do Arquuivo: "></asp:Label>
&nbsp;<asp:TextBox ID="txtSize" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnEnviar" runat="server" BackColor="#003300" BorderStyle="Double" ForeColor="White" OnClick="Button1_Click" Text="Enviar Arquivo" Width="127px" />
&nbsp;
            <asp:Button ID="btnArquivos" runat="server" BackColor="#660066" BorderColor="#FFCC00" BorderStyle="Solid" ForeColor="White" OnClick="btnArquivos_Click" Text="Enviar Arquivos" Width="141px" />
            <br />
            <br />
            <asp:Label ID="lblResult" runat="server" Text="Arquivo"></asp:Label>
        </div>
    </form>
</body>
</html>
