<%@ Control Language="C#" AutoEventWireup="true" CodeFile="bam.ascx.cs" Inherits="Control_bam" %>
<%@ Register src="News.ascx" tagname="News" tagprefix="uc1" %>
<%@ Register src="Article.ascx" tagname="Article" tagprefix="uc2" %>
<%@ Register src="Message.ascx" tagname="Message" tagprefix="uc3" %>
<div id="bam">

    <uc3:Message ID="Message2" runat="server" />
    <uc1:News ID="News1" runat="server" />

    <uc2:Article ID="Article1" runat="server" />
    

</div>




