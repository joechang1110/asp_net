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

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Login1.UserName = "csharp";
        
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
       //if(this.Login1.UserName=="csharp" && this.Login1.Password=="123")
        if(this.Login1.UserName.Equals("csharp") && this.Login1.Password.Equals("123"))
        {
            this.Response.Redirect("~/arche/archeIndex.aspx");

        }
    }
}
