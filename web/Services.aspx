<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" Title="作品" %>

<%@ Register src="Control/Articlebig.ascx" tagname="Articlebig" tagprefix="uc1" %>
<%@ Register src="Control/Messagebig.ascx" tagname="Messagebig" tagprefix="uc2" %>

<%@ Register src="Control/Newsbig.ascx" tagname="Newsbig" tagprefix="uc3" %>

<%@ Register src="Control/Services.ascx" tagname="Services" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Articlebig ID="Articlebig1" runat="server" />
      <uc3:Newsbig ID="Newsbig1" runat="server" />
    <uc2:Messagebig ID="Messagebig1" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
  
    
    <uc4:Services ID="Services1" runat="server" />
    
  
    
</asp:Content>

