using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.OleDb;

namespace DAL
{
    public class DAL_Guestbook
    {
        public DataTable GetGuestbooklist(int top)
        {
            StringBuilder strsql = new StringBuilder();
            string sqladd = "top" + " " + top;
            if (top <= 0)
            {
                sqladd = "";
            }
            strsql.Append("select " + sqladd + " * from Guestbook order by Id desc ;");
            return OleDbHelper.ExecuteTable(strsql.ToString());

        }
        /// <summary>
        /// 返回DataTable类型
        /// </summary>
        /// <param name="IntId">查寻表的一条记录</param>
        /// <returns></returns>   
        public DataTable GeArticlelistSing(int IntId)
        {
            StringBuilder strsql = new StringBuilder();
            strsql.Append("select * from Guestbook where ");
            strsql.Append("Id=" + IntId + " ;");

            return OleDbHelper.ExecuteTable(strsql.ToString());



        }

        #region 册除
        /// <summary>
        /// 册除
        /// </summary>
        public int Delete(int IntId)
        {

            StringBuilder strsql = new StringBuilder();
            strsql.Append("DELETE * from Guestbook where ");
            strsql.Append("Id =" + IntId + ";");
            return OleDbHelper.ExecuteNonQuery(strsql.ToString());

        }
        #endregion
        /// <summary>
        /// 回复
        /// </summary>
        public void Update(int IntId, string strName, string strCont)
        {

            StringBuilder strsql = new StringBuilder();
            strsql.Append("update Guestbook set ");
            strsql.Append("ReplyName ='" + strName + "' ,");
            strsql.Append(" ReplyContent ='" + strCont + "' ,");
            strsql.Append(" ReplyDate =#" + DateTime.Now + "# ");
            strsql.Append(" where Id =" + IntId + ";");
            OleDbHelper.ExecuteNonQuery(strsql.ToString());
        }


        public int insert(string WordsName,string Email,string QQ,string http,string ImgUrl,string wordsTitle,string WordsContent,string userIp)
        {
            StringBuilder strSql = new StringBuilder();

            OleDbParameter[] sqlp = new OleDbParameter[] { new OleDbParameter("[wordsName]", WordsName), new OleDbParameter("[email]", Email), new OleDbParameter("[QQ]", QQ), new OleDbParameter("[http]", http), new OleDbParameter("[imgUrl]", ImgUrl), new OleDbParameter("[wordsTitle]", wordsTitle), new OleDbParameter("[wordsContent]", WordsContent), new OleDbParameter("[userIp]", userIp) };
            strSql.Append("insert into Guestbook(WordsName,Email,QQ,http,ImgUrl,WordsTitle,WordsContent,UserIp,CreateDate) values([wordsName],[email],[QQ],[http],[imgUrl],[wordsTitle],[wordsContent],[userIp],#" + DateTime.Now + "#)");
            return OleDbHelper.ExecuteNonQuery(strSql.ToString(), sqlp);
        
        }
    }
}
