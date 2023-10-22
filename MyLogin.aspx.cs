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

public partial class MyLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1登入_Click(object sender, EventArgs e)
    {
        if (this.TextBox帳號.Text.Equals("csharp") && this.TextBox密碼.Text.Equals("123"))
        {
            this.Response.Redirect("~/govsex/BookGridViewA.aspx");

        }
    }
}
