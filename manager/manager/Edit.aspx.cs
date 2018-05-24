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
    public partial class Edit : System.Web.UI.Page
    {
        string str = ConfigurationManager.AppSettings["conn01"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            string user_role = Request["user_role"];
            string type = Request["type"];
            string user_id = Request["user_id"];
            string user_name = Request["user_name"];
            string user_key = Request["user_key"];
            string real_name = Request["real_name"];
            string phone = Request["phone"];
            string email = Request["email"];
            role.Text = user_role;
            state.Text = type;
            //uid.Text = user_id;
            uname.Text = user_name;
            //pwd.Text = user_key;
            //rpwd.Text = user_key;
            //tel.Text = phone;
            // mail.Text = email;
        }

        protected void submit_Click(object sender, EventArgs e)
        {

            if (role.Text != "" && state.Text != "" && uid.Text != "" && uname.Text != "" && pwd.Text != "" && rpwd.Text != "")
            {
                string userrole = role.Text;
                string utype = state.Text;
                string userid = uid.Text;
                string userkey = pwd.Text;
                string username = uname.Text;
                string real = name.Text;
                //string image = File1.Value;
                string uphone = tel.Text;
                string uemail = mail.Text;
                string sql = "update Manager_management set user_id = '" + uid + "',user_key = '" + userkey + "',real_name = '" + real + "',phone ='" + uphone + "',email='" + uemail + "' where user_name = '" + username + "' ";
                SqlParameter[] parameters = { new SqlParameter("@user_id", userid), new SqlParameter("@user_key", userkey), new SqlParameter("@user_name", username), new SqlParameter("@user_role", userrole), new SqlParameter("@real_name", real), new SqlParameter("@phone", uphone), new SqlParameter("@email", uemail), new SqlParameter("@type", utype) };
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
                Response.Write(@"<script>alert('修改成功！');</script>");
                //role.Text = "请选择角色";
                //state.Text = "异常";
                //uid.Text = "";
                //pwd.Text = "";
                //rpwd.Text = "";
                //uname.Text = "";
                //name.Text = "";
                ////File1.Value = "";
                //tel.Text = "";
                //mail.Text = "";
            }
            else
            {
                Response.Write(@"<script>alert('修改失败！');</script>");
            }
        }

        protected void return_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manager.aspx");
        }
    }
}