using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bootstraptest01.repositories;
using bootstraptest01.Services;

namespace bootstraptest01
{
    public partial class SignupForEvent : System.Web.UI.Page
    {
        private WucEvent choosenEvent;

        protected void Page_Load(object sender, EventArgs e)
        {
            choosenEvent = SessionHelper.Current.ChoosenEvent;

            SignupHeader.InnerText = choosenEvent.HeadLine;
            EventLocation.InnerText = choosenEvent.LocationName;

            var eventStart = choosenEvent.Start;
            var month = eventStart.ToString("MMMM");
            EventDate.InnerText = eventStart.Day + ", " + month + ", " + eventStart.Year;
        }

        // TODO: Du er nået til at skulle skrive mails til chrisstine og bruger
        // Derefter skal du tjekke mail både ved contact og her ved tilmeldning af event
        // 
        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            var loggedInUser = SessionHelper.Current.User;
            var myEvent = SessionHelper.Current.Events.GetBy(SessionHelper.Current.ChoosenEvent.Id);

            if (IsValid && !(IsUserAlreadySignedup(loggedInUser)))
            {
                if (loggedInUser != null)
                {
                    loggedInUser.FIrstName = Firstname.Text;
                    loggedInUser.Gender = RadioButtonList1.SelectedValue;

                    SessionHelper.Current.Users.Save(loggedInUser);
                    SessionHelper.Current.Events.AddUserEvent(myEvent, loggedInUser);
                }
            }

            AfterSignupMessage.InnerText = "Tak for din tilmelding, vi glæder os til at se dig";
            // TODO: skriv noget om at der er sendt en mail afsted
            AfterSignupMessage.Visible = true;
            Panel1.Visible = false;
        }

        private bool IsUserAlreadySignedup(User user)
        {
            bool isUserSignedUp = false;
            var userEvents = SessionHelper.Current.Events.GetUserEvent(user);

            foreach (var userEvent in userEvents)
            {
                if (userEvent.EventId == choosenEvent.Id)
                {
                    isUserSignedUp = true;
                }
            }
            return isUserSignedUp;
        }
    }
}