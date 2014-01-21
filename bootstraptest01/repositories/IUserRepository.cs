using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bootstraptest01.repositories
{
    public interface IUserRepository : IRepository<User>
    {
        User GetBy(int id);

        User GetBy(string name);
    }
}
