using System.Collections.Generic;
using System.Linq;

namespace bootstraptest01.Services
{
    public interface IEventService
    {
        Event GetBy(int id);
        Event Create(string headLine);
        void AddUserEvent(Event myEvent, User user);
        IEnumerable<Event> GetUserEvent(User user);
    }
}