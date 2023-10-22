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
using System.IO;
using System.Drawing;

public partial class arche_archieIndex : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            StreamReader sr = null;
            sr = File.OpenText(Server.MapPath("~/arche/include/1.txt"));
            this.Label1.Text = sr.ReadToEnd();
            this.Label1.Font.Size = 12;
            this.Label1.ForeColor = Color.Blue;

            sr.Close();
            sr = null;
        }
        catch (Exception ex)
        {
            //mbox(ex.Message);
            //throw;
        }
        

    }
}
