using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DBConnection
    {
        private String connectionString = "server=DESKTOP-IEQF9GI;database=NETtest;uid=sa;pwd=sww";

        public SqlDataReader ExecuteReader(String sql)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            SqlCommand command = new SqlCommand(sql, connection);

            SqlDataReader result = command.ExecuteReader();

            return result;
        }

        public bool ExecuteCommand(String sql)
        {
            bool result = false;

            try
            {
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();

                SqlCommand command = new SqlCommand(sql, connection);
                //command.Connection = connection;
                //command.CommandText = sql;
                command.ExecuteNonQuery();


                connection.Close();

                result = true;
            }
            catch (Exception e)
            {
                throw e;
            }

            return result;
        }
    }
}
