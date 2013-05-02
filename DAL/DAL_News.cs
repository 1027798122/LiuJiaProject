using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.OleDb;
namespace DAL
{
    public class DAL_News
    {
        #region 查
        public DataTable GetNewslits(int top)
        {
            StringBuilder strsql = new StringBuilder();
            string stradd = "top" + " " + top;
            if (top <= 0)
            {
                stradd = "";
            }
            strsql.Append("select " + stradd + " * from News order by Id Desc ;");
            return OleDbHelper.ExecuteTable(strsql.ToString());
        }
        /// <summary>
        /// 返回DataTable类型
        /// </summary>
        /// <param name="IntId">查寻表的一条记录</param>
        /// <returns></returns>   
       public DataTable GetNewsSing(int IntId)
        {
            StringBuilder strsql = new StringBuilder();
            strsql.Append("select * from News where ");
            strsql.Append("Id=" + IntId + " ;");

            return OleDbHelper.ExecuteTable(strsql.ToString());
        }

        #endregion

       #region 添加
       /// <summary>
       /// 插入
       /// </summary>
       public int insert(string strTitle, string strContent)
       {
           StringBuilder strSql = new StringBuilder();

           OleDbParameter[] sqlp = new OleDbParameter[] { new OleDbParameter("[strTitle]", strTitle), new OleDbParameter("[strContent]",strContent) };
           strSql.Append("insert into News(Title,Content,[Number],CreateDate) values([strTitle],[strContent],0,#" + DateTime.Now + "#);");
           return OleDbHelper.ExecuteNonQuery(strSql.ToString(), sqlp);

       }
       #endregion

       #region 册除
       /// <summary>
       /// 册除
       /// </summary>
       public int Delete(int IntId)
       {

           StringBuilder strsql = new StringBuilder();
           strsql.Append("DELETE * from News where ");
           strsql.Append("Id =" + IntId + ";");
           return OleDbHelper.ExecuteNonQuery(strsql.ToString());

       }
       #endregion




       #region 修改
       /// <summary>
       /// 浏览次数
       /// </summary>
       public void UpdateNumber(int IntId)
       {
           StringBuilder strsql = new StringBuilder();
           strsql.Append("update News set ");
           strsql.Append("[Number] =[Number]+ 1 ");
           strsql.Append("where Id =" + IntId + ";");
           OleDbHelper.ExecuteNonQuery(strsql.ToString());
       }

       /// <summary>
       /// 修改新闻
       /// </summary>
       public void Update(int IntId,string strTitle,string strCont)
       {
         
           StringBuilder strsql = new StringBuilder();
           strsql.Append("update News set ");
           strsql.Append("Title ='" + strTitle + "' ,");
           strsql.Append(" Content ='" + strCont +"' ,");
           strsql.Append(" CreateDate =#" + DateTime .Now + "# ");
           strsql.Append(" where Id =" + IntId + ";");
           OleDbHelper.ExecuteNonQuery(strsql.ToString());
       }
       #endregion

    }
}
