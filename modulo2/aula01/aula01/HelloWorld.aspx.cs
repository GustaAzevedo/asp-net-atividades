using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aula01
{
    public partial class HelloWorld : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btExecutar_Click(object sender, EventArgs e)
        {
           if(txtMsg.Text == "")
            {
                lMsg.Text = "<h1>Hello World - Aula 1</h1>";
            }
            else
            {
                lMsg.Text = "<h1>" + txtMsg.Text + "</h1>";
            }
        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }
    }
}