<%@ Page Title="" Language="C#" MasterPageFile="~/masterPg.Master" AutoEventWireup="true" CodeBehind="wfCategoria.aspx.cs" Inherits="frases.wfCategoria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="ID" Font-Bold="True"></asp:Label>
        <br />
        <asp:TextBox ID="txtId" runat="server" Enabled="False"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Nome da Categoria" Font-Bold="True"></asp:Label>
        <br />
        <asp:TextBox ID="txtCateg" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="rfvCategoria" runat="server" ControlToValidate="txtCateg" ErrorMessage="é necessário inserir um valor"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="btnSalvar" runat="server" Text="Inserir" OnClick="btnInserir_Click" />
        &nbsp;
        <asp:Button ID="btnCancelar" runat="server" CausesValidation="False" OnClick="btnCancelar_Click" Text="Cancelar" />
        <br />
        <br />
        <asp:GridView CssClass="table table-dark w-100" ID="gvDadosCat" runat="server" AutoGenerateColumns="False" Width="304px" OnRowDeleting="gvDadosCat_RowDeleting" OnSelectedIndexChanged="gvDadosCat_SelectedIndexChanged" >
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="ID" />
                <asp:BoundField DataField="Categoria" HeaderText="Nome Categoria" />
                <asp:CommandField ShowSelectButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <br />
    </asp:Panel>
</asp:Content>
