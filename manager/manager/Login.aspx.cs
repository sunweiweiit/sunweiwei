using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace manager
{
    public partial class Login : System.Web.UI.Page
    {
        DBConnection db = new DBConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            //账号输入
            txtName.Attributes.Add("Value", "请输入用户名");
            txtName.Attributes.Add("OnFocus", "if(this.value=='请输入用户名') {this.value=''}");
            txtName.Attributes.Add("OnBlur", "if(this.value==''){this.value='请输入用户名'}");
            //密码输入
            txtPwd.Attributes.Add("Value", "请输入密码");
            txtPwd.Attributes.Add("OnFocus", "if(this.value=='请输入密码'){this.value=''}");
            txtPwd.Attributes.Add("OnBlur", "if(this.value==''){this.value='请输入密码'}");
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
                string name = this.txtName.Text;
                Response.Redirect("Index.aspx?Name=" + name);
            }
            else
            {
                txtName.Text = "";
                txtPwd.Text = "";
                //Response.Write("<script>alert('登录失败,请输入正确的用户名和密码')</script>");
                Label1.Text = "用户名或密码错误";
                return;
            }
            //Session["name"] = txtName.Text;


        }
    }
}