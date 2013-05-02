using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.OleDb;
using System.Data;

namespace DAL
{
    public class DAL_Ico
    {
        public DataTable GetIcolits(int top)
        {
            StringBuilder strsql = new StringBuilder();
            string stradd = "top" + " " + top;
            if (top <= 0)
            {
                stradd = "";
            }
            strsql.Append("select " + stradd + " * from Ico order by Id Desc ;");
            return OleDbHelper.ExecuteTable(strsql.ToString());
        }
        public int insert(string Ico,string ImgUrl)
        {
            StringBuilder strSql = new StringBuilder();

            OleDbParameter[] sqlp = new OleDbParameter[] { new OleDbParameter("[ico]", Ico), new OleDbParameter("[Imgurl]",ImgUrl) };
            strSql.Append("insert into Ico(Ico,ImgUrl) values([ico],[Imgurl])");
            return OleDbHelper.ExecuteNonQuery(strSql.ToString(), sqlp);

        }
    }
}
