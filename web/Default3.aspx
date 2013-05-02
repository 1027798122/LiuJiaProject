<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Image ID="Image1" runat="server" />
            </ContentTemplate>
            <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="DropDownList1"  EventName="TextChanged" />
            </Triggers>
        </asp:UpdatePanel>
      
      
    </div>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="Icolits" TypeName="BLL.BLLIco">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="0" Name="top" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="ObjectDataSource1" DataTextField="Ico" 
                    DataValueField="ImgUrl" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        ontextchanged="DropDownList1_TextChanged">
                </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
