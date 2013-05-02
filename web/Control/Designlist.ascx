<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Designlist.ascx.cs" Inherits="Control_NewsList" %>
<div class="indexTable">
          <ul class="indexTitle"> <li><strong>案例展示 </strong> Design  </li>
             
          </ul>
          
          <ul class="indexCont">
          <li>
        <div id="newList">
                
                <ul class="head">
                  <li>
                     每页 <span class="red">
                         <asp:Label ID="Pagesize" runat="server" Text=""></asp:Label></span> 条新闻 &nbsp; &nbsp; 共 <span class="red">
                             <asp:Label ID="Datasourcecount" runat="server" Text=""></asp:Label></span> 条新闻 &nbsp; &nbsp; 第 <span class="red">
                                 <asp:Label ID="Currentpageindex" runat="server" Text="1"></asp:Label></span> 页/ 共 <span class="red">
                                     <asp:Label ID="Pagecount" runat="server" Text=""></asp:Label></span> 页
                  </li>
                </ul>
           <ul class="Designlist">
            
               <asp:Repeater ID="Repeater1" runat="server">
               <ItemTemplate>
                    <li>    <span class="title"> <%# Eval("Number") %> 次   </span>    
                <a href='DesignShow.aspx?Id=<%# Eval("Id") %>'><img  src='<%# Eval("ImgUrl") %>'/><a href='DesignShow.aspx?Id=<%# Eval("Id") %>'> <%# Eval("WroksName") %> </a>       
             <p><%# Eval("Appraisal") %></p>     
             </li>
               
               </ItemTemplate>
               </asp:Repeater>
              </ul>
               <ul class="page">
                  <li>
                    <span><a title="末 页" href="#">
                        <asp:LinkButton ID="LastButton" runat="server" onclick="LastButton_Click">末 页</asp:LinkButton></a></span><span><a title="下一页" href="#">
                      <asp:LinkButton
                            ID="DownButton" runat="server" onclick="DownButton_Click">下一页</asp:LinkButton></a></span><span><a title="上一页" href="#">
                      <asp:LinkButton
                                ID="UpButton" runat="server" onclick="UpButton_Click">上一页</asp:LinkButton></a></span><span><a title="首 页" href="#">
                      <asp:LinkButton
                                    ID="FirstButton" runat="server" onclick="FirstButton_Click">首 页</asp:LinkButton></a></span>
                  </li>
                </ul>
                
              </div>
          </li>
          </ul>
          <ul class="indexBot">
          <li></li>
          </ul>
          </div>