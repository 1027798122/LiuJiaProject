<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="DesignUpdate.aspx.cs" Inherits="admin_DesignUpdate" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
  <div id="News">
      
      
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
          DataSourceID="ObjectDataSource1"  Width="678px" 
          AllowPaging="True" AllowSorting="True" CellPadding="3" 
          ForeColor="Black" GridLines="Vertical" BorderColor="#999999" 
          BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" 
          BackColor="White" DataKeyNames="Id" PageSize="3" Height="335px" 
          >
          <RowStyle Font-Size="12px" />
          <Columns>
              <asp:TemplateField HeaderText="图片">
                  <ItemTemplate>
                      <asp:Image ID="Image1" runat="server" Height="94px" 
                          ImageUrl='<%# Eval("ImgUrl","~/{0}") %>' Width="78px" />
                  </ItemTemplate>
                 
              </asp:TemplateField>
              <asp:BoundField DataField="Id" HeaderText="编号" />
              <asp:BoundField DataField="WroksName" HeaderText="题目" />
              <asp:BoundField DataField="Number" HeaderText="点击量" SortExpression="Number" />
              <asp:BoundField DataField="CreateDate" HeaderText="创建时间" 
                  SortExpression="CreateDate" />
              <asp:TemplateField HeaderText="编辑" ShowHeader="False">
                  <ItemTemplate>
                      <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" 
                          CommandName="Select" ImageUrl="~/images/update.gif" 
                          PostBackUrl='<%# Eval("Id","~/admin/upDesign.aspx?Id={0}") %>' Text="删除" />
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
          SelectMethod="Designlist" TypeName="BLL.BLLDesign" 
          DeleteMethod="DesignDelete">
          <DeleteParameters>
              <asp:Parameter Name="Id" Type="Int32" />
          </DeleteParameters>
          <SelectParameters>
              <asp:Parameter DefaultValue="0" Name="top" Type="Int32" />
          </SelectParameters>
      </asp:ObjectDataSource>
      
      
 </div>
  
  
    
  
  
   
</asp:Content>

