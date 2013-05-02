using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAL
{
    public class DAL_Footer
    {
        public DataTable GetFooterlist(int top)
        {
            StringBuilder strsql = new StringBuilder();
            string sqladd = "top" + " " + top;
            if (top <= 0)
            {
                sqladd = "";
            }
            strsql.Append("select " + sqladd + " * from Footer order by Id desc ;");
            return OleDbHelper.ExecuteTable(strsql.ToString());

        }
    }
}
