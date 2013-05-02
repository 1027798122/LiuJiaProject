<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ArticleShow.aspx.cs" Inherits="ArticleShow" Title="作品" %>

<%@ Register src="Control/AriticleContent.ascx" tagname="AriticleContent" tagprefix="uc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <uc1:AriticleContent ID="AriticleContent1" runat="server" />
</asp:Content>

