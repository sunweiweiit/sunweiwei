using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace manager
{
    public partial class Log : System.Web.UI.Page
    {
        string str = ConfigurationManager.AppSettings["conn01"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn2 = new SqlConnection(str);
            conn2.Open();
            string sel = "select user_name,operate_type,sign,user_ip,SUBSTRING(CONVERT(CHAR(19), login_time, 120),1,16) as login_time from Management_log";
            SqlDataAdapter dr = new SqlDataAdapter(sel, conn2);//上面两句可以合并成这一行      
            DataSet ds = new DataSet();//创建数据集；
            dr.Fill(ds); //填充数据集
            GridView1.DataSource = ds;
            GridView1.DataBind();//将数据源绑定到控件上            
            if (conn2.State == ConnectionState.Open) //判断数据库连接状态，是否连接
            {
                conn2.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn3 = new SqlConnection(str))
            {
                string del = "delete from  Management_log where  SUBSTRING(CONVERT(char(19),login_time,120),1,10) between '"+test1.Text+"'and '"+test2.Text+"'";
                SqlCommand MyCommand = new SqlCommand(del, conn3);
                try
                {
                    conn3.Open();
                    MyCommand.ExecuteNonQuery();
                    conn3.Close();
                }
                catch (Exception ex)
                {
                    Console.WriteLine("{0} Exception caught.", ex);
                }
                string sql = "select user_name,operate_type,sign,user_ip,SUBSTRING(CONVERT(CHAR(19), login_time, 120),1,16) as login_time from Management_log";
                SqlDataAdapter dr = new SqlDataAdapter(sql, conn3);//上面两句可以合并成这一行      
                DataSet ds = new DataSet();//创建数据集；
                dr.Fill(ds); //填充数据集
                this.GridView1.DataSource = ds;
                this.GridView1.DataBind();//将数据源绑定到控件上            
                if (conn3.State == ConnectionState.Open) //判断数据库连接状态，是否连接
                {
                    conn3.Close();
                }
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            InitGridView(); //gridview绑定数据
        }

        private void InitGridView()
        {
            SqlConnection conn4 = new SqlConnection(str);
            conn4.Open();
            string sol = "select user_name,operate_type,sign,user_ip,SUBSTRING(CONVERT(CHAR(19), login_time, 120),1,16) as login_time from Management_log";
            SqlDataAdapter dr4 = new SqlDataAdapter(sol, conn4);//上面两句可以合并成这一行      
            DataSet ds4 = new DataSet();//创建数据集；
            dr4.Fill(ds4); //填充数据集
            GridView1.DataSource = ds4;
            GridView1.DataBind();//将数据源绑定到控件上            
            if (conn4.State == ConnectionState.Open) //判断数据库连接状态，是否连接
            {
                conn4.Close();
            }
        }
    }
}