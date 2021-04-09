using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aula16
{
    public partial class wfContato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {   //  string de conexão
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSireRoot");
            System.Configuration.ConnectionStringSettings connStrings;
            connStrings = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];
            
            //  Objeto de conexão 
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connStrings.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Insert into contato (nome,email) values (@nome,@email)";
            cmd.Parameters.AddWithValue("nome", txtNome.Text);
            cmd.Parameters.AddWithValue("email", txtEmail.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            DataList1.DataBind();
        }
    }
}