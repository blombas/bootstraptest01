using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bootstraptest01.Services;


namespace bootstraptest01
{
    public partial class MyAdmin : System.Web.UI.Page
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
                Response.Redirect("~/CreateNewEvent.aspx");
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