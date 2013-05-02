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

public partial class Control_leveMessage : System.Web.UI.UserControl
{
    BLLGuestbook BLLguestbook = new BLLGuestbook();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        string wordsName = TextBox1.Text;
        string Email = TextBox2.Text;
        string QQ = TextBox3.Text;
        string http = TextBox4.Text;
        string ImgUrl = DropDownList1.SelectedValue;
        string WordsTitle = TextBox5.Text;
        string WordsContent = TextBox6.Text;
        string UserIp = Helper.CommonFunction.GetClientIp();
        int mess = BLLguestbook.Gestnoolinsert(wordsName, Email, QQ, http, ImgUrl, WordsTitle, WordsContent, UserIp);
        if (mess == 1)
        {
           
            Response.Write("<script>alert('提交成功')</script>");
            Response.Write("<script language=javascript>window.location.href=window.location.href;</script>");

        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        
    }
}
