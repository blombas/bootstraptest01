using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bootstraptest01
{
    public partial class Events : System.Web.UI.Page
    {
        WalkDatingDataContext context = new WalkDatingDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            var events = (from ev in context.Events
                          orderby ev.DateStart
                          select ev).ToList();

            for(int i=0; i<events.Count(); i++)
            {
                if (i == 0)
                {
                    Image1.ImageUrl = (from l in context.Locations
                                       where l.LocationId == events[i].LocationId
                                       select l.ImageUrl).SingleOrDefault();

                    headline1.InnerText = events[i].Headline;
                    LabelSummery1.Text = events[i].Hookline;
                    DateTime date = (DateTime)events[i].DateStart;
                    EventDate.InnerText = date.ToString("dd, MMMM, yyyy");
                    EventTime.InnerText = "Tid: " + date.ToShortTimeString();
                    EventPrice.InnerText = "Pris: " + events[i].Price + " kr.";
                    AgeGroup.InnerText = "Alder: " + events[i].AgeMin + " - " + events[i].AgeMax + " år";
                }
                else if (i == 1)
                {
                    Image2.ImageUrl = (from l in context.Locations
                                       where l.LocationId == events[i].LocationId
                                       select l.ImageUrl).SingleOrDefault();

                    headline2.InnerText = events[i].Headline;

                    LabelSummery2.Text = events[i].Hookline;
                }
                else
                {
                    Image3.ImageUrl = (from l in context.Locations
                                       where l.LocationId == events[i].LocationId
                                       select l.ImageUrl).SingleOrDefault();

                    headline3.InnerText = events[i].Headline;

                    LabelSummery3.Text = events[i].Hookline;
                }  
            }
        }
    }
}