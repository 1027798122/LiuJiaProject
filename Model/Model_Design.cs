using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
   public class Model_Design
    {
       private int _Id;
       private string _WroksName;
       private int _Number;
       private string _ImgUrl;
       private string _Appraisal;
       private string _Language;
       private string _Htmal;
       private DateTime _CreateDate;

       public int Id
       {
           get { return _Id; }
           set { _Id = value; }

       }

       public string WroksName
       {
           get { return _WroksName; }
           set { _WroksName = value; }

       }
       public int Number
       {
           get { return _Number; }
           set { _Number = value; }

       }

       public string ImgUrl
       {
           get { return _ImgUrl; }
           set { _ImgUrl = value; }

       }

       public string Appraisal
       {
           get { return _Appraisal; }
           set { _Appraisal = value; }

       }

       public string Language
       {
           get { return _Language; }
           set { _Language = value; }

       }

       public string Htmal
       {
           get { return _Htmal; }
           set { _Htmal = value; }

       }

       public  DateTime CreateDate
       {
           get { return _CreateDate; }
           set { _CreateDate = value; }

       }
    }
}
