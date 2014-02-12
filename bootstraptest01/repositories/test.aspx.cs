using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bootstraptest01.repositories
{
    public partial class test : System.Web.UI.Page
    {
        WalkDatingDataContext myContext = new WalkDatingDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            UserRepository ur = new UserRepository(myContext, true);
            var myRepo = new EventRepository(myContext, true);
            User uuu = ur.GetBy(1);
            var userList = myRepo.getFor(uuu);



            GridView1.DataSource = userList;
            GridView1.DataBind();
        }
    }
}