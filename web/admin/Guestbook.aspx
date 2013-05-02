<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Guestbook.aspx.cs" Inherits="admin_Guestbook" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
   
  <div id="News">
      
      
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
          DataSourceID="ObjectDataSource1"  Width="678px" 
          AllowPaging="True" AllowSorting="True" CellPadding="3" 
          ForeColor="Black" GridLines="Vertical" BorderColor="#999999" 
          BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" 
          BackColor="White" DataKeyNames="Id" PageSize="3" Height="335px" onrowdeleting="GridView1_RowDeleting" 
          >
          <RowStyle Font-Size="12px" />
          <Columns>
              <asp:TemplateField HeaderText="图片">
                  <ItemTemplate>
                      <asp:Image ID="Image1" runat="server" Height="94px" 
                          ImageUrl='<%# Eval("ImgUrl","~/{0}") %>' Width="78px" />
                  </ItemTemplate>
                 
              </asp:TemplateField>
              <asp:BoundField DataField="Id" HeaderText="编号" Visible="False" />
              <asp:BoundField DataField="WordsName" HeaderText="名称" />
              <asp:BoundField DataField="WordsTitle" HeaderText="留言名称" />
              <asp:BoundField DataField="WordsContent" HeaderText="留言内容" />
              <asp:BoundField DataField="CreateDate" HeaderText="创建时间" 
                  SortExpression="CreateDate" />
              <asp:TemplateField HeaderText="联系" SortExpression="Number">
                  <ItemTemplate>
<img title='<%# Eval("QQ") %>' alt="" src="../images/dyb_qq_inc.gif"><img title='<%# Eval("Email") %>' alt="" src="../images/dyb_mail_inc.gif"><img title='<%# Eval("http") %>' alt="" src="../images/dyb_home_inc.gif"><img title='<%# Eval("UserIp") %>' alt="" src="../images/dyb_ip_inc.gif" />
                  </ItemTemplate>
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  </EditItemTemplate>
              </asp:TemplateField>
              <asp:BoundField DataField="ReplyContent" HeaderText="回复" />
              <asp:BoundField DataField="ReplyDate" HeaderText="回复时间" />
              <asp:CommandField ShowDeleteButton="True" ButtonType="Image" 
                  DeleteImageUrl="~/images/delete.gif" HeaderText="删除" />
              <asp:TemplateField HeaderText="回复" ShowHeader="False">
                  <ItemTemplate>
                      <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/reply.jpg" 
                          PostBackUrl='<%# Eval("Id","GuestbookReply.aspx?Id={0}") %>' />
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
          SelectMethod="Gestbookliste" TypeName="BLL.BLLGuestbook" 
          DeleteMethod="Guestbookdelete">
          <DeleteParameters>
              <asp:Parameter Name="Id" Type="Int32" />
          </DeleteParameters>
          <SelectParameters>
              <asp:Parameter DefaultValue="0" Name="top" Type="Int32" />
          </SelectParameters>
      </asp:ObjectDataSource>
      
      
 </div>
  
  
    
  
  
  
</asp:Content>

