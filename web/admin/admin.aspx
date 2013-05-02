<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin_admin" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #usename
        {
            text-align: center;
            margin-top: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   
   
   
    <div id="usename">
   <ul><li>  用户名：<asp:LoginName ID="LoginName2" runat="server" />
        
        

    <asp:LoginStatus ID="LoginStatus1" runat="server" ForeColor="Red" 
        LogoutAction="Redirect" LogoutPageUrl="~/Manager.aspx" /> 　　　
        </li><li></li><li>密码：１２３</li></ul>
      
         </div>
   
</asp:Content>

