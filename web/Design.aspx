<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Design.aspx.cs" Inherits="Design" Title="作品" %>

<%@ Register src="Control/Designlist.ascx" tagname="Designlist" tagprefix="uc1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <uc1:Designlist ID="Designlist1" runat="server" />
</asp:Content>

