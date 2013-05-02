using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using BLL;

//51/\a*/\s/\p/\x  下载最新的源码到51a/\s\\/px 
public partial class Manager : System.Web.UI.Page
{

    BLLAdmin admin = new BLLAdmin();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (admin.Exists(UseName.Text, pwd.Text))
        {

            FormsAuthentication.RedirectFromLoginPage(UseName.Text, true);
            Response.Write("<script>alert('登录成功')</script>");
            Response.Write("<script language=javascript>window.location.href=window.location.href</script>");



        }
        else
        {
            Response.Write("<script>alert('登录失败')</script>");
            Response.Write("<script language=javascript>window.location.href=window.location.href</script>");
        }
    }
}
