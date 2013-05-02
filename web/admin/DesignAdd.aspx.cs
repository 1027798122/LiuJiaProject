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

public partial class admin_DesignAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageUploader1_Uploaded(object sender, EventArgs e)
    {
        ImageUploader ImageUploader1 = (ImageUploader)FormView1.FindControl("ImageUploader1");
        TextBox imageUrl1TextBox = (TextBox)FormView1.FindControl("TextBox4");
        imageUrl1TextBox.Text = ImageUploader1.PicSavedPath.Substring(2);
    }
    protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        Response.Write("<script language=javascript>alert('插入成功！')</script>");

        Response.Write("<script language=javascript>window.location.href='Design.aspx'</script>");

    }
}
