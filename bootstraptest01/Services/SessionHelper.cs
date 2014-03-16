using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using bootstraptest01.repositories;
using bootstraptest01.Services;

namespace bootstraptest01.Services
{
    public class SessionHelper
    {
        public IContext Context;
        public IUserService Users; 
        public SecurityService Security;
        public User User;

        // private constructor
        private SessionHelper()
        {
            Context = new Context();
            Users = new UserService(Context);
            Security = new SecurityService(Users);
            User = null;
        }

        // Gets the current session.
        public static SessionHelper Current
        {
            get
            {
                SessionHelper session =
                  (SessionHelper)HttpContext.Current.Session["SessionHelper"];
                if (session == null)
                {
                    session = new SessionHelper();
                    HttpContext.Current.Session["SessionHelper"] = session;
                }
                return session;
            }
        }

        public void Abandon()
        {
            this.Abandon();
        }
    }
    
}

   
