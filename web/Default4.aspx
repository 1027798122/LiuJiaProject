<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<%@ Register src="Control/leveMessage.ascx" tagname="leveMessage" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">

*, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset, input, textarea, p, blockquote, th, td {
	margin: 0;
	padding: 0;
}
    </style>
<script  src="js/jquery-1.4.1-vsdoc.js"type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){


 //使用:selected选择器，来操作下拉列表.
	$("select").change(function () {
										 
			  var str = "";
			  $("select :selected").each(function () {
					str = $(this).val();
			  });
			
			 $("img").attr("src",str)
        }).trigger('change');
        return false;
		// trigger('change') 在这里的意思是：
		// select加载后，马上执行onchange.
		})// 也可以用.change()代替.
</script>
    
</head>
<body>
   
    
          <form id="form1" runat="server">
   
    
          <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="84px" 
              DataSourceID="ObjectDataSource1" DataTextField="Ico" 
              DataValueField="ImgUrl" 
              >
          </asp:DropDownList>
          <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
              SelectMethod="Icolits" TypeName="BLL.BLLIco">
              <SelectParameters>
                  <asp:Parameter DefaultValue="0" Name="top" Type="Int32" />
              </SelectParameters>
          </asp:ObjectDataSource>
    
   
          <asp:Image ID="Image1" runat="server" />
          </form>
    
   
</body>
</html>
