using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace auray{
    public partial class useredit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // 初始化页面，可能要设置控件为只读或不可见
                txtUserName1.Enabled = false;
                txtUserEmail.Enabled = false;
                txtpassword.enabled=false;
                btnSave.Enabled = false;
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            int username = int.Parse(txtUserName.Text);

            // 使用连接字符串创建数据库连接
            using (SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["UserDBConnectionString"].ConnectionString))
            {
                connection.Open();

                // 使用参数化查询获取测试数据
                SqlCommand cmd = new SqlCommand("SELECT * FROM users WHERE username =@username", connection);
                cmd.Parameters.AddWithValue("@username", username);

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    // 将查询结果填充到控件中
                    txtUserName1.Text = reader["username"].ToString();
                    txtUserEmail.Text = reader["useremail"].ToString();
                    txtpassword.Text = reader["cpassword"].ToString();

                    // 启用编辑控件
                    txtTestName1.Enabled = true;
                    txtResult.Enabled = true;
                    txtpassword.enbaled=true;
                    btnSave.Enabled = true;
                }
                else
                {
                    // 清空文本框等，显示消息或执行其他操作
                    txtusername1.Text = "";
                    txtuseremail.Text = "";
                    txtpassword.text="";
                    btnSave.Enabled = false;
                    // 可以显示 "未找到记录" 的消息
                }

                reader.Close();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int username = int.Parse(txtusername.Text);

            // 使用连接字符串创建数据库连接
            using (SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["UserDBConnectionString"].ConnectionString))
            {
                connection.Open();

                // 使用参数化查询更新测试数据
                SqlCommand cmd = new SqlCommand("UPDATE users SET username = @userName, useremail = @useremail,cpassword=@cpassword  WHERE username = @username", connection);
                cmd.Parameters.AddWithValue("@username", txtusername1.Text);
                cmd.Parameters.AddWithValue("@useremail", txtuseremail.Text);
                cmd.Parameters.AddWithValue("@cpassword", txtpassword.Text);
                cmd.ExecuteNonQuery();
            }

            
        }
    }
}