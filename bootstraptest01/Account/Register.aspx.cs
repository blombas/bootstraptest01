using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using bootstraptest01.repositories;
using bootstraptest01.Services;
using Microsoft.AspNet.Membership.OpenAuth;

namespace bootstraptest01.Account
{
    // TODO: Use salt in password user table, see article on evernote
    public partial class Register : Page
    {
        private SessionHelper session;

        protected void Page_Load(object sender, EventArgs e)
        {
            session= SessionHelper.Current;
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
           
                if (!session.Security.DoesUserExist(UserName.Text))
                {
                    var user = session.Security.CreateUser(UserName.Text, Password.Text, Email.Text, true);
                    session.User = user;
                    Response.Redirect("../Default.aspx");
                }
            
            else
            {
                ErrorMessage.Text = "Username already exist, please choose another.";
            }
        }
    }
}