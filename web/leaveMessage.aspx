<%@ Page Language="C#" AutoEventWireup="true" CodeFile="leaveMessage.aspx.cs" Inherits="leaveMessage" %>

<%@ Register src="Control/leveMessage.ascx" tagname="leveMessage" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>签写留言</title>

</head>

<body>
   
    
    
    <form id="form1" runat="server">
    <uc1:leveMessage ID="leveMessage1" runat="server" />
    </form>
   
    
    
 </body>
</html>
