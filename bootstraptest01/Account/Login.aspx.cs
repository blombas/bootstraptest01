using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using bootstraptest01.repositories;
using bootstraptest01.Services;

namespace bootstraptest01.Account
{
    public partial class Login : Page
    {
        private SessionHelper session;
        protected void Page_Load(object sender, EventArgs e)
        {
            session = SessionHelper.Current;
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            if (session.Security.Authenticate(TextBoxUsername.Text, TextBoxPassword.Text))
            {
                session.Security.Login(TextBoxUsername.Text);
                session.User = session.Users.GetBy(TextBoxUsername.Text);
                Response.Redirect("../Default.aspx");
            }
            else
            {
                string error = "Wrong user or password";
                LabelError.Text = error;
                LabelError.Visible = true;
            }
        }
    }
}