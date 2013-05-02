using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using System.Data;
namespace BLL
{
    public class BLLDesign
    {
        public readonly DAL_Design DALDesign = new DAL_Design();
        /// <summary>
        ///  获得数据列表
        /// </summary>
        /// <returns></returns>
        public DataTable Designlist(int top)
        {
            return DALDesign.GetDesignlist(top);
        }

    }
}
