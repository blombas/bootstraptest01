using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;

namespace bootstraptest01.Account
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
        }

        protected void RegisterUser_CreatedUser(object sender, EventArgs e)
        {
            FormsAuthentication.SetAuthCookie(RegisterUser.UserName, createPersistentCookie: false);

            string continueUrl = RegisterUser.ContinueDestinationPageUrl;
            if (!OpenAuth.IsLocalUrl(continueUrl))
            {
                continueUrl = "~/";
            }

            MembershipUser newMember = Membership.GetUser(RegisterUser.UserName);
            var id = newMember.ProviderUserKey.ToString();
            var mail = newMember.Email.ToString();
            WalkDatingDataContext context = new WalkDatingDataContext();
            var user = new User
            {
                Mail = mail,
                UniqueId = id
            };

            context.Users.InsertOnSubmit(user);
            context.SubmitChanges();

            Response.Redirect(continueUrl);
        }
    }
}