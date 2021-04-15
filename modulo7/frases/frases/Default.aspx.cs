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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["email"] == null)
            {
                Response.Redirect("~/wfLogin.aspx");
            }
            else
            {
                DALUsuario dal = new DALUsuario();
                Usuario usu = dal.GetRegistro(Session["email"].ToString());

                lNome.Text = usu.Nome;
                lEmail.Text = usu.Email;
            }
        }
    }
}