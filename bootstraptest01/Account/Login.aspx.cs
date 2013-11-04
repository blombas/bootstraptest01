using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace bootstraptest01.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (!Page.IsValid) return;

            if (Membership.ValidateUser(TextBoxEmail.Text, TextBoxPassword.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(TextBoxEmail.Text, false);
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