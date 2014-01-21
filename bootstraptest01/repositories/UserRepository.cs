using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace bootstraptest01.repositories
{
    public class UserRepository : LinqToSqlRepository<User>, IUserRepository
    {
        
        public User GetBy(int id)
        {
            return Find(u => u.UserId == id);
        }

        public User GetBy(string mail)
        {
            return Find(u => u.Mail == mail);
        }
    }
}