<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Articlebig.ascx.cs" Inherits="Control_Articlebig" %>
<div class="subLeft">
        <ul class="title">
            <li><strong>最新日志</strong></li>
          </ul>
           <ul class="list">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
    <ItemTemplate>           
            <li class="link"><span><%# Eval("CreateDate") %></span><a title='<%# Eval("Title") %>' href='ArticleShow.aspx?Id=<%# Eval("Id") %>'><%# Helper.CommonFunction.CutString(Eval("Title"),6)%></a></li>          
    </ItemTemplate>
    </asp:Repeater>
               <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                   SelectMethod="Articleliste" TypeName="BLL.BLLArticle">
                   <SelectParameters>
                       <asp:Parameter DefaultValue="6" Name="top" Type="Int32" />
                   </SelectParameters>
               </asp:ObjectDataSource>
    </ul>
          <ul class="bottom">
            <li></li>
          </ul>
          </div>