using System;
using System.Globalization;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace modulo4
{
    public partial class wfResposta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request["tbSalario"] == null || (Request["tbPercentual"] == null && Request["rblPorcentagem"] == null))
                {
                    Response.Redirect("wfSalarioMinimo.aspx");
                }

                
                double salario = double.Parse(Request["tbSalario"], CultureInfo.InvariantCulture);
                double total = 0;
                if (Request["tbPercentual"] == null)
                {
                    double po = double.Parse(Request["rblPorcentagem"]);
                    total = salario - (salario * (po / 100));
                    lPercental.Text = "Percentul a ser descontado: " + po.ToString();
                }
                else
                {
                    double percentual = double.Parse(Request["tbPercentual"], CultureInfo.InvariantCulture);
                    total = salario - (salario * (percentual / 100));
                    lPercental.Text = "Percentul a ser descontado: " + percentual.ToString();
                }
                               
                lSalarioTotal.Text = "Salário sem desconto: " + salario.ToString();               
                lLiquido.Text = "Salário com desconto: " + total.ToString("F2");
            }
            catch
            {
                Response.Redirect("wfSalarioMinimo.aspx");
            }
            

            
        }
    }
}