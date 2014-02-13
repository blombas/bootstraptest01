using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bootstraptest01.Services
{
    public interface IUserService
    {
        User GetBy(int id);
        User GetBy(string userName);
        User Create(string username, string password, string email);
    }
}
