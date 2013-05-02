using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using System.Data;
namespace BLL
{
    public class BLLFooter
    {
        public readonly DAL_Footer DALFoter = new DAL_Footer();
        public DataTable Designlist(int top)
        {

            return DALFoter.GetFooterlist(top);
        }
    }
}
