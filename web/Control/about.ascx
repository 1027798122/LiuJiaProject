<%@ Control Language="C#" AutoEventWireup="true" CodeFile="about.ascx.cs" Inherits="Control_about" %>
<div class="indexTable">
          <ul class="indexTitle"> <li><strong> 关于本站</strong></li></ul>
          
          <ul class="indexCont">
          <li>
          <div id="contWord">
              <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
              <ItemTemplate>
              <%# Eval("About") %>
              </ItemTemplate>
              </asp:Repeater>
                  
              <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                  SelectMethod="AboutlistSing" TypeName="BLL.BLLAbout">
                  <SelectParameters>
                      <asp:Parameter DefaultValue="1" Name="Id" Type="Int32" />
                  </SelectParameters>
              </asp:ObjectDataSource>
                  
            </div>
          </li>
          </ul>
          <ul class="indexBot">
          <li>   </li></ul>
          </div>