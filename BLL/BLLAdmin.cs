using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
namespace BLL
{
    public class BLLAdmin
    {
        public readonly DAL_Admin DALadmin = new DAL_Admin();

        /// <summary>
        /// 是否存在该记录
        /// </summary>
        /// <returns></returns>
        public bool Exists(string UserName, string UserPwd)
        {
            return DALadmin.Exists(UserName, UserPwd);
        }

    }
}
