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
    public partial class role_edit : System.Web.UI.Page
    {
        string str = ConfigurationManager.AppSettings["conn01"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
           //string user_name = Request["user_name"];
              string user_id = Request["user_id"];
            //rolename.Text = user_name;
            roleid.Text = user_id;
           
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (roletype.Text != "" && roleid.Text != "" && rolename.Text != "" && DropDownList1.Text != "")
            {
                string userrole = roletype.Text;               
                string uname = rolename.Text;
                string uid = roleid.Text;
                string up = DropDownList1.Text;
              
                string sql = "update Manager_role set user_role='"+userrole+"',user_name = '" + uname + "',user_permission='"+up+"' where user_id='"+uid+"'";
                SqlParameter[] parameters = { new SqlParameter("@user_role", userrole), new SqlParameter("@user_id", uid), new SqlParameter("@user_name", uname), new SqlParameter("@user_permission", up) };
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
               
            }
            else
            {
                Response.Write(@"<script>alert('修改失败！');</script>");
            }
        }

        protected void return_Click(object sender, EventArgs e)
        {
            Response.Redirect("role.aspx");
        }
    }
}