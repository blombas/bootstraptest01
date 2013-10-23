using System;
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
                          orderby ev.DateStart descending
                          select ev).ToList();

            foreach (var eve in events)
            {
                WucEvent myEvent = (WucEvent)Page.LoadControl("~/WucEvent.ascx");
                myEvent.SignupForEvent += new MyEventHandler(myEvent_SignupForEvent);
                myEvent.HeadLine = eve.Headline;
                Label1.Controls.Add(myEvent);
            }

        }

        protected void myEvent_SignupForEvent(Object sender, MyEventArgs e)
        {
            Label2.Text = e.HeadLine;
        }
    }
}