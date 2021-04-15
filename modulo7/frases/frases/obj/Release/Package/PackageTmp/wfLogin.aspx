<%@ Page Title="" Language="C#" MasterPageFile="~/masterPg.Master" AutoEventWireup="true" CodeBehind="wfLogin.aspx.cs" Inherits="frases.wfLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel CssClass="justify-content-center m-auto text-center" ID="pnLogin" runat="server">

        <br />
        <asp:Label ID="Label3" runat="server" Text="Email" Font-Bold="True"></asp:Label>
        <br />
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Senha"></asp:Label>
        <br />
        <asp:TextBox ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSalvar" runat="server" CssClass="btn btn-primary" Text="Entrar" OnClick="btnSalvar_Click" />

        <asp:Button CssClass="btn btn-outline-warning" ID="btnCancelar" runat="server" CausesValidation="False" Text="Cancelar" />
        <br />
        <br />

    </asp:Panel>
</asp:Content>
