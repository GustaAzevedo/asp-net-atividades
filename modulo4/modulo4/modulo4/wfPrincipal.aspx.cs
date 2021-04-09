using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace modulo4
{
    public partial class wfPrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == true)
            {

                lbCookie.Text = "";
                if (Request.Cookies != null)
                {
                    lbCookie.Text = Request.Cookies["login"].Value;
                }                
            }

            if (Session["login"] == null)
            {
                Response.Redirect("wfLogin.aspx");
            }
            else
            {
                if (Session["contador"] == null) Session["contador"] = 0;
                tbIdSession.Text = Session.SessionID.ToString();
                tbContador.Text = Session["contador"].ToString();
            }

            if(Application["contador"] == null)
            {
                Application["contador"] = 0;
                tbContaAplica.Text = Application["contador"].ToString();
            }
            else
            {
                tbContaAplica.Text = Application["contador"].ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("wfLogin.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Request.Cookies["login"] != null)
            {
                Request.Cookies.Remove("login");
                int n = Request.Cookies.Count;
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Session["contador"] = Convert.ToInt32(Session["contador"]) + 1;
            tbContador.Text = Session["contador"].ToString();
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            Session.Remove("contador");
            
        }

        protected void btnAddAplicacao_Click(object sender, EventArgs e)
        {
            Application.Lock();
            Application["contador"] = Convert.ToInt32(Application["contador"]) + 1;
            Application.UnLock();
        }

        protected void btnRemoveAplication_Click(object sender, EventArgs e)
        {
            Application.Remove("contador");
        }
    }
}