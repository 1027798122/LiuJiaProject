<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Services.ascx.cs" Inherits="Control_Services" %>
<div class="indexTable">
          <ul class="indexTitle"> <li><strong> 服务范围</strong></li></ul>
          
          <ul class="indexCont">
          <li>
          <div id="contWord">
               
              <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
              <ItemTemplate>
              <%# Eval("Services") %>
              </ItemTemplate>
              </asp:Repeater>
              <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                  SelectMethod="ServiceslistSing" TypeName="BLL.BLLServices">
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