using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bootstraptest01.repositories;
using bootstraptest01.Services;

namespace bootstraptest01
{
    public partial class CreateNewEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
                var newEvent = new Event();

                newEvent.Headline = EventHeadLine.Text;

                var start = new DateTime();
                DateTime.TryParse(EventDateStart.Text, out start);
                newEvent.DateStart = start;

                var end = new DateTime();
                DateTime.TryParse(EventEndDate.Text, out end);
                newEvent.DateEnd = end;

                var lastestSignup = new DateTime();
                DateTime.TryParse(Signupdate.Text, out lastestSignup);
                newEvent.SignupDeadline = lastestSignup;

                int locId;
                Int32.TryParse(EventLocation.Text, out locId);
                newEvent.LocationId = locId;

                int price;
                Int32.TryParse(EventPrice.Text, out price);
                newEvent.Price = price;

                int minAge;
                Int32.TryParse(EventMinAge.Text, out minAge);
                newEvent.AgeMin = minAge;

                int maxage;
                Int32.TryParse(EventMaxAge.Text, out maxage);
                newEvent.AgeMax = maxage;

            newEvent.EventLink = EventLink.Text;

                IContext context = new Context();
                EventService service = new EventService(context);
                service.Create(newEvent);

            
        }
    }
}