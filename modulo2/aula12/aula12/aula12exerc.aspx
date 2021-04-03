<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aula12exerc.aspx.cs" Inherits="aula12.aula12exerc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript">
        var tam = 12;
        function IncText() {
            tam = tam + 1;
            document.getElementById("p1").style.fontSize = tam + "px";
            document.getElementById("p2").style.fontSize = tam + "px";
        }

        function DecText() {
            tam = tam - 1;
            document.getElementById("p1").style.fontSize = tam + "px";
            document.getElementById("p2").style.fontSize = tam + "px";
        }
    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#009933" BorderColor="#FF99CC" OnClick="IncText()" BorderStyle="Solid">Aumenta</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" BackColor="#CCFFFF" BorderColor="#CC0066" OnClick="DecText()" BorderStyle="Solid" ForeColor="#660066">Diminui</asp:HyperLink>
            <br />
            <br />
            <br />           
        </div>
    </form>

    <p id="p1">HAIKYU‼ TO THE TOP. HAIKYU‼ LAND VS. AIR. HAIKYU!! Filmes.</p>
    <p id="p2">Shingeki no Kyojin (進撃の巨人, ''Shingeki no Kyojin'' lit. "Titã de Ataque", "Ataque dos Gigantes" ou ainda "Investida dos Gigantes"</p>
</body>
</html>
