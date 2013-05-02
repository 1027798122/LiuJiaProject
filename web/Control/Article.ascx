<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Article.ascx.cs" Inherits="Control_Article" %>
 <div id="countindex">
   <h4 ><strong>设计随笔</strong> Article <span><img src="images/11.jpg" width="38" height="9"  style="cursor:pointer;"  onclick="fnClick('Article.aspx');"/></span></h4>
   <div class="indexImg"><img src="images/pic_article.jpg" alt="" title="网站动态" /></div>
     
     <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
     <HeaderTemplate> <ul></HeaderTemplate>
     <ItemTemplate>
<li><span>[<%# Eval("CreateDate", "{0:yyyy-MM-dd}")%>]</span><a href='ArticleShow.aspx?Id<%# Eval("Id") %>' title='<%# Eval("Title") %>' target="_blank"><%# Helper.CommonFunction.CutString( Eval("Title"),11) %></a>
             </li>     
   
     </ItemTemplate>
     <FooterTemplate>
     </ul>
     </FooterTemplate>
     </asp:Repeater>
     
   </div>
     
     <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
         SelectMethod="Articleliste" TypeName="BLL.BLLArticle">
         <SelectParameters>
             <asp:Parameter DefaultValue="6" Name="top" Type="Int32" />
         </SelectParameters>
     </asp:ObjectDataSource>
     
   