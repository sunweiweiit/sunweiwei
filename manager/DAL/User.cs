using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class User
    {
        private String user_name = "";
        private String user_key = "";

        public String UserName
        {
            get
            {
                return user_name;
            }
            set
            {
                user_name = value;
            }
        }


        public String PassWord
        {
            get
            {
                return user_key;
            }
            set
            {
                user_key = value;
            }
        }
    }
}
