using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgendaTelefonica
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogar_Click(object sender, EventArgs e)
        {
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings connStrings;
            connStrings = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];

            //  Objeto de conexão 
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connStrings.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from usuario where email = @email and senha = @senha";
            cmd.Parameters.AddWithValue("email", tbUsuario.Text);
            cmd.Parameters.AddWithValue("senha", tbSenha.Text);
            con.Open();
            SqlDataReader registro = cmd.ExecuteReader();

            if (registro.HasRows)
            {
                HttpCookie login = new HttpCookie("login", tbUsuario.Text); 
                Response.Cookies.Add(login); 
                Response.Redirect("/Index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Email ou senha incorreto')</script>");
                tbUsuario.Text = "";
            }

        }
    }
}