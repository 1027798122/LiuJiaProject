<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Guesbook.ascx.cs" Inherits="Control_NewsList" %>
<div class="indexTable">
          <ul class="indexTitle"> <li><strong> 雁过留声 </strong> Guestbook </li>
              
          </ul>
          
          <ul class="indexCont">
          <li>
        <div id="Guestbook">
                
                <ul class="head">
                  <li>
                     每页 <span class="red">
                         <asp:Label ID="Pagesize" runat="server" Text=""></asp:Label></span> 条&nbsp; &nbsp; 共 <span class="red">
                             <asp:Label ID="Datasourcecount" runat="server" Text=""></asp:Label></span> 条&nbsp; &nbsp; 第 <span class="red">
                                 <asp:Label ID="Currentpageindex" runat="server" Text="1"></asp:Label></span> 页/ 共 <span class="red">
                                     <asp:Label ID="Pagecount" runat="server" Text=""></asp:Label></span> 页
                  </li>
                </ul>
                <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
              <ul class="picList">
               <li>
               <a target="_blank" href="#" title='<%# Eval("WordsName") %>' 的留言"><img src='<%# Eval("ImgUrl") %> ' align="left" /></a>      
                <span class="title">
              <span><img title='<%# Eval("QQ") %>' alt="" src="images/dyb_qq_inc.gif"><img title='<%# Eval("Email") %>' alt="" src="images/dyb_mail_inc.gif"><img title='<%# Eval("http") %>' alt="" src="images/dyb_home_inc.gif"><img title='<%# Eval("UserIp") %>' alt="" src="images/dyb_ip_inc.gif" /></span> <a href="#"><%# Eval("WordsName") %>留言说 <%#  Eval("WordsTitle") %></a></span>
              <p><%# Eval("WordsContent") %></p>
              <p>回复：<%# Eval("ReplyContent") %></p>
              <p class="right"><span title="点击给我留言" style="cursor:pointer">我也要签写留言</span></p>
               </li>
               
               </ul>
            </ItemTemplate>
            </asp:Repeater>
               <ul class="page">
                  <li>
                    <span><a title="末 页" href="#">
                        <asp:LinkButton ID="LastButton" runat="server" onclick="LastButton_Click" 
                          CausesValidation="False">末 页</asp:LinkButton></a></span><span><a title="下一页" href="#">
                      <asp:LinkButton
                            ID="DownButton" runat="server" onclick="DownButton_Click" 
                          CausesValidation="False">下一页</asp:LinkButton></a></span><span><a title="上一页" href="#">
                      <asp:LinkButton
                                ID="UpButton" runat="server" onclick="UpButton_Click" 
                          CausesValidation="False">上一页</asp:LinkButton></a></span><span><a title="首 页" href="#">
                      <asp:LinkButton
                                    ID="FirstButton" runat="server" onclick="FirstButton_Click" 
                          CausesValidation="False">首 页</asp:LinkButton></a></span>
                  </li>
                </ul>
                
              </div>
          </li>
          </ul>
          <ul class="indexBot">
          <li></li>
          </ul>
          </div>
            
            
               