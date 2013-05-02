using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.OleDb;

namespace DAL
{
    public class DAL_Article
    {

        public DataTable GetArticlelist(int top)
        {
            StringBuilder strsql = new StringBuilder();
            string sqladd = "top" + " " + top;
            if (top <= 0)
            {
                sqladd = "";
            }
            strsql.Append("select " + sqladd + " * from Article order by Id desc ;");
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
            strsql.Append("select * from Article where ");
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
            strsql.Append("DELETE * from Article where ");
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
            strsql.Append("update Article set ");
            strsql.Append("[Number] =[Number]+ 1 ");
            strsql.Append("where Id =" + IntId + ";");
            OleDbHelper.ExecuteNonQuery(strsql.ToString());
        }

        /// <summary>
        /// 修改日记
        /// </summary>
        public void Update(int IntId, string strTitle, string strCont,string strAhr,string strWhr)
        {

            StringBuilder strsql = new StringBuilder();
            strsql.Append("update Article set ");
            strsql.Append("Title ='" + strTitle + "' ,");
            strsql.Append(" Content ='" + strCont + "' ,");
            strsql.Append(" Author ='" + strAhr + "' ,");
            strsql.Append(" Weather ='" + strWhr + "' ,");
            strsql.Append(" CreateDate =#" + DateTime.Now + "# ");
            strsql.Append(" where Id =" + IntId + ";");
            OleDbHelper.ExecuteNonQuery(strsql.ToString());
        }
        #endregion

        #region 添加
        /// <summary>
        /// 插入
        /// </summary>
        public int insert(string strTitle, string strCont, string strAhr, string strWhr)
        {
            StringBuilder strSql = new StringBuilder();

            OleDbParameter[] sqlp = new OleDbParameter[] { new OleDbParameter("[strTitle]", strTitle), new OleDbParameter("[strContent]",strCont), new OleDbParameter("[strAhr]", strAhr), new OleDbParameter("[strWhr]", strWhr) };
            strSql.Append("insert into Article(Title,Content,Author,[Number],Weather,CreateDate)" );
            strSql.Append(" values([strTitle],[strContent],[strAhr],0,[strWhr],#" + DateTime.Now + "#);");

            return OleDbHelper.ExecuteNonQuery(strSql.ToString(), sqlp);

        }
        #endregion
    }
}
