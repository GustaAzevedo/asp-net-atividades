using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using modulo4.Entities;

namespace modulo4
{
    public partial class wfListaFilmes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (PreviousPage.Filmes != null)
                {
                    List<Filme> Filmes = PreviousPage.Filmes;
                    foreach (var i in Filmes)
                    {
                        Response.Write("<h3>" + i.Nome + " - Nota: " + i.nota + "</h3>");
                    }
                }
            }
            catch
            {
                Response.Redirect("wfFilmes.aspx");
            }
                       
        }
    }
}