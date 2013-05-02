<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Article.aspx.cs" Inherits="Article" Title="作品" %>

<%@ Register src="Control/ArticleList.ascx" tagname="ArticleList" tagprefix="uc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <uc1:ArticleList ID="ArticleList1" runat="server" />
    
</asp:Content>

