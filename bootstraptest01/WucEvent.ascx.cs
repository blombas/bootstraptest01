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
        private string headLine;
        public string HeadLine
        {
            get { return headLine; }
            set { EventHeading.InnerText = value; }
        }
        


        public string HookLine { get;set; }
        public string InfoTekst { get; set; }
        public DateTime StartDate { get; set; }
        public int AgeMin { get; set; }
        public int AgeMax { get; set; }
        public int Price { get; set; }

        public event MyEventHandler SignupForEvent;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSignup_Click(object sender, EventArgs e)
        {
            if (SignupForEvent != null)
            {
                MyEventArgs myEvent = new MyEventArgs();
                myEvent.HeadLine = EventHeading.InnerText;
                SignupForEvent(sender, myEvent);
            }
        }
    }

    public class MyEventArgs:EventArgs
    {
        public string HeadLine { get; set; }
    }
}