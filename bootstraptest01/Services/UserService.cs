﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.Helpers;
using bootstraptest01.repositories;

namespace bootstraptest01.Services
{
    public class UserService : IUserService
    {
        private readonly IContext context;
        private readonly IUserRepository users;

        public UserService(IContext context)
        {
            this.context = context;
            users = context.Users;
        }

        public User GetBy(int id)
        {
            return users.GetBy(id);
        }

        public User GetBy(string userName)
        {
            return users.GetBy(userName);
        }

        public User Create(string username, string password, string email)
        {
            var user = new User()
            {
                UserName = username,
                PassWord = Crypto.HashPassword(password),
                Email = email
            };
            users.Create(user);
            context.SaveChanges();
            return user;
        }
    }
}