<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aula10.aspx.cs" Inherits="aula10.aula10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:Image ID="Image1" runat="server" AlternateText="Levi1" BackColor="#660066" Height="456px" ImageUrl="~/img/508246.jpg" Width="743px" />
                <asp:Image ID="Image2" runat="server" AlternateText="Levi-2" BackColor="#CC00FF" Height="455px" ImageUrl="~/img/607708.png" Width="766px" />
            </asp:View>
            <asp:View ID="View2" runat="server">
            </asp:View>
            <asp:View ID="View3" runat="server">
            </asp:View>
            <br />
            <br />
        </asp:MultiView>
        <div>
        </div>
    </form>
</body>
</html>
