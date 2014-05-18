using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bootstraptest01
{
    public delegate void MyEventHandler(object sender, MyEventArgs e);

    public partial class WucEvent : System.Web.UI.UserControl
    {
        private int id;
        public int Id
        {
            get { return id; }
            set
            {
                id = value;
                HiddenFieldEventId.Value = value.ToString();
            }
        }

        private string headLine;
        public string HeadLine
        {
            get { return headLine; }
            set 
            {
                headLine = value;
                EventHeading.InnerText = value;
            }
        }

        private string locationName;
        public string LocationName
        {
            get { return locationName; }
            set 
            {
                location.InnerText = value;
                locationName = value; 
            }
        }


        private string eventLink;
        public string EventLink
        {
            get { return eventLink; }
            set
            {
                eventLink = value;
                SignupLink.HRef = value;
            }
        }

        //private string practicalText;
        //public string PracticalText
        //{
        //    get { return practicalText; }
        //    set
        //    {
        //        practicalText = value;
        //        EventPraticalText.InnerText = value;
        //    }
        //}

        private string warningText;

        public string WarningText
        {
            get { return warningText; }
            set
            {
                warningText = value;
                EventWarningText.InnerText = value;
                EventWarningText.Visible = true;
            }
        }   


        private DateTime start;
        public DateTime Start
        {
            get { return start; }
            set 
            {
                start = value;
                var month = value.ToString("MMMM");
                var eventHour = value.ToString("HH");
                var eventMin = value.ToString("mm");
                EventStart.InnerText = value.Day + ", " + month +", " + value.Year;
                Hour.InnerText = "Kl " + eventHour + ":" + eventMin;
            }
        }

        private string ageLimits;
        public string AgeLimits
        {
            get { return ageLimits; }
            set
            {
                ageLimits = value;
                AgeGroup.InnerText = value;
            } 
        }
        private int price;
        public int Price
        {
            get { return price; }
            set
            {
                price = value;
                PriceTag.InnerText = "Pris: " + value + " kr";
            }
        }

        private DateTime lastChange;
        public DateTime LastChange
        {
            get { return lastChange; }
            set
            {
                lastChange = value;
                var month = value.ToString("MMMM");
                LastSignupDate.InnerText = "Tilmeldingsfrist: " + value.Day + ", " + month + ", " + value.Year;
            }
        }

        private string eventFull;
        public string EventFull
        {
            get { return eventFull; }
            set
            {
                eventFull = value;
                if(value == "Ledige pladser")
                {
                    FreeSeats.Attributes.Add("class", "text-success");
                }
                else if (value == "Alle pladser optaget")
                {
                    FreeSeats.Attributes.Add("class", "text-danger");
                }
                else if(value == "Plads til mænd" || value=="Plads til kvinder")
                {
                    FreeSeats.Attributes.Add("class", "text-warning");
                }
                FreeSeats.InnerText = value;
            }
        }

        public event MyEventHandler SignupForEvent;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSignup_Click(object sender, EventArgs e)
        {
            if (SignupForEvent != null)
            {
                MyEventArgs myEvent = new MyEventArgs();
                myEvent.MyWucEvent = this;
                SignupForEvent(sender, myEvent);
            }
        }
    }

    public class MyEventArgs:EventArgs
    {
        public WucEvent MyWucEvent { get; set; }
    }
}