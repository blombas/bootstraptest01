using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bootstraptest01.repositories
{
    interface IEventRepository : IRepository<Event>
    {
        Event GetBy(int id);

        IEnumerable<Event> getFor(User user);

        void AddFor(Event ev, User user);
            
    }
}
