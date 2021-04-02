using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aula07
{
    public partial class aula07 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            caAtual.SelectedDate = DateTime.Now;
        }

        protected void btnCalcula_Click(object sender, EventArgs e)
        {
            int diaNasc = 0 , mesNasc = 0, anoNasc = 0, totalNasc;
            int diaAt = 0, mesAt = 0, anoAt = 0, totalAt;

            diaNasc = caNasc.SelectedDate.Day;
            mesNasc = caNasc.SelectedDate.Month * 30;
            anoNasc = caNasc.SelectedDate.Year * 365;

            diaAt = caAtual.SelectedDate.Day;
            mesAt = caAtual.SelectedDate.Month * 30;
            anoAt = caAtual.SelectedDate.Year * 365;

            totalNasc = diaNasc + mesNasc + anoNasc;
            totalAt = diaAt + mesAt + anoAt;

            lbDias.Text = "Dias de vida: " + (totalAt - totalNasc).ToString();

        }
    }
}