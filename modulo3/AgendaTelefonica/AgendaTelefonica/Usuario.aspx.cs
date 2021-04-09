using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgendaTelefonica
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSourceUsuario_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            if(e.Exception != null)
            {
                Response.Write("<script> alert('Há campos vazio, por favor, preencha corretamente') </script>");
                e.ExceptionHandled = true;
            }
        }

        protected void SqlDataSourceUsuario_Updated(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                Response.Write("<script> alert('Há campos vazio, por favor, preencha corretamente') </script>");
                e.ExceptionHandled = true;
            }
        }
    }
}