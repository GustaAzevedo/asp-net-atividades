<%@ Page Title="" Language="C#" MasterPageFile="~/masterPg.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="frases.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel CssClass="justify-content-center m-auto text-center" ID="pnLogin" runat="server">

        <br />
            
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="20px" Text="Nome: "></asp:Label>
        <asp:Label ID="lNome" runat="server" Text="nome"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="20px" Text="Email: "></asp:Label>
        <asp:Label ID="lEmail" runat="server" Text="Email"></asp:Label>
        <br />
            
        <br />

    </asp:Panel>
</asp:Content>
