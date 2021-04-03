<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aula14.aspx.cs" Inherits="aula14.aula14" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1" BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="504px" Width="573px" OnFinishButtonClick="Wizard1_FinishButtonClick1" >
                <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
                <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
                <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
                <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
                <WizardSteps>
                    <asp:WizardStep ID="wzDadosPessoais" runat="server" Title="Dados Pessoais">
                        <asp:Label ID="txtDados" runat="server" Font-Bold="True" ForeColor="Black" Text="Dados Pessoais"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Nome"></asp:Label>
                        <br />
                        <asp:TextBox ID="tbNome" runat="server" Width="225px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="CPF"></asp:Label>
                        <br />
                        <asp:TextBox ID="tbCPF" runat="server" Width="175px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="RG"></asp:Label>
                        <br />
                        <asp:TextBox ID="tbRG" runat="server"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep ID="wzEndereco" runat="server" Title="Endereço">
                        <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="CEP"></asp:Label>
                        <br />
                        <asp:TextBox ID="tbCEP" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Estado"></asp:Label>
                        <br />
                        <asp:TextBox ID="tbEstado" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="Cidade"></asp:Label>
                        <br />
                        <asp:TextBox ID="tbCidade" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label7" runat="server" ForeColor="Black" Text="Rua"></asp:Label>
                        <br />
                        <asp:TextBox ID="tbRua" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label8" runat="server" ForeColor="Black" Text="Bairro"></asp:Label>
                        <br />
                        <asp:TextBox ID="tbBairro" runat="server"></asp:TextBox>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </div>
        <asp:Label ID="lbRetorno" runat="server" Text="Retorno"></asp:Label>
    </form>
</body>
</html>
