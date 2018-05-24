using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace manager
{
    public partial class Add : System.Web.UI.Page
    {
        string str = ConfigurationManager.AppSettings["conn01"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void submit_Click(object sender, EventArgs e)
        {

            if (uid.Text != "" && uname.Text != "" && pwd.Text != "" && rpwd.Text != "")
            {
                string user_role = role.Text;
                string type = state.Text;
                string user_id = uid.Text;
                string user_key = pwd.Text;
                string user_name = uname.Text;
                string real_name = name.Text;
                //string image = File1.Value;
                string phone = tel.Text;
                string email = mail.Text;
                string sql = "Insert into Manager_management(user_id,user_key,user_name,user_role,real_name,phone,email,type) values(@user_id,@user_key,@user_name,@user_role,@real_name,@phone,@email,@type)";
                SqlParameter[] parameters = { new SqlParameter("@user_id", user_id), new SqlParameter("@user_key", user_key), new SqlParameter("@user_name", user_name), new SqlParameter("@user_role", user_role), new SqlParameter("@real_name", real_name), new SqlParameter("@phone", phone), new SqlParameter("@email", email), new SqlParameter("@type", type) };
                using (SqlConnection conn = new SqlConnection(str))
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandText = sql;
                        cmd.Parameters.AddRange(parameters);
                        cmd.ExecuteNonQuery();
                    }
                }
                Response.Write(@"<script>alert('注册成功！');</script>");
                role.Text = "请选择角色";
                state.Text = "异常";
                uid.Text = "";
                pwd.Text = "";
                rpwd.Text = "";
                uname.Text = "";
                name.Text = "";
                //File1.Value = "";
                tel.Text = "";
                mail.Text = "";
            }
            else
            {
                Response.Write(@"<script>alert('注册失败！');</script>");
            }
        }

        protected void return_Click(object sender, EventArgs e)
        {
            Response.Redirect("manager.aspx");
        }
    }
}