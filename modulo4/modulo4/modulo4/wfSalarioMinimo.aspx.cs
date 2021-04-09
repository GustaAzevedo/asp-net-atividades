using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace modulo4
{
    public partial class wfSalarioMinimo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tbPercentual.Visible = false;

            if (rblPorcentagem.SelectedIndex == 3)
            {
                tbPercentual.Visible = true;
            }

        }
    }
}