<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Newsbig.ascx.cs" Inherits="Control_Newsbig" %>
<div class="subLeft">
        <ul class="title">
            <li><strong>新闻动态</strong></li>
          </ul>
           <ul class="list">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
    <ItemTemplate>           
            <li class="link"><span><%# Eval("CreateDate") %></span><a title='<%# Eval("Title") %>' href="NewsCount.aspx?Id=<%# Eval("Id") %>"><%# Helper.CommonFunction.CutString(Eval("Title"),6)%></a></li>          
    </ItemTemplate>
    </asp:Repeater>
               
    </ul>
          <ul class="bottom">
            <li></li>
          </ul>
          </div>
 <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                   SelectMethod="Newslits" TypeName="BLL.BLLNews">
                   <SelectParameters>
                       <asp:Parameter DefaultValue="6" Name="top" Type="Int32" />
                   </SelectParameters>
               </asp:ObjectDataSource>