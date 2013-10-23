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
            WucEvent1.SignupForEvent += new EventHandler(WucEvent1_SignupForEvent);
        }

        protected void WucEvent1_SignupForEvent(Object sender, EventArgs e)
        {
            Label1.Text = "Clicked";
        }
    }
}