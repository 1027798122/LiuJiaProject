<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="upnews.aspx.cs" Inherits="admin_upnews" Title="无标题页" ValidateRequest="false"%>
<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
  <div id="News">
      
      
 </div>
  
    <asp:FormView ID="FormView1" runat="server" 
      DataSourceID="ObjectDataSource1" DefaultMode="Edit" Height="100%" 
      HorizontalAlign="Left" Width="100%" 
      onitemupdating="FormView1_ItemUpdating">
        <EditItemTemplate>
            编号:<asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label><br />  
            题目:<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>' ></asp:TextBox><br />
            <FTB:FreeTextBox ID="FreeTextBox1" runat="server" AllowHtmlMode="False" 
                AssemblyResourceHandlerPath="" AutoConfigure="" 
                AutoGenerateToolbarsFromString="True" AutoHideToolbar="True" 
                AutoParseStyles="True" BackColor="158, 190, 245" BaseUrl="" 
                BreakMode="Paragraph" ButtonDownImage="False" ButtonFileExtention="gif" 
                ButtonFolder="Images" ButtonHeight="20" ButtonImagesLocation="InternalResource" 
                ButtonOverImage="False" ButtonPath="" ButtonSet="OfficeXP" ButtonWidth="21" 
                ClientSideTextChanged="" ConvertHtmlSymbolsToHtmlCodes="False" 
                DesignModeBodyTagCssClass="" DesignModeCss="" DisableIEBackButton="False" 
                DownLevelCols="50" DownLevelMessage="" DownLevelMode="TextArea" 
                DownLevelRows="10" EditorBorderColorDark="Gray" 
                EditorBorderColorLight="Gray" EnableHtmlMode="True" EnableSsl="False" 
                EnableToolbars="True" Focus="False" FormatHtmlTagsToXhtml="True" 
                GutterBackColor="129, 169, 226" GutterBorderColorDark="Gray" 
                GutterBorderColorLight="White" Height="100%" HelperFilesParameters="" 
                HelperFilesPath="" HtmlModeCss="" HtmlModeDefaultsToMonoSpaceFont="True" 
                ImageGalleryPath="~/images/" 
                ImageGalleryUrl="ftb.imagegallery.aspx?rif={0}&amp;cif={0}" 
                InstallationErrorMessage="InlineMessage" JavaScriptLocation="InternalResource" 
                Language="en-US" PasteMode="Default" ReadOnly="False" 
                RemoveScriptNameFromBookmarks="True" RemoveServerNameFromUrls="True" 
                RenderMode="NotSet" ScriptMode="External" ShowTagPath="False" SslUrl="/." 
                StartMode="DesignMode" StripAllScripting="False" 
                SupportFolder="/aspnet_client/FreeTextBox/" TabIndex="-1" 
                TabMode="InsertSpaces" Text='<%# Bind("Content") %>' 
                TextDirection="LeftToRight" ToolbarBackColor="Transparent" 
                ToolbarBackgroundImage="True" ToolbarImagesLocation="InternalResource" 
                ToolbarLayout="ParagraphMenu,FontFacesMenu,FontSizesMenu,FontForeColorsMenu|Bold,Italic,Underline,Strikethrough;Superscript,Subscript,RemoveFormat|JustifyLeft,JustifyRight,JustifyCenter,JustifyFull;BulletedList,NumberedList,Indent,Outdent;CreateLink,Unlink,InsertImage,InsertRule|Cut,Copy,Paste;Undo,Redo,Print" 
                ToolbarStyleConfiguration="OfficeXP" UpdateToolbar="True" 
                UseToolbarBackGroundImage="True" Width="100%">
            </FTB:FreeTextBox>
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/update.jpg" CommandName="Update"  />
            
        </EditItemTemplate>
  </asp:FormView>
  <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
      SelectMethod="Newsing" TypeName="BLL.BLLNews" UpdateMethod="UpdateNews">
      <UpdateParameters>
          <asp:Parameter Name="Id" Type="Int32" />
          <asp:Parameter Name="Title" Type="String" />
          <asp:Parameter Name="Content" Type="String" />
      </UpdateParameters>
      <SelectParameters>
          <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
      </SelectParameters>
  </asp:ObjectDataSource>
  
   
</asp:Content>

