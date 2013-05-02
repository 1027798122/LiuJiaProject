using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAL
{
   public class DAL_Services
    {
        /// <summary>
        /// 返回DataTable类型
        /// </summary>
        /// <param name="IntId">查寻表的一条记录</param>
        /// <returns></returns>   
        public DataTable listSing(int IntId)
        {
            StringBuilder strsql = new StringBuilder();
            strsql.Append("select * from Services where ");
            strsql.Append("Id=" + IntId + " ;");

            return OleDbHelper.ExecuteTable(strsql.ToString());



        }
        /// <summary>
        /// 修改
        /// </summary>
        public void Update(int IntId, string strServices)
        {
            StringBuilder strsql = new StringBuilder();
            strsql.Append("update Services set ");
            strsql.Append("[Services] ='" + strServices + "' ");
            strsql.Append("where Id =" + IntId + ";");
            OleDbHelper.ExecuteNonQuery(strsql.ToString());
        }
    }
}
