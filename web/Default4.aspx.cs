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
public partial class Default4 : System.Web.UI.Page
{   
    protected void Page_Load(object sender, EventArgs e)
    {
       
        BLLDesign Modell = new BLLDesign();

      

      Response.Write(Modell.DesignModel(1).ImgUrl);

    }
}
