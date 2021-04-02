<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aula11.aspx.cs" Inherits="aula11.aula11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <asp:ImageButton ID="imgbUm" runat="server" ImageUrl="~/img/508246.jpg" OnClick="imgbUm_Click" Width="700px" />
                    <asp:ImageButton ID="imgbDois" runat="server" Height="440px" ImageUrl="~/img/606224.png" OnClick="imgbDois_Click" Width="700px" />
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:Label ID="Label1" runat="server" BorderStyle="None" Font-Bold="True" ForeColor="Black" Text="Titulo um"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Lorem 1 ipsum dolor sit amet, consectetur adipiscing elit. Phasellus lobortis enim vel augue tincidunt, luctus ultricies dui elementum. Morbi scelerisque, elit ornare volutpat placerat, nisl libero vehicula nulla, sed luctus lorem erat dictum dui. Integer interdum sed purus vel volutpat. Sed vel suscipit nunc. Cras a tincidunt lectus, non ultricies eros. Quisque quis ultricies metus. In hac habitasse platea dictumst. Sed pretium sem a arcu imperdiet viverra. Fusce fringilla justo a ex iaculis, eu euismod felis convallis. Vivamus commodo est et libero porttitor dictum. In vel tortor convallis, commodo odio nec, vestibulum ligula. Suspendisse euismod cursus diam id ultricies. In eu justo dignissim, consequat sem nec, posuere metus. Phasellus non tempus purus."></asp:Label>
                    <br />
                    <asp:HyperLink ID="hlLink1" runat="server" NavigateUrl="https://animesonehd.xyz/5334/">Ep 1 Shingeki</asp:HyperLink>
                    <br />
                    <asp:LinkButton ID="lb2" runat="server" OnClick="lb2_Click">Voltar</asp:LinkButton>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Text="Titulo Dois"></asp:Label>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Lorem 2 ipsum dolor sit amet, consectetur adipiscing elit. Donec porta nulla eget ornare interdum. Morbi sit amet mollis sem. Donec eget fermentum magna. Maecenas viverra scelerisque lectus, eu lobortis tellus mattis at. Ut iaculis facilisis purus at ornare. Suspendisse potenti. Nullam nec est diam."></asp:Label>
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.techtudo.com.br/tudo-sobre/ddtank.html">Ep 2 Shingeki</asp:HyperLink>
                    <br />
                    <asp:LinkButton ID="lb1" runat="server" OnClick="lb1_Click">Voltar</asp:LinkButton>
                </asp:View>
                <br />
                <br />
            </asp:MultiView>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
