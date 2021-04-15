<%@ Page Title="" Language="C#" MasterPageFile="~/masterPg.Master" AutoEventWireup="true" CodeBehind="wfUsuario.aspx.cs" Inherits="frases.wfUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="ID" Font-Bold="True"></asp:Label>
        <br />
        <asp:TextBox ID="txtId" runat="server" Enabled="False"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Nome do Autor" Font-Bold="True"></asp:Label>
        <br />
        <asp:TextBox ID="txtAutor" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAutor" ErrorMessage="Nome é obrigatório"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Email" Font-Bold="True"></asp:Label>
        <br />
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Digite um Email válido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email é obrigatório"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Senha"></asp:Label>
        <br />
        <asp:TextBox ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSenha" ErrorMessage="Senha é obrigatória"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnSalvar" runat="server" CssClass="btn btn-primary" OnClick="btnSalvar_Click" Text="Inserir" />
&nbsp;
        <asp:Button CssClass="btn btn-outline-warning" ID="btnCancelar" runat="server" CausesValidation="False"  Text="Cancelar" OnClick="btnCancelar_Click" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="25px" Text="Tabela de Usuários"></asp:Label>
        <br />
        <asp:GridView CssClass="table table-dark w-100" ID="gvDadosUsuario" runat="server" AutoGenerateColumns="False" Width="304px" OnRowDeleting="gvDadosUsuario_RowDeleting" OnSelectedIndexChanged="gvDadosUsuario_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" />
                <asp:BoundField DataField="nome" HeaderText="Nome Autor" />
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:CommandField ShowSelectButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <br />
    </asp:Panel>
</asp:Content>
