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
    public partial class role : System.Web.UI.Page
    {
        string str = ConfigurationManager.AppSettings["conn01"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                using (SqlConnection conn = new SqlConnection(str))
                {
                    string sql = "select user_id,user_name,user_role from Manager_role";
                    SqlDataAdapter dr = new SqlDataAdapter(sql, conn);//上面两句可以合并成这一行      
                    DataSet ds = new DataSet();//创建数据集；
                    dr.Fill(ds); //填充数据集
                    this.GridView1.DataSource = ds;
                    this.GridView1.DataBind();//将数据源绑定到控件上            
                    if (conn.State == ConnectionState.Open) //判断数据库连接状态，是否连接
                    {
                        conn.Close();
                    }
                }
            }

        }

        protected void select_Click(object sender, EventArgs e)
        {
            if (selectbox.Text != "")
            {
                using (SqlConnection conn2 = new SqlConnection(str))
                {
                    string sql2 = "select user_id,user_name,user_role from Manager_role where user_name = '"+selectbox.Text+"'";
                    SqlDataAdapter dr2 = new SqlDataAdapter(sql2, conn2);//上面两句可以合并成这一行      
                    DataSet ds2 = new DataSet();//创建数据集；
                    dr2.Fill(ds2); //填充数据集
                    this.GridView1.DataSource = ds2;
                    this.GridView1.DataBind();//将数据源绑定到控件上            
                    if (conn2.State == ConnectionState.Open) //判断数据库连接状态，是否连接
                    {
                        conn2.Close();
                    }
                }
            }
            else
            {
                using (SqlConnection conn = new SqlConnection(str))
                {
                    string sql = "select user_id,user_name,user_role from Manager_role";
                    SqlDataAdapter dr = new SqlDataAdapter(sql, conn);//上面两句可以合并成这一行      
                    DataSet ds = new DataSet();//创建数据集；
                    dr.Fill(ds); //填充数据集
                    this.GridView1.DataSource = ds;
                    this.GridView1.DataBind();//将数据源绑定到控件上            
                    if (conn.State == ConnectionState.Open) //判断数据库连接状态，是否连接
                    {
                        conn.Close();
                    }
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < this.GridView1.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)this.GridView1.Rows[i].FindControl("CheckBox1");
                chk.Checked = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < this.GridView1.Rows.Count; i++)
            {
                CheckBox chk = (CheckBox)this.GridView1.Rows[i].FindControl("CheckBox1");
                chk.Checked = false;
            }
        }

        protected void addbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("role_add.aspx");
        }

        protected void del_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow rowview in GridView1.Rows)
            {

                CheckBox check = (CheckBox)rowview.Cells[0].FindControl("CheckBox1");

                if (check.Checked)//如果被选中

                {

                    string myid = rowview.Cells[1].Text;
                    using (SqlConnection conn3 = new SqlConnection(str))
                    {
                        string del = "delete from Manager_role where user_id='" + myid + "'";
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
                        string sql = "select user_id,user_name,user_role from Manager_role";
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
            }

        }
    }
}