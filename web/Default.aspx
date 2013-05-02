<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register src="Control/BestDesign.ascx" tagname="BestDesign" tagprefix="uc1" %>

<%@ Register src="Control/News.ascx" tagname="News" tagprefix="uc2" %>

<%@ Register src="Control/Article.ascx" tagname="Article" tagprefix="uc3" %>

<%@ Register src="Control/Message.ascx" tagname="Message" tagprefix="uc4" %>

<%@ Register src="Control/footer.ascx" tagname="footer" tagprefix="uc5" %>

<%@ Register src="Control/bam.ascx" tagname="bam" tagprefix="uc6" %>

<%@ Register src="Control/globallink.ascx" tagname="globallink" tagprefix="uc7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>作品</title>
<link href="css/devise.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/JScript.js"></script>
<script type="text/javascript" src="js/jquery-1.4.1-vsdoc.js"></script>
<script type="text/javascript" src="js/jquery.floatDiv.js"></script>
<script type="text/javascript">
$(function(){
		   var $man =$("#test");
	$man.floatdiv({left:"0px",top:"50px"});
	$man.hover(function(){
						
	   $(this).children("h2").hide().siblings().has("li").show('fast');
	   
	},function(){
		$(this).children("ul").has("li").hide();
		$(this).children("h2").show();
		});
	
});
</script>
</head>

<body>
    <form id="form1" runat="server">
<div id="container">
<div id="Banner"> </div>

<uc7:globallink 
        ID="globallink1" runat="server" />

<div id="flash">
    <div id="flash0">
        <object id="FlashID" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
            height="300" width="954">
            <param name="movie" value="images/flash/flash.swf" />
            <param name="quality" value="high" />
            <param name="wmode" value="opaque" />
            <param name="swfversion" value="9.0.45.0" />
<!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
            <param name="expressinstall" value="Scripts/expressInstall.swf" />
<!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
    <!--[if !IE]>-->
        </object>
        <object data="images/flash/flash.swf" height="300" 
            type="application/x-shockwave-flash" width="954">
<!--<![endif]-->
            <param name="quality" value="high" />
            <param name="wmode" value="opaque" />
            <param name="swfversion" value="9.0.45.0" />
            <param name="expressinstall" value="Scripts/expressInstall.swf" />
<!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
      <div>
        </object>
    </div>
</div>
  
 <div id="Design">
  <h4><strong>推荐案例</strong> Best Design <span><img src="images/11.jpg" width="38" height="9" onclick="fnClick('Design.aspx');" style="cursor:pointer"/></span></h4>
    
  <uc1:BestDesign ID="BestDesign1" runat="server" />
 
    <uc6:bam ID="bam1" runat="server" />
     
 
   
    
 
   
     
 
   
 
    
   <uc5:footer ID="footer1" runat="server" />
   <div id="foot">
   <ul>
<li class="link"><a href="About.aspx"title="关于本站">关于本站</a> |&nbsp; <a href="admin/News.aspx"title="About Duyibo">管理员</a> |&nbsp; <a href="Services.aspx"title="服务范围">服务范围</a> |&nbsp; <a href="#" title="广告服务">广告服务</a> |&nbsp; <a href="/Forjob/" title="招聘栏目">招聘栏目</a> |&nbsp; <a href="#" title="友情链接">友情链接</a> |&nbsp; <a href="#" title="隐私保护">隐私保护</a> |&nbsp; <a href="#" title="网站导航">网站导航</a> |&nbsp; <a href="http://www.51aspx.com" title="51aspx">51aspx</a></li>
      <li class="line">2010 - 2011 </li>
  
</ul>
    </div>
 </div>
  
</div>
<div id="test" 
        style=" padding:2px;color:white; top: 1px; left: 0px; text-align: left;">
<h2><img src="images/qq.gif" /></h2> 
<ul>
<li>
<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=623488217&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:623488217:41" alt="点击这里给我发消息" title="点击这里给我发消息"></a>
</li>
<li></li>
<li>
<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=623488217&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:623488217:41" alt="点击这里给我发消息" title="点击这里给我发消息"></a>
</li>

</ul>
</div>
    </form>
</body>
</html>
