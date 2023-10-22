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

namespace auary
{

public partial class users1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UserDBConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    protected void btnAddUser_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO Users(UserName, UserEmail,cpassword) VALUES(@UserName, @UserEmail,@cpassword)", con);
        cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
        cmd.Parameters.AddWithValue("@UserEmail", txtUserEmail.Text);
        cmd.Parameters.AddWithValue("@cpassword", txtpassword.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        BindData();
    }

    private void BindData()
    {
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Users", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridViewUsers.DataSource = dt;
        GridViewUsers.DataBind();
    }

    protected void GridViewUsers_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "EditUser")
        {
            Response.Redirect("usersedit.aspx");
        }
        else if (e.CommandName == "DeleteUser")
        {
            int userID = Convert.ToInt32(e.CommandArgument);
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM Users WHERE UserID = @UserID", con);
            cmd.Parameters.AddWithValue("@UserID", userID);
            cmd.ExecuteNonQuery();
            con.Close();
            BindData();
        }
    }
}
}