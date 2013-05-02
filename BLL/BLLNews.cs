using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DAL;
namespace BLL
{
   public class BLLNews
   {
       public readonly DAL_News DALNews = new DAL_News();
         
       public DataTable Newslits(int top)
       {

           return DALNews.GetNewslits(top);
       }
       /// <summary>
       /// 返回DataTable类型
       /// </summary>
       /// <param name="IntId">查寻表的一条记录</param>
       /// <returns></returns>   
       public DataTable Newsing(int Id)
       {
           return DALNews.GetNewsSing(Id);
       
       }
       /// <summary>
       /// 浏览次数
       /// </summary>
       public void NewsUpdate(int Id)
       {
           DALNews.UpdateNumber(Id);
       
       }
       /// <summary>
       /// 修改闻
       /// </summary>
       public void UpdateNews(int Id,string Title,string Content)
       {
           DALNews.Update(Id,Title,Content);
       
       }
       /// <summary>
       /// 删除
       /// </summary>
       public int NewsDelete(int Id)
       {

         return  DALNews.Delete(Id);
       }

       public int Newsinsert(string Title, string Content)
       {

           return DALNews.insert(Title, Content);
       }
    }
}
