using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Collections.Generic;
/// <summary>
///OleDbHelper 的摘要说明
/// </summary>
public class OleDbHelper
{
    public abstract class OleDbHelper
    {
        private static Dictionary<string, OleDbParameter[]> parmCache = new Dictionary<string, OleDbParameter[]>();

        internal const int CommandTimeout = 3;

        /**/
        /// <summary>
        /// 获得连接对象
        /// </summary>
        /// <returns></returns>
        internal static OleDbConnection GetOleDbConnection()
        {
            return new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath("App_Data/bbb.mdb") + ";Persist Security Info=True");
        }
       

        /**/
        /// <summary>
        /// 返回受影响的行数
        /// </summary>
        /// <param name="cmdText">a</param>
        /// <param name="commandParameters">传入的参数</param>
        /// <returns></returns>
        public static int ExecuteNonQuery(string cmdText, params OleDbParameter[] commandParameters)
        {
            OleDbCommand command = new OleDbCommand();

            using (OleDbConnection connection = GetOleDbConnection())
            {
                PrepareCommand(command, connection, CommandType.Text, cmdText, commandParameters);
                int val = command.ExecuteNonQuery();
                command.Parameters.Clear();
                connection.Close();
                return val;
            }
        }



        public static int ExecuteNonQuery(CommandType cmdType, string cmdText, params OleDbParameter[] commandParameters)
        {
            OleDbCommand command = new OleDbCommand();

            using (OleDbConnection connection = GetOleDbConnection())
            {
                PrepareCommand(command, connection, cmdType, cmdText, commandParameters);
                int val = command.ExecuteNonQuery();
                command.Parameters.Clear();
                connection.Close();
                return val;
            }
        }



        /**/
        /// <summary>
        /// 返回SqlDataReader对象
        /// </summary>
        /// <param name="cmdText"></param>
        /// <param name="commandParameters">传入的参数</param>
        /// <returns></returns>
        public static OleDbDataReader ExecuteReader(string cmdText, params OleDbParameter[] commandParameters)
        {
            
            OleDbConnection connection = GetOleDbConnection();
            OleDbCommand command = new OleDbCommand();
            try
            {
                PrepareCommand(command, connection, CommandType.Text, cmdText, commandParameters);
                OleDbDataReader reader = command.ExecuteReader(CommandBehavior.CloseConnection);
                command.Parameters.Clear();

                return reader;
            }
            catch
            {
                connection.Close();
                throw;
            }
        }


        public static OleDbDataReader ExecuteReader(CommandType cmdType, string cmdText, params OleDbParameter[] commandParameters)
        {
            OleDbCommand command = new OleDbCommand();
            OleDbConnection connection = GetOleDbConnection();
            try
            {
                PrepareCommand(command, connection, cmdType, cmdText, commandParameters);
                OleDbDataReader reader = command.ExecuteReader(CommandBehavior.CloseConnection);
                command.Parameters.Clear();

                return reader;
            }
            catch
            {
                connection.Close();
                throw;
            }
        }


        /**/
        /// <summary>
        /// 返回结果集中的第一行第一列，忽略其他行或列
        /// </summary>
        /// <param name="cmdText"></param>
        /// <param name="commandParameters">传入的参数</param>
        /// <returns></returns>
        public static object ExecuteScalar(string cmdText, params OleDbParameter[] commandParameters)
        {
            OleDbCommand cmd = new OleDbCommand();

            using (OleDbConnection connection = GetOleDbConnection())
            {
                PrepareCommand(cmd, connection, CommandType.Text, cmdText, commandParameters);
                object val = cmd.ExecuteScalar();
                cmd.Parameters.Clear();
                connection.Close();
                return val;
            }
        }

        public static object ExecuteScalar(CommandType cmdType, string cmdText, params OleDbParameter[] commandParameters)
        {
            OleDbCommand cmd = new OleDbCommand();

            using (OleDbConnection connection = GetOleDbConnection())
            {
                PrepareCommand(cmd, connection, cmdType, cmdText, commandParameters);
                object val = cmd.ExecuteScalar();
                cmd.Parameters.Clear();
                connection.Close();
                return val;
            }
        }


        /**/
        /// <summary>
        /// 把一个参数数组存入缓存
        /// </summary>
        /// <param name="cacheKey">缓存参数数组使用的键</param>
        /// <param name="cmdParms">要缓存的一组参数</param>
        public static void CacheParameters(string cacheKey, params OleDbParameter[] commandParameters)
        {
            parmCache[cacheKey] = commandParameters;
        }

        /**/
        /// <summary>
        /// 从缓存中得到一个参数数组
        /// </summary>
        /// <param name="cacheKey">缓存参数数组使用的键</param>
        /// <returns>缓存的一组参数</returns>
        public static OleDbParameter[] GetCachedParameters(string cacheKey)
        {
            OleDbParameter[] cachedParms;
            if (!parmCache.TryGetValue(cacheKey, out cachedParms))
                return null;

            OleDbParameter[] clonedParms = new OleDbParameter[cachedParms.Length];

            for (int i = 0, j = cachedParms.Length; i < j; i++)
                clonedParms[i] = (OleDbParameter)((ICloneable)cachedParms[i]).Clone();

            return clonedParms;
        }

        private static void PrepareCommand(OleDbCommand cmd, OleDbConnection conn, CommandType cmdType, string cmdText, OleDbParameter[] cmdParms)
        {

            if (conn.State != ConnectionState.Open)
                conn.Open();

            cmd.Connection = conn;
            cmd.CommandText = cmdText;

            cmd.CommandType = comman;
            cmd.CommandTimeout = CommandTimeout;

            if (cmdParms != null)
            {
                foreach (OleDbParameter parm in cmdParms)
                    cmd.Parameters.Add(parm);
            }
        }
        /**/
        /// <summary>
        /// 公用分页
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <param name="showString"></param>
        /// <param name="queryString"></param>
        /// <param name="whereString"></param>
        /// <param name="orderString"></param>
        /// <param name="pageCount"></param>
        /// <param name="recordCount"></param>
        /// <param name="connection"></param>
        /// <returns></returns>
        public static OleDbDataReader ExecutePager(int pageIndex, int pageSize, string idColumn, string showString, string queryString, string whereString, string orderString, out int pageCount, out int recordCount, out OleDbConnection connection)
        {

            if (pageIndex < 1)
            {
                pageIndex = 1;
            }
            else
            {
                pageIndex = pageIndex + 1;
            }
            if (pageSize < 1) pageSize = 10;
            if (string.IsNullOrEmpty(showString)) showString = "*";
            if (string.IsNullOrEmpty(orderString)) orderString = "ID desc";
            connection = GetOleDbConnection();

            connection.Open();
            string myVw = string.Format(" ( {0} ) tempVw ", queryString);
            //string myVw = "Articles";
            OleDbCommand cmdCount = new OleDbCommand(string.Format(" select count(0) as recordCount from {0} {1}", myVw, whereString), connection);

            recordCount = Convert.ToInt32(cmdCount.ExecuteScalar());

            if ((recordCount % pageSize) > 0)
                pageCount = recordCount / pageSize + 1;
            else
                pageCount = recordCount / pageSize;
            OleDbCommand cmdRecord;
            if (pageIndex == 1)//第一页
            {
                cmdRecord = new OleDbCommand(string.Format("select top {0} {1} from {2} {3} order by {4} ", pageSize, showString, myVw, whereString, orderString), connection);
            }
            else if (pageIndex > pageCount)//超出总页数
            {
                cmdRecord = new OleDbCommand(string.Format("select top {0} {1} from {2} {3} order by {4} ", pageSize, showString, myVw, "where 1=2", orderString), connection);
            }
            else
            {
                int pageLowerBound = pageSize * pageIndex;
                int pageUpperBound = pageLowerBound - pageSize;

                OleDbCommand cmd = new OleDbCommand(string.Format("select top {0} {1} from {2} {3} order by {4} ", pageLowerBound, showString, myVw, whereString, orderString), connection);
                string result = string.Empty;
                using (IDataReader dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        if (pageUpperBound < 1)
                        {
                            result += "," + dr.GetInt32(0);
                        }
                        pageUpperBound--;
                    }
                }
                string recordIDs = result.Substring(1);
                cmdRecord = new OleDbCommand(string.Format("select top {0} {1} from {2} where {3} in ({4}) order by {5} ", pageSize, showString, myVw, idColumn, recordIDs, orderString), connection);
            }
            return cmdRecord.ExecuteReader();

        }
    }

}
