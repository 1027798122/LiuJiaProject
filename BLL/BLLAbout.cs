using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using System.Data;
namespace BLL
{
   public class BLLAbout
    {
       public readonly DAL_About DALAbout = new DAL_About();
       /// <summary>
        /// 返回DataTable类型
        /// </summary>
        /// <param name="IntId">查寻表的一条记录</param>
        /// <returns></returns>   
       public DataTable AboutlistSing(int Id)
       {
           return DALAbout.listSing(Id);
       
       }
    /// <summary>
        /// 修改
        /// </summary>
       public void AboutUpdate(int Id, string About)
       {
           DALAbout.Update(Id, About);
       }
    }
}
