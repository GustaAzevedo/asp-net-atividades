using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using modulo4.Entities;

namespace modulo4
{
    public partial class wfFilmes : System.Web.UI.Page
    {
        public List<Filme> Filmes { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInserir_Click(object sender, EventArgs e)
        {
            ddlFilmes.Items.Add(new ListItem(tbFilme.Text, tbNota.Text));
            tbFilme.Text = "";
            tbNota.Text = "";
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Filmes = new List<Filme>();
            foreach(ListItem i in ddlFilmes.Items)
            {
                int nota = int.Parse(i.Value);
                string filme = i.Text;
                Filmes.Add(new Filme(filme, nota));
                
            }
        }
    }
}