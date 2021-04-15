<%@ Page Title="" Language="C#" MasterPageFile="~/masterPg.Master" AutoEventWireup="true" CodeBehind="wfAutor.aspx.cs" Inherits="frases.wfAutor" %>

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
        <br />
        <asp:RequiredFieldValidator ID="rfvAutor" runat="server" ControlToValidate="txtAutor" ErrorMessage="é necessário inserir um valor"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Foto do Autor"></asp:Label>
        <br />
        <asp:FileUpload CssClass="form-control" ID="fuFoto" runat="server" />
        <br />
        <asp:Button CssClass="btn btn-primary" ID="btnSalvar" runat="server" Text="Inserir" OnClick="btnSalvar_Click" />
        &nbsp;
        <asp:Button CssClass="btn btn-outline-warning" ID="btnCancelar" runat="server" CausesValidation="False"  Text="Cancelar" OnClick="btnCancelar_Click" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="25px" Text="Tabela de Autores"></asp:Label>
        <br />
        <asp:GridView CssClass="table table-dark w-100" ID="gvDadosAutor" runat="server" AutoGenerateColumns="False" Width="304px" OnRowDeleting="gvDadosAutor_RowDeleting" OnSelectedIndexChanged="gvDadosAutor_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" />
                <asp:BoundField DataField="nome" HeaderText="Nome Autor" />
                <asp:ImageField DataImageUrlField="Foto" DataImageUrlFormatString="~/img/author/{0}">
                    <ControlStyle Height="100px" />
                </asp:ImageField>
                <asp:CommandField ShowSelectButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <br />
    </asp:Panel>
</asp:Content>
