using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bootstraptest01.Services;

namespace bootstraptest01.repositories
{
    public partial class test : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
           Context context = new Context();
           //UserService us = new UserService(context);
           // us.Create("niel", "dfgh", "anders@karlos.nu");

            EventService es = new EventService(context);
            es.Create("Dette er en headline test for en event");
        }
    }
}