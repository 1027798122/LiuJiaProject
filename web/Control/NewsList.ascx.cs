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
public partial class Control_NewsList : System.Web.UI.UserControl
{    BLLNews Bllnew = new BLLNews();
    protected void Page_Load(object sender, EventArgs e)
    {
        bind();
                    
    }
    public void bind()
    {
        int curpage =Convert.ToInt32( Currentpageindex.Text)-1;
        PagedDataSource ps = new PagedDataSource();
        ps.AllowPaging = true;//
        ps.CurrentPageIndex = curpage;//显示的第几页码


        ps.PageSize = 7;//分页显示的列数
        ps.DataSource=Bllnew.Newslits(0).DefaultView;



        Datasourcecount.Text= ps.DataSourceCount.ToString();//获取记录总数
        Pagecount.Text = ps.PageCount.ToString();//共多少页码
        Pagesize.Text = ps.PageSize.ToString();//每页显示多少条记录
        Currentpageindex.Text = Convert.ToString(ps.CurrentPageIndex + 1);//当前页


       


        Repeater1.DataSource = ps;
        Repeater1.DataBind();

        if (Convert.ToInt32(Currentpageindex.Text) == ps.PageCount)
        {
            DownButton.Visible = false;
            LastButton.Visible = false;
        }
        else
        {
            DownButton.Visible = true;
            LastButton.Visible = true;

        }

        if (Convert.ToInt32(Currentpageindex.Text) == 1)
        {
            UpButton.Visible = false;
            FirstButton.Visible = false;

        }
        else
        {
            UpButton.Visible = true;
            FirstButton.Visible = true;
        }
          

    }
    
    protected void LastButton_Click(object sender, EventArgs e)
    {
        Currentpageindex.Text = Pagecount.Text;
        bind();
    }
    protected void DownButton_Click(object sender, EventArgs e)
    {
        Currentpageindex.Text = Convert.ToString(Convert.ToInt32(Currentpageindex.Text) + 1);
        bind();
      
    }
    protected void UpButton_Click(object sender, EventArgs e)
    {
        Currentpageindex.Text = Convert.ToString(Convert.ToInt32(Currentpageindex.Text) - 1);
        bind();
    }
    protected void FirstButton_Click(object sender, EventArgs e)
    {
        Currentpageindex.Text = "1";
        bind();
    }
}
