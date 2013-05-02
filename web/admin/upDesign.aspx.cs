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
using TW.Web.UI;

public partial class admin_upDesign : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
       
        if (!IsPostBack)
        {
            TextBox TextBox4 = (TextBox)FormView1.FindControl("TextBox4");
            Session["url"] = "~/" + TextBox4.Text;//获取图片地址
        }
        
    }
    protected void ImageUploader1_Uploaded(object sender, EventArgs e)
    {
        ImageUploader ImageUploader1 = (ImageUploader)FormView1.FindControl("ImageUploader1");
        TextBox imageUrl1TextBox = (TextBox)FormView1.FindControl("TextBox4");
        imageUrl1TextBox.Text = ImageUploader1.PicSavedPath.Substring(2);
    }
    protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
    {
        if (Helper.CommonFunction.FilePicDelete(Server.MapPath(Session["url"].ToString())))
        {
            Session.Remove("url");
            Response.Write("<script language=javascript>alert('修改成功！')</script>");

            Response.Write("<script language=javascript>window.location.href='Design.aspx'</script>");


        }
        else
        {
            Session.Remove("url");
            Response.Write("<script language=javascript>alert('修改失败！')</script>");

            Response.Write("<script language=javascript>window.location.href=window.location.href;</script>");


        }
    }
}
