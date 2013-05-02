<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Message.ascx.cs" Inherits="Control_Message" %>
<div id="countindex">
   <h4 ><strong>访客留言</strong> Message<span><img src="images/11.jpg" id="click"
           width="38" height="9" /></span></h4>
   <div class="indexImg"><img src="images/pic_message.jpg"alt="" title="网站动态" /></div>
    <ul>
     <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
  
     <ItemTemplate>
<li>[<%# Eval("WordsName")%>]留言说：<a href="#"_blank"><%# Helper.CommonFunction.CutString( Eval("wordsContent"),11) %></a>
                 
   </li>
     </ItemTemplate>
    
     </asp:Repeater>
   </div>
</ul>
   <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="Gestbookliste" TypeName="BLL.BLLGuestbook">
        <SelectParameters>
            <asp:Parameter DefaultValue="6" Name="top" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>