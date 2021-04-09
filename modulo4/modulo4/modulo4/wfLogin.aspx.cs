using modulo4.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace modulo4
{
    public partial class wfLogin : System.Web.UI.Page
    {
        public List<User> Users { get; set; } = new List<User>();
        protected void Page_Load(object sender, EventArgs e)
        {
            Users.Add(new User("gustavo", "12345"));
            Users.Add(new User("felipe", "54321"));
            Users.Add(new User("guga", "guga123"));

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Boolean flag = false;
            foreach (var i in Users)
            {
                if (i.Name == tbName.Text && i.Password == tbPass.Text)
                {
                    HttpCookie login = new HttpCookie("login", tbName.Text);
                    Response.Cookies.Add(login);
                    Response.Cookies.Add(new HttpCookie("password", tbPass.Text));
                    Response.Redirect("wfPrincipal.aspx");
                }

            }

        }
    }
}