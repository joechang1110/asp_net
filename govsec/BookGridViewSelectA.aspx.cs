using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["govsecConnectionString2"].ToString());
public partial class govsec_include_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }
      private void BindData()
    {
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Users", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridViewUsers.DataSource = dt;
        GridViewUsers.DataBind();
    }

}