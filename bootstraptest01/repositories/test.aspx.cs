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
        protected void Page_Load(object sender, EventArgs e)
        {
            string mail = "anders@blomqvist.nu";
            int id = 1;
            var userList = new List<User>();
            
            var myRepo = new UserRepository();
            User uuu = myRepo.GetBy(id);
            userList.Add(uuu);


            GridView1.DataSource = userList;
            GridView1.DataBind();
        }
    }
}