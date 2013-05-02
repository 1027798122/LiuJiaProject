using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.OleDb;

namespace DAL
{
    public class DAL_About
    {

        /// <summary>
        /// 返回DataTable类型
        /// </summary>
        /// <param name="IntId">查寻表的一条记录</param>
        /// <returns></returns>   
        public DataTable listSing(int IntId)
        {
            StringBuilder strsql = new StringBuilder();
            strsql.Append("select * from About where ");
            strsql.Append("Id=" + IntId + " ;");

            return OleDbHelper.ExecuteTable(strsql.ToString());



        }
        /// <summary>
        /// 修改
        /// </summary>
        public void Update(int IntId, string strAbout)
        {
            StringBuilder strsql = new StringBuilder();
            strsql.Append("update About set ");
            strsql.Append("[About] =[" + strAbout + "]");
            strsql.Append("where Id =" + IntId + ";");
            OleDbHelper.ExecuteNonQuery(strsql.ToString());
        }
       
    }
}
