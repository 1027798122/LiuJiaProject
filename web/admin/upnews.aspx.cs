﻿using System;
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

public partial class admin_upnews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
    protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
    {
        Response.Write("<script language=javascript>alert('修改成功！')</script>");
        Response.Write("<script language=javascript>window.location.href='News.aspx';</script>");
    }
}
