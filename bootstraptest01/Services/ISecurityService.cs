
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace bootstraptest01.Services
{
    interface ISecurityService
    {
        bool Authenticate(string username, string password);
        bool IsAuthenticated { get; set; }
        void Login(User user);
        void Login(string username);
        void Logout();
        User CreateUser(string username, string password, string email, bool login = true);
        bool DoesUserExist(string username);

    }
}
