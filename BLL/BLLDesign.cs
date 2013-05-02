using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DAL;
using Model;
namespace BLL
{
   public class BLLDesign
   {
      Model_Design ModelDesign = new Model_Design();
       public readonly DAL_Design DALDesign = new DAL_Design();
       public DataTable Designlist(int top)
       {

           return DALDesign.GetDesignlist(top);

       }
       public DataTable Designsing(int Id)
       {
           return DALDesign.GetDesignSing(Id);
       
       }
       /// <summary>
       /// 添加作品
       /// </summary>
       public int Designinsert(string WroksName, string ImgUrl, string Appraisal, string Language, string Htmal)
       {
         return  DALDesign.insert(WroksName, ImgUrl, Appraisal, Language, Htmal);
       
       }

       /// <summary>
       /// 浏览次数
       /// </summary>
       public void DesignUpdateNumber(int Ip)
       {

           DALDesign.UpdateNumber(Ip);

       }

       /// <summary>
       /// 修改案列
       /// </summary>
       public void DesignUpdate(int Id,string WroksName,string ImgUrl,string Appraisal,string Language,string Htmal)
       {

           DALDesign.Update(Id, WroksName, ImgUrl, Appraisal, Language, Htmal);

       }


       /// <summary>
       /// 删除
       /// </summary>
       public  int DesignDelete(int Id)
       {

           return DALDesign.Delete(Id);

       }
       /// <summary>
       /// 获得对象实体
       /// </summary>
       public Model_Design DesignModel(int Id)
       {
           return DALDesign.GetModelDesign(Id);
       
       }

    }
}
