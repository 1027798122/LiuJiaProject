<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DesignShow.ascx.cs" Inherits="Control_DesignShow" %>
<div class="indexTable">
          <ul class="indexTitle"> <li><strong>作品展示</strong> Best Design </li>
              
          </ul>
          
          <ul class="indexCont">
          <li>
      <div id="DesignShown">
      
      
          <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
          <ItemTemplate>
           <ul class="pic"> <li><img src='<%# Eval("ImgUrl") %>' /></li>
       </ul>
       <ul class="info">
       <li class="title"><h2><%# Eval("WroksName") %></h2></li>
       <li><span>作品色彩</span>暂无</li>
         <li><span>布局方式</span><%# Eval("Htmal") %></li>
         <li><span>程序语言</span><%# Eval("Language") %></li>
          <li><span>查看次数</span><%# Eval("Number") %></li>
           <li><span>制作时间</span><%# Eval("CreateDate") %></li>
            <li><span>网址</span>暂无</li>
       </ul>
       <ul class="appraisal">
       <li><h2>自我点评</h2>
       <p>  <%# Eval("Appraisal") %></p>
       </li>
       </ul>
       <ul class="fact">
       <li>
       <h2>作品缩略图展示</h2>
       <a  title="装饰网站" href="#"><img src='<%# Eval("ImgUrl") %>' ></a>
       </li>
       </ul>
          </ItemTemplate>
          </asp:Repeater>
          <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
              SelectMethod="Designsing" TypeName="BLL.BLLDesign" 
              UpdateMethod="DesignUpdateNumber">
              <UpdateParameters>
                  <asp:QueryStringParameter Name="Ip" QueryStringField="Id" Type="Int32" />
              </UpdateParameters>
              <SelectParameters>
                  <asp:QueryStringParameter Name="Id" QueryStringField="Id" 
                      Type="Int32" />
              </SelectParameters>
          </asp:ObjectDataSource>
       </div>
          </li>
          </ul>
          <ul class="indexBot">
          <li></li>
          </ul>
          </div>
