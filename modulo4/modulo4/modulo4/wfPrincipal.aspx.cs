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
                    
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
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
    }
}