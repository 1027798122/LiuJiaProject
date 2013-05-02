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
using System.Data.OleDb;
using System.Data;

public partial class img : System.Web.UI.Page
{
    private static readonly string strconn = ConfigurationSettings.AppSettings["myds"] + HttpContext.Current.Request.MapPath(ConfigurationSettings.AppSettings["myconn"]);
    private static readonly int CommandTimeout = 3;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageUploader1_Uploaded(object sender, EventArgs e)
    {
        TextBox1.Text = ImageUploader1.PicSavedPath;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection();
        con.ConnectionString = strconn;
        con.Open();
        OleDbCommand cmd =new OleDbCommand("insert into img(img) values ('"+TextBox1.Text+"' ) ;",con);

        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('上传成功')</script>");
        Response.Write("<script language=javascript>window.location.href=window.location.href;</script>");
    }
}
