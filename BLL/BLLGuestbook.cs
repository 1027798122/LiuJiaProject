using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DAL;
namespace BLL
{
    public class BLLGuestbook
    {
        public readonly DAL_Guestbook DALGuestbook = new DAL_Guestbook();
        public DataTable Gestbookliste(int top)
        {
            return DALGuestbook.GetGuestbooklist(top);
        }


         /// <summary>
        /// 返回DataTable类型
        /// </summary>
        /// <param name="IntId">查寻表的一条记录</param>
        /// <returns></returns>   
        public DataTable GuestbooklistSing(int Id)
        {

            return DALGuestbook.GeArticlelistSing(Id);
        }




        /// <summary>
        /// 册除
        /// </summary>
        public int Guestbookdelete(int Id)
        {

            return DALGuestbook.Delete(Id);

        }

         /// <summary>
        /// 回复
        /// </summary>
        public void GuestbookUpdate(int Id, string ReplyName, string ReplyContent)
        {

            DALGuestbook.Update(Id, ReplyName, ReplyContent);
        }

        public int Gestnoolinsert(string WordsName, string Email, string QQ, string http, string ImgUrl, string wordsTitle, string WordsContent,string UserIp)
        {


           return DALGuestbook.insert(WordsName, Email, QQ, http, ImgUrl, wordsTitle, WordsContent,UserIp);
        }
    }
}
