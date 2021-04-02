using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aula08
{
    public partial class aula08 : System.Web.UI.Page
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
            int x = int.Parse(txtValorpn2.Text);
            double fato = 1;
            int z = 1;
            int y = 2;

            do
            {
                fato = fato * (y * z);
                y = y + 1;
                z = z + 1;
            } while (x > z);
            lResp2.Text = "O fatorial é: " + fato.ToString();
        }
    }
}