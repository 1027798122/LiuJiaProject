<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="img.aspx.cs" Inherits="img" Title="无标题页" %>

<%@ Register assembly="Jiaen.Controls" namespace="TW.Web.UI" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
    <br />
    <cc1:ImageUploader ID="ImageUploader1" runat="server" AllowMulti="False" 
                onuploaded="ImageUploader1_Uploaded" PicSavePath="~/images/img/" 
                PicThumbSavePath="~/images/product/Thumb/" PreviewProsition="Right" 
                ThumbMaxHeight="40" ThumbMaxWidth="20" WatermarkPosition="TopLeft" WatermarkTextColor="Pink" 
                WatermarkType="Text" MaxSize="200" />
    <asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click" />
    <br />
            
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:TemplateField HeaderText="img" SortExpression="img">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="113px" 
                        ImageUrl='<%# Eval("img") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("img") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT [img] FROM [img]"></asp:SqlDataSource>
</asp:Content>

