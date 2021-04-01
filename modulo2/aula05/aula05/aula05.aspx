<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aula05.aspx.cs" Inherits="aula05.aula05" %>

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
        </div>
         <asp:Table ID="tbDados" runat="server" BackColor="#9900CC" BorderColor="#FFCC00" BorderStyle="Solid" ForeColor="White">
             <asp:TableRow runat="server">
                 <asp:TableCell runat="server"></asp:TableCell>
                 <asp:TableCell runat="server">X</asp:TableCell>
                 <asp:TableCell runat="server">0</asp:TableCell>
                 <asp:TableCell runat="server">=</asp:TableCell>
                 <asp:TableCell runat="server"></asp:TableCell>
             </asp:TableRow>
             <asp:TableRow runat="server">
                 <asp:TableCell runat="server"></asp:TableCell>
                 <asp:TableCell runat="server">X</asp:TableCell>
                 <asp:TableCell runat="server">1</asp:TableCell>
                 <asp:TableCell runat="server">=</asp:TableCell>
                 <asp:TableCell runat="server"></asp:TableCell>
             </asp:TableRow>
             <asp:TableRow runat="server">
                 <asp:TableCell runat="server"></asp:TableCell>
                 <asp:TableCell runat="server">X</asp:TableCell>
                 <asp:TableCell runat="server">2</asp:TableCell>
                 <asp:TableCell runat="server">=</asp:TableCell>
                 <asp:TableCell runat="server"></asp:TableCell>
             </asp:TableRow>
             <asp:TableRow runat="server">
                 <asp:TableCell runat="server"></asp:TableCell>
                 <asp:TableCell runat="server">X</asp:TableCell>
                 <asp:TableCell runat="server">3</asp:TableCell>
                 <asp:TableCell runat="server">=</asp:TableCell>
                 <asp:TableCell runat="server"></asp:TableCell>
             </asp:TableRow>
             <asp:TableRow runat="server">
                 <asp:TableCell runat="server"></asp:TableCell>
                 <asp:TableCell runat="server">X</asp:TableCell>
                 <asp:TableCell runat="server">4</asp:TableCell>
                 <asp:TableCell runat="server">=</asp:TableCell>
                 <asp:TableCell runat="server"></asp:TableCell>
             </asp:TableRow>
             <asp:TableRow runat="server">
                 <asp:TableCell runat="server"></asp:TableCell>
                 <asp:TableCell runat="server">X</asp:TableCell>
                 <asp:TableCell runat="server">5</asp:TableCell>
                 <asp:TableCell runat="server">=</asp:TableCell>
                 <asp:TableCell runat="server"></asp:TableCell>
             </asp:TableRow>
             <asp:TableRow runat="server">
                 <asp:TableCell runat="server"></asp:TableCell>
                 <asp:TableCell runat="server">X</asp:TableCell>
                 <asp:TableCell runat="server">6</asp:TableCell>
                 <asp:TableCell runat="server">=</asp:TableCell>
                 <asp:TableCell runat="server"></asp:TableCell>
             </asp:TableRow>
             <asp:TableRow runat="server">
                 <asp:TableCell runat="server"></asp:TableCell>
                 <asp:TableCell runat="server">X</asp:TableCell>
                 <asp:TableCell runat="server">7</asp:TableCell>
                 <asp:TableCell runat="server">=</asp:TableCell>
                 <asp:TableCell runat="server"></asp:TableCell>
             </asp:TableRow>
             <asp:TableRow runat="server">
                 <asp:TableCell runat="server"></asp:TableCell>
                 <asp:TableCell runat="server">X</asp:TableCell>
                 <asp:TableCell runat="server">8</asp:TableCell>
                 <asp:TableCell runat="server">=</asp:TableCell>
                 <asp:TableCell runat="server"></asp:TableCell>
             </asp:TableRow>
             <asp:TableRow runat="server">
                 <asp:TableCell runat="server"></asp:TableCell>
                 <asp:TableCell runat="server">X</asp:TableCell>
                 <asp:TableCell runat="server">9</asp:TableCell>
                 <asp:TableCell runat="server">=</asp:TableCell>
                 <asp:TableCell runat="server"></asp:TableCell>
             </asp:TableRow>
             <asp:TableRow runat="server">
                 <asp:TableCell runat="server"></asp:TableCell>
                 <asp:TableCell runat="server">X</asp:TableCell>
                 <asp:TableCell runat="server">10</asp:TableCell>
                 <asp:TableCell runat="server">=</asp:TableCell>
                 <asp:TableCell runat="server"></asp:TableCell>
             </asp:TableRow>
         </asp:Table>
    </form>
</body>
</html>
