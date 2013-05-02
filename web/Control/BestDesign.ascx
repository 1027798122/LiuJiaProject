<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BestDesign.ascx.cs" Inherits="Control_BestDesign" %>
<div class="indexcount">
  <ul>
  <li> 
  
  
    
    
    
      <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
      <ItemTemplate>
      <ul id="best">    
   <li><a href='DesignShow.aspx?Id=<%# Eval("Id") %>' title='<%# Eval("WroksName") %>' target="_blank"><img src='<%# Eval("ImgUrl") %>' alt=""  title='<%# Eval("WroksName") %>' />  </a>
   </li>  
  <li class="webName"><a href='DesignShow.aspx?Id=<%# Eval("Id") %>' title='<%# Eval("WroksName") %>' target="_blank"><%# Eval("WroksName") %></a><span><%# Eval("Number") %>次</span></li>
   <li class="webIntr"><%# Helper.CommonFunction.CutString(Eval("Appraisal"),37) %></li>
  </ul>
      
      </ItemTemplate>
      </asp:Repeater>
  
  
   
    
    
  </li>
  
  </ul>
  
  </div>
  
  
   
    
    
      <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
          SelectMethod="Designlist" TypeName="BLL.BLLDesign">
          <SelectParameters>
              <asp:Parameter DefaultValue="4" Name="top" Type="Int32" />
          </SelectParameters>
      </asp:ObjectDataSource>
  
  
    
    
    
  