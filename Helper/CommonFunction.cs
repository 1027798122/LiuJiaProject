using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
//51/\a*/\s/\p/\x  下载最新的源码到51a/\s\\/px 
namespace Helper
{
    public class CommonFunction
    {
        #region 字符截断
        /// <summary>
        /// 截断字符串 
        /// </summary>
        /// <param name="content">文字总数</param>
        /// <param name="num">截取的个数</param>
        /// <returns></returns>
        public static string CutString(object content, int num)
        {
            if (content.ToString().Length > num)
            {
                return content.ToString().Substring(0, num) + "...";

            }

            return content.ToString();

        }
        #endregion
        #region 删除文件文件或图片
        /// <summary>
        /// 删除文件文件或图片
        /// </summary>
        /// <param name="path">当前文件的路径</param>
        /// <returns>是否删除成功</returns>
        public static bool FilePicDelete(string path)
        {
            bool ret = false;
            System.IO.FileInfo file = new System.IO.FileInfo(path);
            if (file.Exists)
            {
                file.Delete();
                ret = true;
            }
            return ret;
        }

        #endregion
        #region 获取客户端的IP
        /// <summary>
        /// 获取客户端的IP，可以取到代理后的IP
        /// </summary>
        /// <returns></returns>
        public static string GetClientIp()
        {
            string l_ret = string.Empty;
            if (!string.IsNullOrEmpty(System.Web.HttpContext.Current.Request.ServerVariables["HTTP_VIA"]))
                l_ret = Convert.ToString(System.Web.HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"]);

            if (string.IsNullOrEmpty(l_ret))
                l_ret = Convert.ToString(System.Web.HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"]);
            return l_ret;
        }
        #endregion

    }

}
