using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aula02
{
    public partial class aula02 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void bExecuta_Click(object sender, EventArgs e)
        {

            ListItem text = new ListItem(txtBox1.Text, ddlDrop.Items.Count.ToString());
            ddlDrop.Items.Add(text);
            txtBox1.Text = "";

            ListItem text2 = new ListItem(txtBox2.Text, "End " + lbEndereco.Items.Count.ToString());
            lbEndereco.Items.Add(text2);
            txtBox2.Text = "";
        }

        protected void btnSeleciona_Click(object sender, EventArgs e)
        {
            ListItem txt1 = ddlDrop.SelectedItem;
            txtBox1.Text = txt1.Text;
            ListItem txt2 = lbEndereco.SelectedItem;
            txtBox2.Text = txt2.Text;
        }
    }
}