using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class UserManage
    {
       

        public bool Login(User user)
        {
            bool result = false;

            UserService service = new UserService();

            User temp = service.GetUserByLogin(user);
            if (temp == null)
            {
                result = false;
            }
            else if (user.PassWord.Equals(temp.PassWord))
            {
                result = true;
            }

            return result;
        }

        public List<User> GetAllUsers()
        {
            UserService service = new UserService();
            return service.GetAllUsers();
        }
       
    }
}
