using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using System.Data;
namespace BLL
{
    public class BLLServices
    {
        public readonly DAL_Services DALServices = new DAL_Services();

         /// <summary>
        /// 返回DataTable类型
        /// </summary>
        /// <param name="IntId">查寻表的一条记录</param>
        /// <returns></returns>   
        public DataTable ServiceslistSing(int Id)
        {

           return DALServices.listSing(Id);
        }


       
    }
}
