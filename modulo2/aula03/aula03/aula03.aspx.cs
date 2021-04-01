using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aula03
{
    public partial class aula03 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                for (int i = 1; i <= 10; i++)
                {
                    ddlTabuada.Items.Add(i.ToString());
                }
            }
           

        }

        protected void btnExecuta_Click(object sender, EventArgs e)
        {
            lbTabuada.Items.Clear();
            ListItem li = ddlTabuada.SelectedItem;
            int n = int.Parse(li.Value);
            for (int i = 1; i <= 10; i++)
            {
                lbTabuada.Items.Add(i.ToString() + " x " + n.ToString() + " = " + i * n);
            }
        }

        protected void ddlTabuada_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}