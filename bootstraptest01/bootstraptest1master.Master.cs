using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using bootstraptest01.repositories;
using bootstraptest01.Services;

namespace bootstraptest01
{
    public partial class bootstraptest1master : System.Web.UI.MasterPage
    {
        private SessionHelper session;
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;

        protected void Page_Init(object sender, EventArgs e)
        {

            session = SessionHelper.Current;

            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //HandleLoginStatus();
        }

        //private void HandleLoginStatus()
        //{
        //    if (session.User != null)
        //    {
        //        LiteralUsername.Text = session.User.UserName;
        //        LinkLoginStatus.Text = "Logout";
        //    }
        //    else
        //    {
        //        LiteralUsername.Text = "";
        //        LinkLoginStatus.Text = "Login";
        //    }
        //}

        protected void ButtonSendMessage_Click1(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                var sendersName = TextBoxNameContact.Text;
                var sendersEmail = TextBoxEmailContact.Text;
                var sendersMessage = TextBoxMessageContact.Text;
                bool emailIsSent = EmailService.SendEmail(sendersName, sendersEmail, sendersMessage, EmailTemplate.Contact);
            }
        }

        

        //protected void LinkLoginStatus_Click(object sender, EventArgs e)
        //{
        //    if (LinkLoginStatus.Text == "Login")
        //    {
        //        Response.Redirect("Account/Login.aspx");
        //    }
        //    else
        //    {
        //        Session.Abandon();
        //        LiteralUsername.Text = "";
        //        LinkLoginStatus.Text = "Login";
        //    }
        //}

    }
}