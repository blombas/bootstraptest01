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
         
        protected void Page_Load(object sender, EventArgs e)
        {
            WucEvent.SignupForEvent += new EventHandler(WucEvent_SignupForEvent);

        }

         protected void WucEvent_SignupForEvent(object sender, EventArgs e)
        {

        }
    }
}