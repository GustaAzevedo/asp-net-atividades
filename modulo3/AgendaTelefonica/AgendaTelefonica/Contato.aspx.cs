using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgendaTelefonica
{
    public partial class Contato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
    
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings connStrings;
            connStrings = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];

            //  Objeto de conexão 
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connStrings.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Insert into contato (nome,email,telefone) values (@nome,@email,@telefone)";
            cmd.Parameters.AddWithValue("nome", tbNome.Text);
            cmd.Parameters.AddWithValue("email", tbEmail.Text);
            cmd.Parameters.AddWithValue("telefone", tbTel.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
        }
    }
}