<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Manager" Title="无标题页" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="indexTable">
          <ul class="indexTitle"> <li><strong>管理员登录</strong></li></ul>
          
          <ul class="indexCont">
          <li>
          <div id="contWord" align="center">
             <ul>
<li>用户名：<asp:TextBox ID="UseName" runat="server" 
        ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="UseName" ErrorMessage="*"></asp:RequiredFieldValidator>
                 </li>
<li></li>
<li>密　码：<asp:TextBox ID="pwd" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="pwd" ErrorMessage="*"></asp:RequiredFieldValidator>
                 </li>
<li></li>
<li>
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/images/Role.gif" onclick="ImageButton1_Click" />
    </li>
    <li>用户名：51aspx 密码：51aspx</li>
</ul>
            </div>
          </li>
          </ul>
          <ul class="indexBot">
          <li>   </li></ul>
          </div>
<div id="user">

</div>
</asp:Content>

