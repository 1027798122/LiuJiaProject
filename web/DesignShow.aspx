<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DesignShow.aspx.cs" Inherits="DesignShow" Title="作品" %>

<%@ Register src="Control/DesignShow.ascx" tagname="DesignShow" tagprefix="uc1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <uc1:DesignShow ID="DesignShow1" runat="server" />
</asp:Content>

