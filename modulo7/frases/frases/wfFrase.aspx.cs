using frases.dal;
using frases.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace frases
{
    public partial class wfFrase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AtualizaGrid();
            if (!IsPostBack)
            {
                AtualizaCategoria();
                AtualizaAutor();

            }

        }

        public void Limpar()
        {
            txtFrase.Text = "";
            txtId.Text = "";
            btnSalvar.Text = "Inserir";
        }

        public void AtualizaGrid()
        {
            DALFrase cat = new DALFrase();
            gvDadosFrase.DataSource = cat.Localizar();
            gvDadosFrase.DataBind();
        }

        public void AtualizaAutor()
        {
            DALAutor cat = new DALAutor();
            ddlAutor.DataSource = cat.Localizar();
            ddlAutor.DataTextField = "nome";
            ddlAutor.DataValueField = "id";
            ddlAutor.DataBind();
        }

        public void AtualizaCategoria()
        {
            DALCategoria cat = new DALCategoria();
            ddlCategoria.DataSource = cat.Localizar();
            ddlCategoria.DataTextField = "categoria";
            ddlCategoria.DataValueField = "id";
            ddlCategoria.DataBind();
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            DALFrase dal = new DALFrase();
            Frase cat = new Frase();
            string msg = "";
            cat.Text = txtFrase.Text;
            cat.Autor = Convert.ToInt32(ddlAutor.SelectedValue);
            cat.Categoria = Convert.ToInt32(ddlCategoria.SelectedValue);

            try
            {
                if (btnSalvar.Text == "Inserir")
                {
                    dal.Inserir(cat);
                    msg = "<script>alert('o codigo gerado foi: " + cat.Id.ToString() + "')</script>";
                }
                else
                {
                    //alterar
                    cat.Id = int.Parse(txtId.Text);
                    dal.Alterar(cat);
                    msg = "<script>alert('Registro atualizado com sucesso!.')</script>";
                }
                Response.Write(msg);
                Limpar();
                AtualizaGrid();
            }
            catch (Exception error)
            {
                msg = "<script>alert('Houve um erro: " + error.Message + "')</script>";
            }
        }
    }
}