using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Web;
using System.Data.OleDb;
using System.Data;

namespace DAL
{
    /// <summary>
    ///OleDbHelper 的摘要说明
    /// </summary>
    public class OleDbHelper
    {

        public OleDbHelper()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //

        }
        private static readonly string strconn = ConfigurationSettings.AppSettings["myds"] + HttpContext.Current.Request.MapPath(ConfigurationSettings.AppSettings["myconn"]);
        private static readonly int CommandTimeout = 3;
        /**/
        /// <summary>
        /// 获得连接对象
        /// </summary>
        /// <returns></returns>
        private static OleDbConnection GetOleDbConnection()
        {

            return new OleDbConnection(strconn);
        }
        #region  ExecuteNonQuery 方法 执行SQL 语句，返回受影响的行数
        /// <summary>
        /// 返回受影响的行数
        /// </summary>
        /// <param name="cmdText">执行数据库sql的语句</param>
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
        /// <summary>
        /// 返回受影响的行数
        /// </summary>
        /// <param name="cmdType">执行的方式:CommandType.StoredProcedure</param>
        /// <param name="cmdText">sql语,存储的名称</param>
        /// <param name="commandParameters">传入的参数</param>
        /// <returns></returns>
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
        #endregion
        #region ExecuteScalar 方法 执行SQL 语句，返回受影响一行一列
        /// <summary>
        /// 返回ExecuteScalar对象
        /// </summary>
        /// <param name="cmdText">sql语,存储的名称</param>
        /// <param name="commandParameters">传入的参数</param>
        /// <returns></returns>
        public static object ExecuteScalar(string cmdText, params OleDbParameter[] commandParameters)
        {
            OleDbCommand command = new OleDbCommand();
            using (OleDbConnection connection = GetOleDbConnection())
            {
                PrepareCommand(command, connection, CommandType.Text, cmdText, commandParameters);
                object val = command.ExecuteScalar(); ;
                command.Parameters.Clear();
                connection.Close();
                return val;
            }


        }
        /// <summary>
        /// 返回ExecuteScalar对象
        /// </summary>
        /// <param name="cmdType">执行的方式:CommandType.StoredProcedure</param>
        /// <param name="cmdText">sql语,存储的名称</param>
        /// <param name="commandParameters">传入的参数</param>
        /// <returns></returns>
        public static object ExecuteScalar(CommandType cmdType, string cmdText, params OleDbParameter[] commandParameters)
        {
            OleDbCommand command = new OleDbCommand();
            using (OleDbConnection connection = GetOleDbConnection())
            {
                PrepareCommand(command, connection, cmdType, cmdText, commandParameters);
                object val = command.ExecuteScalar(); ;
                command.Parameters.Clear();
                connection.Close();
                return val;
            }


        }
        #endregion
        #region ExecuteReader 方法 返回 oleDbDataReader类型
        /// <summary>
        /// 返回OleDbDataReader对象
        /// </summary>
        /// <param name="cmdType">执行的方式:CommandType.StoredProcedure</param>
        /// <param name="cmdText">sql语,存储的名称</param>
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
        /// <summary>
        /// 返回OleDbDataReader对象
        /// </summary>
        /// <param name="cmdType">执行的方式:CommandType.StoredProcedure</param>
        /// <param name="cmdText">sql语,存储的名称</param>
        /// <param name="commandParameters">传入的参数</param>
        /// <returns></returns>
        public static OleDbDataReader ExecuteReader(CommandType cmdType, string cmdText, params OleDbParameter[] commandParameters)
        {
            OleDbConnection connection = GetOleDbConnection();
            OleDbCommand command = new OleDbCommand();
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



        #endregion
        #region OleDbDDataAdapter 方法 返回 DataTable类型
        /// <summary>
        /// 返回DataTable类型
        /// </summary>
        /// <param name="cmdType">执行的方式:CommandType.StoredProcedure</param>
        /// <param name="cmdText">sql语,存储的名称</param>
        /// <param name="commandParameters">传入的参数</param>
        /// <returns></returns>
        public static DataTable ExecuteTable(string cmdText, params OleDbParameter[] cmmandParameters)
        {
            OleDbConnection connection = GetOleDbConnection();
            OleDbCommand command = new OleDbCommand();
            try
            {
                PrepareCommand(command, connection, CommandType.Text, cmdText, cmmandParameters);
                using (OleDbDataAdapter oda = new OleDbDataAdapter(command))
                {
                    DataSet ds = new DataSet();
                    oda.Fill(ds);
                    command.Parameters.Clear();
                    connection.Dispose();
                    command.Dispose();
                    return ds.Tables[0];
                }
            }
            catch
            {
                connection.Close();
                throw;
            }

        }
        /// <summary>
        /// 返回受影响的行数
        /// </summary>
        /// <param name="cmdType">执行的方式:CommandType.StoredProcedure</param>
        /// <param name="cmdText">sql语,存储的名称</param>
        /// <param name="commandParameters">传入的参数</param>
        /// <returns></returns>
        public static DataTable ExecuteTable(CommandType cmdType, string cmdText, params OleDbParameter[] cmmandParameters)
        {
            OleDbConnection connection = GetOleDbConnection();
            OleDbCommand command = new OleDbCommand();
            try
            {
                PrepareCommand(command, connection, cmdType, cmdText, cmmandParameters);
                using (OleDbDataAdapter oda = new OleDbDataAdapter(command))
                {
                    DataSet ds = new DataSet();
                    oda.Fill(ds);
                    command.Parameters.Clear();
                    connection.Dispose();
                    command.Dispose();
                    return ds.Tables[0];
                }

            }
            catch
            {
                connection.Close();
                throw;
            }
        }
        #endregion

        private static void PrepareCommand(OleDbCommand cmd, OleDbConnection conn, CommandType cmdType, string cmdText, OleDbParameter[] cmdParms)
        {
            if (conn.State != ConnectionState.Open)
                conn.Open();
            cmd.Connection = conn;
            cmd.CommandText = cmdText;
            cmd.CommandType = cmdType;
            cmd.CommandTimeout = CommandTimeout;
            if (cmdParms != null)
            {
                foreach (OleDbParameter parm in cmdParms)
                    cmd.Parameters.Add(parm);
            }
        }
    }
}
