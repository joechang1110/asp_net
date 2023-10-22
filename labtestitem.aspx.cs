using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace auray{
public partial class labtestitem : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("INSERT INTO testitems(CustomerName, TestProject,ExpectedTestDate,Days,Product,Engineer,CustomerContact,CustomerContactPhone,CompletionDate) VALUES(@CustomerName, @TestProject,@ExpectedTestDate,@Days,@Product,@Engineer,@CustomerContact,@CustomerContactPhone,@CompletionDate)", con);
        cmd.Parameters.AddWithValue("@CustomerName", CustomerName.Text);
        cmd.Parameters.AddWithValue("@TestProject", TestProject.Text);
        cmd.Parameters.AddWithValue("@ExpectedTestDate", ExpectedTestDate.Text);
        cmd.Parameters.AddWithValue("@Days", Days.Text);
        cmd.Parameters.AddWithValue("@Product", Product.Text);
        cmd.Parameters.AddWithValue("@Engineer", Engineer.Text);
        cmd.Parameters.AddWithValue("@CustomerContact", CustomerContact.Text);
        cmd.Parameters.AddWithValue("@CustomerContactPhone", CustomerContactPhone.Text);
        cmd.Parameters.AddWithValue("@CompletionDate", CompletionDate.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        BindData();
    }

    private void BindData()
    {
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM testitems", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        gvTestItems.DataSource = dt;
        gvTestItems.DataBind();
    }

    protected void testitem_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Edittestitem")
        {
            // Edit functionality (you can redirect to another page with a query parameter for UserID)
        }
        else if (e.CommandName == "Deletetestitem")
        {
            int ID = Convert.ToInt32(e.CommandArgument);
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM testitems WHERE ID = @ID", con);
            cmd.Parameters.AddWithValue("@ID", ID);
            cmd.ExecuteNonQuery();
            con.Close();
            BindData();
        }
    }
}
}