﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bootstraptest01
{
    public partial class EventList : System.Web.UI.Page
    {
        WalkDatingDataContext context = new WalkDatingDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            var events = (from ev in context.Events
                          join l in context.Locations
                          on ev.LocationId equals l.LocationId
                          orderby ev.DateStart
                          select new {eee = ev, locationName = l.Name}).ToList();

            foreach (var eve in events)
            {
                var eee = eve.eee;
                WucEvent myEvent = (WucEvent)Page.LoadControl("~/WucEvent.ascx");
                myEvent.SignupForEvent += new MyEventHandler(myEvent_SignupForEvent);
                myEvent.HeadLine = eee.Headline;
                myEvent.LocationName = eve.locationName;
                myEvent.Start = (DateTime)eee.DateStart;
                myEvent.Price = (int)eee.Price;
                myEvent.AgeLimits = "Alder: " + eee.AgeMin + "-" + eee.AgeMax + " år";
                myEvent.LastChange = (DateTime)eee.SignupDeadline;
                myEvent.EventFull = "Alle pladser optaget";

                Label1.Controls.Add(myEvent);
            }

        }

        protected void myEvent_SignupForEvent(Object sender, MyEventArgs e)
        {
            WucEvent choosenWucEvent = e.MyWucEvent;
            Label2.Text = choosenWucEvent.AgeLimits;

        }
    }
}