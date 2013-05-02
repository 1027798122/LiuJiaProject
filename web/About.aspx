<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="about" Title="无标题页" %>

<%@ Register src="Control/about.ascx" tagname="about" tagprefix="uc1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <uc1:about ID="about1" runat="server" />
</asp:Content>

