using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DAL;
namespace BLL

{
   public class BLLArticle
    {
       public readonly DAL_Article DALArticle = new DAL_Article();

       public DataTable Articleliste(int top)
       {
           return DALArticle.GetArticlelist(top);
       }
       public DataTable Articlesing(int id)
       {
           return DALArticle.GeArticlelistSing(id);

       }
       /// <summary>
       /// 浏览次数
       /// </summary>
       public void ArticleUpdateNumber(int Id)
       {
           DALArticle.UpdateNumber(Id);
       
       
       }
        /// <summary>
        /// 修改日记
        /// </summary>
       public void ArticleUpdate(int Id,string Title, string Content, string Author, string Weather)
       {
           DALArticle.Update(Id, Title, Content, Author, Weather);
          
       }

        /// <summary>
        /// 添加日记
        /// </summary>
       public int Articleinsert(string Title, string Content, string Author, string Weather)
       {

          return  DALArticle.insert(Title, Content, Author, Weather);
       }
         /// <summary>
        /// 册除
        /// </summary>
       public int Articledelete(int Id)
       {
           return DALArticle.Delete(Id);

       }
    }
}
