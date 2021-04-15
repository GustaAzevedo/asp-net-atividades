using frases.dal;
using frases.model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace frases
{
    public partial class wfUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AtualizaGrid();
        }

        public void AtualizaGrid()
        {
            DALUsuario cat = new DALUsuario();
            gvDadosUsuario.DataSource = cat.Localizar();
            gvDadosUsuario.DataBind();
        }

        public void Limpar()
        {
            txtAutor.Text = "";
            txtId.Text = "";
            txtEmail.Text = "";
            txtSenha.Text = "";
            btnSalvar.Text = "Inserir";
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            DALUsuario dal = new DALUsuario();
            Usuario cat = new Usuario();
            
            string msg = "";
            cat.Nome = txtAutor.Text;
            cat.Email = txtEmail.Text;
            cat.Senha = txtSenha.Text;
            Usuario valida = dal.GetRegistro(cat.Email);

            try
            {
                if (btnSalvar.Text == "Inserir")
                {
                    //  Validação email
                    if(valida.Id == 0)
                    {
                        dal.Inserir(cat);
                        msg = "<script>alert('o codigo gerado foi: " + cat.Id.ToString() + "')</script>";
                    }
                    else
                    {
                        msg = "<script>alert('Esse email já foi cadastrado!.')</script>";
                    }
                    
                }
                else
                {
                    //alterar
                    cat.Id = int.Parse(txtId.Text);

                    if((valida.Id != 0 && valida.Id == cat.Id) || valida.Id == 0 )
                    {
                        dal.Alterar(cat);
                        msg = "<script>alert('Registro atualizado com sucesso!.')</script>";
                    }
                    else
                    {
                        msg = "<script>alert('Já há um email cadastrado com esse nome.')</script>";
                    }
                    //  Validação Email 
                    
                }
                Response.Write(msg);
                Limpar();
            }
            catch (Exception error)
            {
                msg = "<script>alert('Houve um erro: " + error.Message + "')</script>";
            }
            AtualizaGrid();
            Limpar();
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Limpar();
        }

        protected void gvDadosUsuario_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int i = gvDadosUsuario.SelectedIndex;
                int cod = Convert.ToInt32(gvDadosUsuario.Rows[i].Cells[0].Text);
                DALUsuario cat = new DALUsuario();
                Usuario c = cat.GetRegistro(cod);
                if (c.Id != 0)
                {
                    txtAutor.Text = c.Nome;
                    txtEmail.Text = c.Email;
                    txtId.Text = c.Id.ToString();
                    btnSalvar.Text = "Alterar";

                }
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        protected void gvDadosUsuario_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                string msg = "";
                int i = Convert.ToInt32(e.RowIndex);
                int c = Convert.ToInt32(gvDadosUsuario.Rows[i].Cells[0].Text);
               
                DALUsuario cat = new DALUsuario();
                Usuario uou = cat.GetRegistro(c);
               
                cat.Excluir(c);
                msg = "<script>alert('o codigo excluído foi: " + c.ToString() + "')</script>";
                Response.Write(msg);
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }

            AtualizaGrid();
            Limpar();
        }
    }
}