using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace bootstraptest01.repositories
{
    public class Context : IContext
    {
        private readonly WalkDatingDataContext db;

        public Context(WalkDatingDataContext context = null, IUserRepository users = null, IEventRepository events = null)
        {
            db = context ?? new WalkDatingDataContext();
            Users = users ?? new UserRepository(db,false);
            Events = events ?? new EventRepository(db, false);
        }

        public IUserRepository Users
        {
            get; 
            private set;
        }

        public IEventRepository Events
        {
            get; 
            private set;
        }

        public void SaveChanges()
        {
            db.SubmitChanges();
        }

        public void Dispose()
        {
            if (db != null)
            {
                try
                {
                    db.Dispose();
                }
                catch {}
            }
        }
    }
}