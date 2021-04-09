using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aula16
{
    public partial class wUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string nome = fuUpload.FileName;
                string path = Server.MapPath(@"upload\");
                txtNm.Text = nome;
                txtSize.Text = fuUpload.PostedFile.ContentLength.ToString();

                fuUpload.PostedFile.SaveAs(path + nome);
            }
            catch
            {
                lblResult.Text = "Não foi possível inserir";
            }

        }

        protected void btnArquivos_Click(object sender, EventArgs e)
        {
            try
            {
                string nome = "";
                string path = Server.MapPath(@"upload\");
                for (int i = 0; i < fuUpload.PostedFiles.Count; i++)
                {
                    nome = nome + fuUpload.PostedFiles[i].FileName + " - ";
                    fuUpload.PostedFiles[i].SaveAs(path + fuUpload.PostedFiles[i].FileName);
                }
                txtNm.Text = nome;
            }
            catch
            {
                lblResult.Text = "Não foi possível inserir os arquivos";
            }
        }
    }
}