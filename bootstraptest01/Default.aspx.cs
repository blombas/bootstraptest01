using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bootstraptest01
{
    public partial class Default : System.Web.UI.Page
    {
        WalkDatingDataContext context = new WalkDatingDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("http:\\dr.dk");
        }
    }
}