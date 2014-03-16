using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.SessionState;

namespace bootstraptest01.Services
{
    public class SecurityService : ISecurityService
    {
        private readonly IUserService users;
        public bool IsAuthenticated { get; set; }

        public SecurityService(IUserService users)
        {
            this.users = users;
        }

        public bool Authenticate(string username, string password)
        {
            var user = users.GetBy(username);

            if (user == null)
                return false;

            return Crypto.VerifyHashedPassword(user.PassWord, password);
        }

        public void Login(User user)
        {
            IsAuthenticated = true;
        }

        public void Login(string username)
        {
            var user = users.GetBy(username);
            Login(user);
        }

        public void Logout()
        {
            IsAuthenticated = false;
        }

        public User CreateUser(string username, string password, string email, bool login = true)
        {
            var user = users.Create(username, password, email);
           
            if(login)
                Login(user);

            return user;
        }

        public bool DoesUserExist(string username)
        {
            return users.GetBy(username) != null;
        }

    }
}