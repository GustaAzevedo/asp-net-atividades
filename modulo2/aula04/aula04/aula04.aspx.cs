using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aula04
{
    public partial class aula04 : System.Web.UI.Page
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

            ListItem text = new ListItem(txtBox1.Text, txtBox2.Text);
            lbEndereco.Items.Add(text);
            txtBox1.Text = ""; 
            txtBox2.Text = "";
        }

        protected void btnSeleciona_Click(object sender, EventArgs e)
        {
            ddlDrop.Items.Clear();
            ListItem txt1;
            for (int i = 0; i < lbEndereco.Items.Count; i++)
            {
                txt1 = lbEndereco.Items[i];

                if (txt1.Selected)
                {
                    txt1.Selected = false;
                    ddlDrop.Items.Add(txt1);
                }
            }
            /*
            foreach(ListItem i in lbEndereco.Items)
            {
                if (i.Selected)
                {
                    i.Selected = false;
                    ddlDrop.Items.Add(i);
                }
            }
            */
           
        }

    }
}