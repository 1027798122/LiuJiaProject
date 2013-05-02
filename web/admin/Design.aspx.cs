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
using Model;
using BLL;
public partial class admin_Design : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        BLLDesign Modedesign = new BLLDesign();
        
        int IntId =Convert.ToInt32( GridView1.DataKeys[e.RowIndex].Value);
        Model_Design modelimge = Modedesign.DesignModel(IntId);

        string imgurl = "~/" + modelimge.ImgUrl;
        Helper.CommonFunction.FilePicDelete(Server.MapPath(imgurl)); 
        Response.Write("<script language=javascript>alert('修改成功！')</script>");
        Response.Write("<script language=javascript>window.location.href=window.location.href ;</script>");


       
    }
}
