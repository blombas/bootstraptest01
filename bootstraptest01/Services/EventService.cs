﻿using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations.Model;
using System.Linq;
using System.Web;
using bootstraptest01.repositories;

namespace bootstraptest01.Services
{
    public class EventService : IEventService
    {
        private readonly IContext context;
        private readonly IEventRepository events;

        public EventService(IContext context)
        {
            this.context = context;
            events = context.Events;
        }

        public Event GetBy(int id)
        {
            return events.GetBy(id);
        }

        public Event Create(Event myEvent)
        {
            events.Create(myEvent);
            context.SaveChanges();
            return myEvent;
        }

        public void AddUserEvent(Event choosenEvent, User user)
        {
            events.AddFor(choosenEvent,user);
        }

        public IEnumerable<Event> GetUserEvent(User user)
        {
            return events.getFor(user);
        }
    }
}