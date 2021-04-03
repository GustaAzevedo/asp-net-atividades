<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aula12.aspx.cs" Inherits="aula12.aula12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript">
        function MauseSobre() {
            alert('Levi é um D.E.U.S');
        }


        function MauseFora() {
            alert('vishii');
        }
    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/le.gif" OnMouseOver="MauseSobre()" />
            <br />
            <asp:Button ID="btnButton" runat="server" BackColor="#6600CC" BorderColor="#FF9900" BorderStyle="Solid" Font-Bold="True" ForeColor="#FF9900" Text="Clique" />
        </div>
    </form>
</body>
</html>
