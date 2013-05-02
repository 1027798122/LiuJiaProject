using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.OleDb;
using Model;
namespace DAL
{
   public class DAL_Design
   {
       Model_Design ModelDesign = new Model_Design();
       #region 查
       public DataTable GetDesignlist(int top)
       {
           StringBuilder strsql = new StringBuilder();
           string sqladd = "top" +" "+ top;
           if (top <= 0)
           {
               sqladd = "";
           }
           strsql.Append("select " + sqladd + " * from Design order by Id desc ;");
           return OleDbHelper.ExecuteTable(strsql.ToString());
       
       }
       /// <summary>
       /// 返回DataTable类型
       /// </summary>
       /// <param name="IntId">查寻表的一条记录</param>
       /// <returns></returns>   
       public DataTable GetDesignSing(int IntId)
       {
           StringBuilder strsql = new StringBuilder();
           strsql.Append("select * from Design where ");
           strsql.Append("Id=" + IntId + " ;");

           return OleDbHelper.ExecuteTable(strsql.ToString());



       }
       #endregion

       #region 添加
       /// <summary>
       /// 插入
       /// </summary>
       public int insert(string strName, string strImg,string strApp,string strLang,string strHal)
       {
           StringBuilder strSql = new StringBuilder();

           OleDbParameter[] sqlp = new OleDbParameter[] { new OleDbParameter("[strName]", strName), new OleDbParameter("[strImg]", strImg), new OleDbParameter("[strApp]", strApp), new OleDbParameter("[strLang]", strLang), new OleDbParameter("[strHal]",strHal) };
           strSql.Append("insert into Design(WroksName,[Number],ImgUrl,Appraisal,[Language],Htmal,CreateDate)"); 
           strSql.Append(" values([strName],0,[strImg],[strApp],[strLang],[strHal],#" + DateTime.Now + "#);");
           return OleDbHelper.ExecuteNonQuery(strSql.ToString(), sqlp);

       }
       #endregion
       #region 册除
       /// <summary>
       /// 册除
       /// </summary>
       public int Delete(int IntId)
       {

           StringBuilder strsql = new StringBuilder();
           strsql.Append("DELETE * from Design where ");
           strsql.Append("Id =" + IntId + ";");
           return OleDbHelper.ExecuteNonQuery(strsql.ToString());
       }

       #endregion



       #region 修改
       /// <summary>
       /// 浏览次数
       /// </summary>
       public void UpdateNumber(int IntId)
       {
           StringBuilder strsql = new StringBuilder();
           strsql.Append("update Design set ");
           strsql.Append("[Number] =[Number]+ 1 ");
           strsql.Append("where Id =" + IntId + ";");
           OleDbHelper.ExecuteNonQuery(strsql.ToString());
       }


       /// <summary>
       /// 修改案列
       /// </summary>
       public void Update(int IntId, string WN, string Img,string Apprl,string Lang,string hml)
       {

           StringBuilder strsql = new StringBuilder();
           strsql.Append("update Design set ");
           strsql.Append("WroksName ='" + WN + "' ,");
           strsql.Append(" ImgUrl ='" + Img + "' ,");
           strsql.Append(" Appraisal ='" + Apprl + "' ,");
           strsql.Append(" [Language] ='" + Lang + "' ,");
           strsql.Append(" Htmal ='" + hml + "' ,");
           strsql.Append(" CreateDate =#" + DateTime.Now + "# ");
           strsql.Append(" where Id =" + IntId + ";");
           OleDbHelper.ExecuteNonQuery(strsql.ToString());
       }
       #endregion
       #region 获得对象实体
       /// <summary>
       /// 获得对象实体
       /// </summary>
       public Model_Design GetModelDesign(int IntId)
       {
           StringBuilder strSql = new StringBuilder();
           strSql.Append("select * from Design ");
           strSql.Append("where [Id]=" + IntId + ";");
           using (IDataReader dataReader = OleDbHelper.ExecuteReader(strSql.ToString()))
           {
               if (dataReader.Read())
               {
                   ModelDesign.Id = IntId;
                   ModelDesign.WroksName = dataReader["WroksName"].ToString();
                   ModelDesign.Number = Convert.ToInt32(dataReader["Number"]);
                   ModelDesign.ImgUrl = dataReader["ImgUrl"].ToString();
                   ModelDesign.Appraisal = dataReader["Appraisal"].ToString();
                   ModelDesign.Language = dataReader["Language"].ToString();
                   ModelDesign.Htmal = dataReader["Htmal"].ToString(); 
                  
                   ModelDesign.CreateDate =(DateTime)dataReader["CreateDate"];
                   
               }

           }
           return ModelDesign;

       }
       #endregion
    }

}
