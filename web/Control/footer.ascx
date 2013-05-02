<%@ Control Language="C#" AutoEventWireup="true" CodeFile="footer.ascx.cs" Inherits="Control_footer" %>
<div id="footer"> 
   <h4 ><strong>合作伙伴</strong> Partners <span><img src="images/11.jpg" width="38" height="9" /></span></h4>
   <ul> <li>
       <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
       <ItemTemplate>   
          <a href='<%# Eval("Connect") %>' title=<%# Eval("Present") %>'' target="_blank"><%# Eval("ConnectTitle") %></a><em></em>             
       </ItemTemplate>
       </asp:Repeater>
       <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
           SelectMethod="Designlist" TypeName="BLL.BLLFooter">
           <SelectParameters>
               <asp:Parameter DefaultValue="13" Name="top" Type="Int32" />
           </SelectParameters>
       </asp:ObjectDataSource>
       </li>
     </ul>
   </div>