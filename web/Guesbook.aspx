<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Guesbook.aspx.cs" Inherits="Guesbook" Title="无标题页" %>

<%@ Register src="Control/Guesbook.ascx" tagname="Guesbook" tagprefix="uc1" %>

<%@ Register src="Control/leveMessage.ascx" tagname="leveMessage" tagprefix="uc2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
      <uc1:Guesbook ID="Guesbook1" runat="server" />
    
   <uc2:leveMessage ID="leveMessage1" runat="server"/>

</asp:Content>

