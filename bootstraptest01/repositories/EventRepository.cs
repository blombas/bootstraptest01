using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace bootstraptest01.repositories
{
    public class EventRepository : LinqToSqlRepository<Event>, IEventRepository
    {
        public EventRepository(WalkDatingDataContext context, bool sharedContext)
            : base(context, sharedContext) { }

    
        public Event GetBy(int id)
        {
           return Find(e => e.EventId == id);
        }

        public IEnumerable<Event> getFor(User user)
        {
            var eventList = new List<Event>();

            var result = from ue in Context.UserEvents
                         where ue.UserId == user.UserId
                         select new {id = ue.EventId };

            foreach (var ev in result)
            { 
               eventList.Add(Find(e => e.EventId == ev.id));
            }
            return eventList;
        }

        public void AddFor(Event ev, User user)
        {
            UserEvent ue = new UserEvent { EventId = ev.EventId, UserId = user.UserId };
            user.UserEvents.Add(ue);
            if (!SharedContext)
                Context.SubmitChanges();
        }
    }
}