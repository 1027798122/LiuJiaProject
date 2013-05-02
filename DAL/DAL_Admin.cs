using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAL
{
    public class DAL_Admin
    {
        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public bool Exists(string UserName, string UserPwd)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from admin ");
            strSql.Append("where adminUser='" + UserName + "'and adminPwd='" + UserPwd + "' ;");
            object val = OleDbHelper.ExecuteScalar(strSql.ToString());
            int cmdresult;
            if (object.Equals(val, null) || object.Equals(val, System.DBNull.Value))
            {
                cmdresult = 0;
            }
            else
            {
                cmdresult = Convert.ToInt32(val);

            }
            if (cmdresult == 0)
            {
                return false;

            }
            else
            {
                return true;

            }
        }
    }
}