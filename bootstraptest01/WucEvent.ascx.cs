using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bootstraptest01
{
    public partial class WucEvent : System.Web.UI.UserControl
    {
        public event EventHandler SignupForEvent;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSignup_Click(object sender, EventArgs e)
        {
            if (SignupForEvent != null)
            {
                SignupForEvent(sender, e);
            }
        }
    }
}