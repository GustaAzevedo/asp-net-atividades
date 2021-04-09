using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aula16
{
    public partial class ParImpar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void blList_Click(object sender, BulletedListEventArgs e)
        {
            pnParOuImpar.Visible = false;
            pnFatorial.Visible = false;
            switch (e.Index)
            {
                case 0:
                    pnParOuImpar.Visible = true;
                    break;
                case 1:
                    pnFatorial.Visible = true;
                    break;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int x = int.Parse(txtValorpn1.Text);
            if (x % 2 == 0)
            {
                lResp1.Text = "O número " + x + " é par";
            }
            else
            {
                lResp1.Text = "O número " + x + " é impar";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            //try
            //{
            int x = int.Parse(txtValorpn2.Text);

            if (x <= 0)
            {
                lResp2.Text = "Informe um número positivo maior que zero";
            }
            else
            {
                int y = x;
                for (int i = x - 1; i > 0; i--)
                {
                    y = y * i;
                }
                lResp2.Text = "O fatorial é: " + y;
            }

            //}
            //catch
            //{
            //    lResp2.Text =  "Só é permitido números positivos";
            //}

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnParOuImpar.Visible = false;
            pnFatorial.Visible = false;

            var a = rblList.SelectedIndex;
            if (a == 0)
            {
                pnParOuImpar.Visible = true;
            }
            else if (a == 1)
            {
                pnFatorial.Visible = true;
            }
        }
    }
}