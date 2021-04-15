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
    public partial class wfCategoria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AtualizaGrid();
        }

        public void AtualizaGrid()
        {
            DALCategoria cat = new DALCategoria();
            gvDadosCat.DataSource = cat.Localizar();
            gvDadosCat.DataBind();
        }

        public void Limpar()
        {
            txtCateg.Text = "";
            txtId.ID = "";
            btnSalvar.Text = "Inserir";
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Limpar();
        }

        protected void btnInserir_Click(object sender, EventArgs e)
        {

            DALCategoria dal = new DALCategoria();
            Categoria cat = new Categoria();
            string msg = "";
            cat.Nome = txtCateg.Text;

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
            }
            catch (Exception error)
            {
                msg = "<script>alert('Houve um erro: " + error.Message + "')</script>";
            }
        }

        protected void gvDadosCat_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = Convert.ToInt32(e.RowIndex);
            int c = Convert.ToInt32(gvDadosCat.Rows[i].Cells[0].Text);
            DALCategoria cat = new DALCategoria();
            cat.Excluir(c);
            AtualizaGrid();
        }

        protected void gvDadosCat_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int i = gvDadosCat.SelectedIndex;
                int cod = Convert.ToInt32(gvDadosCat.Rows[i].Cells[0].Text);
                DALCategoria cat = new DALCategoria();
                Categoria c = cat.GetRegistro(cod);
                if (c.Id != 0)
                {
                    txtCateg.Text = c.Nome;
                    txtId.Text = c.Id.ToString();
                    btnSalvar.Text = "Alterar";

                }
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }
    }
}