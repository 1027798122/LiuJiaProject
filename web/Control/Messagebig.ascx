<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Messagebig.ascx.cs" Inherits="Control_Messagebig" %>
<div class="subLeft">
    <ul class="title">
            <li><strong>最新留言</strong></li>
          </ul>
       <ul class="list">           
           <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
           <ItemTemplate>
           <li class="link"><span><%# Eval("CreateDate") %></span><a title='<%# Eval("WordsName") %>' href="#"><%# Helper.CommonFunction.CutString( Eval("WordsContent"),10) %></a></li>
            
           </ItemTemplate>
           </asp:Repeater>
            
           <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
               SelectMethod="Gestbookliste" TypeName="BLL.BLLGuestbook">
               <SelectParameters>
                   <asp:Parameter DefaultValue="6" Name="top" Type="Int32" />
               </SelectParameters>
           </asp:ObjectDataSource>
            
          </ul>
          <ul class="bottom">
            <li></li>
          </ul>
          </div>