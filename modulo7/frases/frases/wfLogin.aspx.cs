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
    public partial class wfLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
        }

        public void Limpar()
        {
            txtEmail.Text = "";
            txtSenha.Text = "";
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            DALUsuario cat = new DALUsuario();
            Usuario usu = new Usuario();
            usu.Email = txtEmail.Text;
            usu.Senha = txtSenha.Text;
            Usuario valida = cat.GetRegistro(usu.Email);
            string msg = "";

            if (valida.Id != 0 && usu.Senha == valida.Senha)
            {
                Session["id"] = valida.Id;
                Session["nome"] = valida.Nome;
                Session["email"] = valida.Email;
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                msg = "<script>alert('NÃO Existe esse usuario')</script>";
            }
            Response.Write(msg);
        }
    }
}