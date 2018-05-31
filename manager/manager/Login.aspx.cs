using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net;

namespace manager
{
    public partial class Login : System.Web.UI.Page
    {
        DBConnection db = new DBConnection();
        string str = ConfigurationManager.AppSettings["conn01"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
           
           
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            User user = new User();
            user.UserName = txtName.Text;
            user.PassWord = txtPwd.Text;
            UserManage manager = new UserManage();
            bool result = manager.Login(user);
            if (result)
            {
                string Name = txtName.Text;
                string user_name = Name;
                string sign = "用户登录";
                string operate_type = "Login";
                string strHostName = Dns.GetHostName();  //得到本机的主机名
                IPHostEntry ipEntry = Dns.GetHostByName(strHostName); //取得本机IP
                string strAddr = ipEntry.AddressList[0].ToString(); //假设本地主机为单网卡
                string user_ip = strAddr;
                string sql = "Insert into Management_log(user_name,sign,operate_type,user_ip) values(@user_name,@sign,@operate_type,@user_ip)";
                SqlParameter[] parameters = { new SqlParameter("@user_name", user_name), new SqlParameter("@sign", sign), new SqlParameter("@operate_type", operate_type), new SqlParameter("@user_ip", user_ip) };
                using (SqlConnection conn = new SqlConnection(str))
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandText = sql;
                        cmd.Parameters.AddRange(parameters);
                        cmd.ExecuteNonQuery();
                    }
                    if (conn.State == ConnectionState.Open) //判断数据库连接状态，是否连接
                    {
                        conn.Close();
                    }

                }

                string name = this.txtName.Text;
                //Response.Redirect("Index.aspx?Name=" + name);
                Session["name"] = txtName.Text;
                Response.Redirect("Index.aspx");
              
            }
            else
            {
                txtName.Text = "";
                txtPwd.Text = "";
                //Response.Write("<script>alert('登录失败,请输入正确的用户名和密码')</script>");
                Label1.Text = "用户名或密码错误";
                return;
            }
            


        }
    }
}