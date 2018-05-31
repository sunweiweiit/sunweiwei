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
    public partial class role_add : System.Web.UI.Page
    {
        string str = ConfigurationManager.AppSettings["conn01"].ToString();
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (roletype.Text != "" && rolename.Text != "")
            {
                string user_role = roletype.Text;
                string user_id = roleid.Text;
                string user_name = rolename.Text;
                string user_permission = DropDownList1.Text;
                string sql = "Insert into Manager_role(user_role,user_id,user_name,user_permission) values(@user_role,@user_id,@user_name,@user_permission)";
                SqlParameter[] parameters = { new SqlParameter("@user_role", user_role), new SqlParameter("@user_id", user_id), new SqlParameter("@user_name", user_name), new SqlParameter("@user_permission", user_permission) };
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
                Response.Write(@"<script>alert('添加成功！');</script>");
                roletype.Text = "请选择角色";
                roleid.Text = "";
                rolename.Text = "";
                DropDownList1.Text = "显示";
            }
            else
            {
                Response.Write(@"<script>alert('添加失败！');</script>");
            }
        }

        protected void return_Click(object sender, EventArgs e)
        {
            Response.Redirect("role.aspx");
        }
      

    }
}