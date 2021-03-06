﻿<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="ArticleUpdate.aspx.cs" Inherits="admin_ArticleUpdate" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
   
  <div id="News">
      
      
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
          DataSourceID="ObjectDataSource1" Height="240px" Width="681px" 
          AllowPaging="True" AllowSorting="True" CellPadding="3" 
          ForeColor="Black" GridLines="Vertical" BorderColor="#999999" 
          BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" 
          BackColor="White" DataKeyNames="Id" 
          >
          <RowStyle Font-Size="12px" />
          <Columns>
              <asp:BoundField DataField="Id" HeaderText="编号" />
              <asp:BoundField DataField="Title" HeaderText="题目" />
              <asp:BoundField DataField="Author" HeaderText="作者" />
              <asp:BoundField DataField="Weather" HeaderText="天气" />
              <asp:BoundField DataField="Number" HeaderText="点击量" SortExpression="Number" />
              <asp:BoundField DataField="CreateDate" HeaderText="创建时间" 
                  SortExpression="CreateDate" />
              <asp:TemplateField HeaderText="编缉" ShowHeader="False">
                  <ItemTemplate>
                      <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" 
                         PostBackUrl='<%# Eval("Id","~/admin/upArticle.aspx?Id={0}") %>'　 
                          ImageUrl="~/images/update.gif" Text="编辑" />
                  </ItemTemplate>
              </asp:TemplateField>
          </Columns>
          <FooterStyle BackColor="#CCCCCC" />
          <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" 
              BorderColor="#F3F3F3" BorderStyle="Inset" BorderWidth="1px" />
          <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#C5DBF2" Font-Size="12px" Font-Bold="True" 
              ForeColor="White" />
          <AlternatingRowStyle BackColor="#F3F3F3" BorderColor="#C5DBF3" 
              BorderStyle="Inset" BorderWidth="1px" />
      </asp:GridView>
      <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
          SelectMethod="Articleliste" TypeName="BLL.BLLArticle" 
          DeleteMethod="Articledelete">
          <DeleteParameters>
              <asp:Parameter Name="Id" Type="Int32" />
          </DeleteParameters>
          <SelectParameters>
              <asp:Parameter DefaultValue="0" Name="top" Type="Int32" />
          </SelectParameters>
      </asp:ObjectDataSource>
      
      
 </div>
  
  
    
  
  
   
  
</asp:Content>

