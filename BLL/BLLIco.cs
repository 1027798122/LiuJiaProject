using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using System.Data;
namespace BLL
{
    public class BLLIco
    {
        DAL_Ico DALico = new DAL_Ico();
        public DataTable Icolits(int top)
        {

            return DALico.GetIcolits(top);
        }
        public int Iicinsert(string Ico,string ImgUrl)
        {


            return DALico.insert(Ico, ImgUrl);
        }
    }
}
