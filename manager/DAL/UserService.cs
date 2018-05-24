using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class UserService
    {
        public User GetUserByLogin(User user)
        {
            String sql = "";

            sql = "select * from Manager_management where user_name='" + user.UserName + "'";

            DBConnection helper = new DBConnection();
            SqlDataReader reader = helper.ExecuteReader(sql);
            User result = new User();
            if (reader.Read())
            {
                result.UserName = reader.GetString(3);
                result.PassWord = reader.GetString(2);

            }
            else
            {
                return null;
            }

            return result;
        }

        public List<User> GetAllUsers()
        {
            String sql = "";

            sql = "select * from Manager_management";

            DBConnection helper = new DBConnection();
            SqlDataReader reader = helper.ExecuteReader(sql);

            if (!reader.HasRows)
            {
                return null;
            }

            List<User> list = new List<User>();
            while (reader.Read())
            {
                User item = new User();

                item.UserName = reader.GetString(0);
                item.PassWord = reader.GetString(1);

                list.Add(item);
            }

            return list;
        }
    }
}
