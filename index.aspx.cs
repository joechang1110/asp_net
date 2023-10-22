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
namespace auray{
public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int m = DateTime.Today.Month;//6
        switch (m)
        {
            case 3:
            case 4:
            case 5:
                this.Image1.ImageUrl = "~/govsec/gif/spring/spring_01.gif";
                break;
            case 6:
            case 7:
            case 8:
                this.Image1.ImageUrl = "~/govsec/gif/summer/summer_01.gif";
                break;
            case 9:
            case 10:
            case 11:
                this.Image1.ImageUrl = "~/govsec/gif/fall/fall_01.gif";
                break;
            default:
                this.Image1.ImageUrl = "~/govsec/gif/winter1/summer_01.gif";
                break;
        }
        //if (m == 3 || m == 4 || m == 5) 
        //{
        //    this.Image1.ImageUrl = "~/govsec/gif/spring/spring_01.gif";
        //}
        //else if (m == 6 || m == 7 || m == 8)
        //{
        //    this.Image1.ImageUrl = "~/govsec/gif/summer/summer_01.gif";
        //}
        //else if (m == 9 || m == 10 || m == 11)
        //{
        //    this.Image1.ImageUrl = "~/govsec/gif/fall/summer_01.gif";
        //}
        //else
        //{
        //    this.Image1.ImageUrl = "~/govsec/gif/winter1/summer_01.gif";
        //}

        //隨機產生
        Random r=new Random();
        int rr = r.Next(0, 3 + 1);//0~3 不包含3
        switch (rr)
        {
            case 1:
            case 2:
            case 3:
                this.Image2.ImageUrl = "~/gif/aspnet" + rr + ".gif";
                break;
            default:
                this.Image2.ImageUrl = "~/gif/aspnet.gif";
                break;
        }

    }
}
}