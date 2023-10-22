using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 上傳檔案 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button確認_Click(object sender, EventArgs e)
    {
        string d=Server.MapPath("~/fruit/");
            if(this.FileUpload1.HasFile)
            {
                d+=this.FileUpload1.FileName;
                this.FileUpload1.SaveAs(d);

                this.errormsg.Text=this.FileUpload1.FileName+"已上傳ok!";

            }


    }
}