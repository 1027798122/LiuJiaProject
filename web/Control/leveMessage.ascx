<%@ Control Language="C#" AutoEventWireup="true" CodeFile="leveMessage.ascx.cs" Inherits="Control_leveMessage" %>


<script type="text/javascript">
$(document).ready(function(){
	var $showhide=$("#showPhoto .indexTable")
		$showhide.hide();

 //使用:selected选择器，来操作下拉列表.
	$("#showPhoto select").change(function () {
										 
			  var str = "";
			  str = $("select :selected").val();
					
			
			
			 $("#showPhoto img").attr("src",str)
        }).trigger('change');
        
		// trigger('change') 在这里的意思是：
		// select加载后，马上执行onchange.
		// 也可以用.change()代替.
		
	$("#Guestbook .right").click(function(){
	if ($showhide.is(":hidden"))
	{
	    $showhide.show();
	}else{
	    $showhide.hide();
	}
	
	});
	
		$("#but").click(function(){
	if ($showhide.is(":hidden"))
	{
	    $showhide.show();
	}else{
	    $showhide.hide();
	}
	
	});
	
		})
</script> 

<div id="showPhoto" 
        
        
        
    
    style="border: 1px hidden #009900; width:55%; position:absolute; left: 247px; top: 43px; height: 555px;  " >

<div class="indexTable">
          <ul class="indexTitle"> <li><strong>签写留言 - LeaveMessage</strong>  </li>
          </ul>
          <ul class="indexCont">
          <li>
          <div id="leaveMessage">
          <ul>
          <li>
    <ul class="pic">
      <li class="picimg">
          &nbsp;
                  <asp:Image ID="Icoimg" runat="server"  />
              
                                      </li>
      <li class="title">选择头像</li>
      <li>
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
        </li>
    </ul>
    <ul class="right">
      <li class="title">您的昵称<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
              ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
        </li>
      <li>
      
      </li>
      <li class="title">电子邮件:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </li>
      <li></li>
      <li class="title">QQ 号码:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </li>
      <li></li>
      <li class="title">个人主页:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
              ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
        </li>
      <li></li>
    </ul>
    <ul id="left">
      <li class="title">留言标题:<asp:TextBox ID="TextBox5" runat="server" Width="316px"></asp:TextBox>
        </li>
      <li></li>
      <li class="title">留言内容:<asp:TextBox ID="TextBox6" runat="server" Height="105px" 
              Width="314px"></asp:TextBox>
        </li>
      <li class="title"></li>
    </ul>
    <ul class="bot">
      <li class="but">
          <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">提交</asp:LinkButton></li>
      <li id="but"><span style="cursor:pointer;">取消</span>
        </li>
        </ul>
         
           </div>  
        
               
          </li>
          </ul>
          </div>
          </div>
    
   
    
