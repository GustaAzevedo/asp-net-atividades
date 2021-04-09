<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucMenu.ascx.cs" Inherits="aula16.wucMenu" %>
<asp:Menu ID="Menu1" runat="server" DataSourceID="Web" StaticDisplayLevels="2" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
    <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <DynamicMenuStyle BackColor="#F7F6F3" />
    <DynamicSelectedStyle BackColor="#5D7B9D" />
    <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <StaticSelectedStyle BackColor="#5D7B9D" />
</asp:Menu>
<asp:SiteMapDataSource ID="Web" runat="server" />



