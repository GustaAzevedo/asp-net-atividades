using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aula14
{
    public partial class aula14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Wizard1.ActiveStepIndex = 0;
            }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
           
        }

        protected void Wizard1_FinishButtonClick1(object sender, WizardNavigationEventArgs e)
        {
            var nome = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbNome")).Text;
            var cpf = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbRG")).Text;
            var rg = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbCPF")).Text;
            var cep = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbCEP")).Text;
            var uf = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbEstado")).Text;
            var cidade = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbCidade")).Text;
            //var rua = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbRua")).Text;
            var rua = tbRua.Text;
            var bairro = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbBairro")).Text;

            Wizard1.Visible = false;
            Response.Write("<h1> Dados do formulário Wizard</h1>");
            Response.Write("<h4> Nome: " + nome + "</h4>");
            Response.Write("<h4> CPF: " + cpf + "</h4>");
            Response.Write("<h4> RG: " + rg + "</h4>");
            Response.Write("<h4> CEP: " + cep + "</h4>");
            Response.Write("<h4> UF: " + uf + "</h4>");
            Response.Write("<h4> Cidade: " + cidade + "</h4>");
            Response.Write("<h4> Rua: " + rua + "</h4>");
            Response.Write("<h4> Bairro: " + bairro + "</h4>");
            
        }
    }
}