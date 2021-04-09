<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="AgendaTelefonica.Contato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Inserir Novo Contato"></asp:Label>
    </p>

    <asp:Label ID="Label2" runat="server" Text="Nome"></asp:Label>

    <br />
    <asp:TextBox ID="tbNome" runat="server" Width="233px"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="rfvNome" runat="server" ControlToValidate="tbNome" ErrorMessage="Insira um nome" ForeColor="#4A3C8C"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
    <br />
    <asp:TextBox ID="tbEmail" runat="server" Width="234px" TextMode="Email"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" ErrorMessage="Insira um Email válido" ForeColor="#4A3C8C" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />
    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="tbEmail" ErrorMessage="Insira um Email" ForeColor="#4A3C8C"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Telefone"></asp:Label>
    <br />
    <asp:TextBox ID="tbTel" runat="server" Width="238px" TextMode="Phone"></asp:TextBox>
    <asp:RegularExpressionValidator ID="rfvValidaTel" runat="server" ControlToValidate="tbTel" ErrorMessage="Insira um número válido" ForeColor="#4A3C8C" ValidationExpression="\d{5}\-\d{4}"></asp:RegularExpressionValidator>
    <br />
    <asp:RequiredFieldValidator ID="rfvTel" runat="server" ControlToValidate="tbTel" ErrorMessage="Insira um telefone" ForeColor="#4A3C8C"></asp:RequiredFieldValidator>
    <br />
    <asp:Button ID="btnInserir" runat="server" OnClick="Button1_Click" Text="Inserir" BackColor="#6600CC" BorderColor="#666699" ForeColor="#CCCCCC" />
    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSourceContato" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Telefone" HeaderText="Telefone" SortExpression="Telefone" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceContato" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [contato] WHERE [Id] = @Id" InsertCommand="INSERT INTO [contato] ([Nome], [Email], [Telefone]) VALUES (@Nome, @Email, @Telefone)" SelectCommand="SELECT * FROM [contato]" UpdateCommand="UPDATE [contato] SET [Nome] = @Nome, [Email] = @Email, [Telefone] = @Telefone WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Telefone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Telefone" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p>
    </p>
</asp:Content>
