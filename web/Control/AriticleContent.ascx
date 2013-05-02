<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AriticleContent.ascx.cs" Inherits="Control_NewsContent" %>
<div class="indexTable">
          <ul class="indexTitle"> <li><strong>设计随笔  </strong> Article </li>
              
          </ul>
          
          <ul class="indexCont">
          <li>
        <div id="newShow">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
            <ItemTemplate>
            <ul class="head"><li><h1><%# Eval("Title") %></h1></li> </ul>
           <ul class="title">
             <li> <span>时间</span> <%# Eval("CreateDate") %><em></em><span> 录入 </span>www.cwtzmm.com <span>来源</span> 作品 <span>点击 </span><%# Eval("Number") %></li></ul>
           <ul class="content">
             <li>
             <p><%# Eval("content") %></p>
             </li>
             
             </ul>
            
            </ItemTemplate>
            </asp:Repeater>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                SelectMethod="Articlesing" TypeName="BLL.BLLArticle" 
                UpdateMethod="ArticleUpdateNumber">
                <UpdateParameters>
                    <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
                </UpdateParameters>
                <SelectParameters> 
                    <asp:QueryStringParameter Name="id" QueryStringField="Id" 
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