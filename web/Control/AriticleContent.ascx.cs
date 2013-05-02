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

public partial class Control_NewsContent : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int Id=Convert.ToInt32( Request.QueryString["Id"]);
        if (Request.Cookies["Number"] !=null)//判断cook集合是否为空
        {
              if (Convert.ToInt32(Request.Cookies["Number"].Value) == Id)//判断早否相同的Id
               {

               }
               else
               {
                  ObjectDataSource1.Update();//执行修改
                   HttpCookie Cookie = new HttpCookie("Number");
                   Cookie.Value = Id.ToString();
                   Response.Cookies.Add(Cookie);        
               }
        }
        else
        {
                   ObjectDataSource1.Update();
                   HttpCookie Cookie = new HttpCookie("Number");
                   Cookie.Value = Id.ToString();
                   Response.Cookies.Add(Cookie); 
          
             
        }
         
          
         
    }
       
       
 }

