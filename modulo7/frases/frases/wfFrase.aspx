<%@ Page Title="" Language="C#" MasterPageFile="~/masterPg.Master" AutoEventWireup="true" CodeBehind="wfFrase.aspx.cs" Inherits="frases.wfFrase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="ID" Font-Bold="True"></asp:Label>
        <br />
        <asp:TextBox ID="txtId" runat="server" Enabled="False"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Frase" Font-Bold="True"></asp:Label>
        <br />
        <asp:TextBox CssClass="w-100" ID="txtFrase" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="rfvFrase" runat="server" ControlToValidate="txtFrase" ErrorMessage="Escreva uma frase"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Categoria"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlCategoria" runat="server">
        </asp:DropDownList>
        <br />
        <asp:RequiredFieldValidator ID="rfvCategoria" runat="server" ControlToValidate="ddlCategoria" ErrorMessage="Insira uma categoria"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Autor"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlAutor" runat="server">
        </asp:DropDownList>
        <br />
        <asp:RequiredFieldValidator ID="rfvAutor" runat="server" ControlToValidate="ddlAutor" ErrorMessage="Insira um autor"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="btnSalvar" CssClass="btn btn-primary" runat="server" Text="Inserir" OnClick="btnSalvar_Click" />
        &nbsp;
        <asp:Button ID="btnCancelar" CssClass="btn btn-outline-warning" runat="server" CausesValidation="False" Text="Cancelar" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="25px" Text="Tabela de Frases"></asp:Label>
        <br />
        <asp:GridView CssClass="table table-dark w-100" ID="gvDadosFrase" runat="server" AutoGenerateColumns="False" Width="304px" >
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="ID" />
                <asp:BoundField DataField="frase" HeaderText="Frase" />
                <asp:BoundField DataField="categoria" HeaderText="Categoria" />
                <asp:BoundField DataField="autor" HeaderText="Autor" />
                <asp:CommandField ShowSelectButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <br />
    </asp:Panel>
</asp:Content>
