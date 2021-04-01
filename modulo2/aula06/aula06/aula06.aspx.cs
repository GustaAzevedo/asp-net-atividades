using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aula06
{
    public partial class aula06 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                for (int i = 0; i <= 10; i++)
                {
                    ddlTabuada.Items.Add(i.ToString());
                }
            }


        }

        protected void btnExecuta_Click(object sender, EventArgs e)
        {
            
            ListItem li = ddlTabuada.SelectedItem;
            int n = int.Parse(li.Value);
            int t = 0;
            //for (int i = 0; i <= 10; i++)
            //{
            //    t = i * n;
            //    tbDados.Rows[i].Cells[0].Text = n.ToString();
            //    tbDados.Rows[i].Cells[2].Text = i.ToString();

            //    tbDados.Rows[i].Cells[4].Text = t.ToString();

            //}
            

            Table tabela = new Table();
            for(int i = 0; i <= 10; i++)
            {
                TableRow linha = new TableRow();
                //  1 celula
                TableCell coluna1 = new TableCell();
                coluna1.Text = i.ToString() + " x " + " = ";
                linha.Cells.Add(coluna1);
                
                TableCell coluna2 = new TableCell();
                t = i * n;
                coluna2.Text = t.ToString();
                linha.Cells.Add(coluna2);
                tabela.Rows.Add(linha);
            }
            PlaceHolder.Controls.Add(tabela);

        }

        protected void ddlTabuada_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}