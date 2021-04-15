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
    public partial class wfAutor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AtualizaGrid();
        }

        public void AtualizaGrid()
        {
            DALAutor cat = new DALAutor();
            gvDadosAutor.DataSource = cat.Localizar();
            gvDadosAutor.DataBind();
        }

        public void Limpar()
        {
            txtAutor.Text = "";
            txtId.Text = "";
            btnSalvar.Text = "Inserir";
        }

        protected void gvDadosAutor_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int i = gvDadosAutor.SelectedIndex;
                int cod = Convert.ToInt32(gvDadosAutor.Rows[i].Cells[0].Text);
                DALAutor cat = new DALAutor();
                Autor c = cat.GetRegistro(cod);
                if (c.Id != 0)
                {
                    txtAutor.Text = c.Nome;
                    txtId.Text = c.Id.ToString();
                    btnSalvar.Text = "Alterar";

                }
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        protected void gvDadosAutor_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                string msg = "";
                int i = Convert.ToInt32(e.RowIndex);
                int c = Convert.ToInt32(gvDadosAutor.Rows[i].Cells[0].Text);
                string path = Server.MapPath(@"img\author\");
                DALAutor cat = new DALAutor();
                Autor uou = cat.GetRegistro(c);
                if (uou.Foto != "")
                {
                    File.Delete(path + uou.Foto);
                }
                cat.Excluir(c);
                msg = "<script>alert('o codigo excluído foi: " + c.ToString() + "')</script>";
                Response.Write(msg);
            }
            catch(Exception error)
            {
                throw new Exception(error.Message);
            }
            
            AtualizaGrid();
            Limpar();
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            DALAutor dal = new DALAutor();
            Autor cat = new Autor();
            string msg = "";
            cat.Nome = txtAutor.Text;
            string path = Server.MapPath(@"img\author\");

            try
            {
                if (fuFoto.PostedFile.FileName != "")
                {
                    cat.Foto = DateTime.Now.Millisecond.ToString() + fuFoto.FileName;
                    string img = path + cat.Foto;
                    fuFoto.PostedFile.SaveAs(img);
                }

                if (btnSalvar.Text == "Inserir")
                {
                    dal.Inserir(cat);
                    msg = "<script>alert('o codigo gerado foi: " + cat.Id.ToString() + "')</script>";
                }
                else
                {
                    //alterar
                    cat.Id = int.Parse(txtId.Text);

                    //verify if(exists foto and delete it)
                    Autor uou = dal.GetRegistro(cat.Id);
                    if (uou.Foto != "")
                    {
                        File.Delete(path + uou.Foto);
                    }

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
            Limpar();
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Limpar();
        }
    }
}