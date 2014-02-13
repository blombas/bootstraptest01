using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bootstraptest01.repositories
{
    public interface IContext :IDisposable
    {
        IUserRepository Users { get; }
        IEventRepository Events { get; }

        void SaveChanges();

    }
}
