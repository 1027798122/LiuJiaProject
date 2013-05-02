<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="GuestbookReply.aspx.cs" Inherits="admin_GuestbookReply" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
  <div id="News">
      
      
 </div>
  
    <asp:FormView ID="FormView1" runat="server" 
      DataSourceID="ObjectDataSource1" DefaultMode="Edit" Height="100%" 
      HorizontalAlign="Left" Width="100%" 
      onitemupdating="FormView1_ItemUpdating">
        <EditItemTemplate>
            编号:<asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'>
           </asp:Label>
            <br />
           名称：<asp:Label ID="Label2" runat="server" Text='<%# Eval("WordsName") %>'></asp:Label><br />
           留言题目：<asp:Label ID="Label3" runat="server" Text='<%# Eval("WordsTitle") %>'></asp:Label>  <br />  
            留言内容：<asp:Label ID="Label4" runat="server" Text='<%# Eval("WordsContent") %>'></asp:Label><br />
            管理员名称：<asp:Label ID="Label5" runat="server" Text='<%# Bind("ReplyName") %>'></asp:Label> <br />
            内容：<asp:TextBox ID="TextBox2" runat="server" Height="73px" 
                Text='<%# Bind("ReplyContent") %>' TextMode="MultiLine" Width="247px"></asp:TextBox>
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/update.jpg" CommandName="Update"  />
            
        </EditItemTemplate>
  </asp:FormView>
  <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
      SelectMethod="GuestbooklistSing" TypeName="BLL.BLLGuestbook" 
      UpdateMethod="GuestbookUpdate">
      <UpdateParameters>
          <asp:Parameter Name="Id" Type="Int32" />
          <asp:Parameter Name="ReplyName" Type="String" />
          <asp:Parameter Name="ReplyContent" Type="String" />
      </UpdateParameters>
      <SelectParameters>
          <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
      </SelectParameters>
  </asp:ObjectDataSource>
  
   
</asp:Content>

