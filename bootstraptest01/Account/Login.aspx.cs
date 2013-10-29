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
            RegisterHyperLink.NavigateUrl = "Register.aspx";
            OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];

            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }

        protected void Unnamed6_Click(object sender, EventArgs e)
        {
            TextBox name = MyLogin.FindControl("UserName") as TextBox;
            TextBox pass = MyLogin.FindControl("Password") as TextBox;

            if (Membership.ValidateUser(name.Text, pass.Text))
            {
                Response.Redirect("../Default.aspx");
            }
        }
    }
}