<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="upDesign.aspx.cs" Inherits="admin_upDesign" Title="无标题页"  ValidateRequest="false"%>
<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>
<%@ Register assembly="Jiaen.Controls" namespace="TW.Web.UI" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <div id="Design">
      
      

  
    <asp:FormView ID="FormView1" runat="server" 
      DataSourceID="ObjectDataSource1" DefaultMode="Edit" Height="100%" 
      HorizontalAlign="Left" Width="100%" DataKeyNames="Id" 
          onitemupdating="FormView1_ItemUpdating">
        <EditItemTemplate>
            编号:<asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
            <br />  
            题目:<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("WroksName") %>' ></asp:TextBox>
            语言:<asp:TextBox ID="TextBox2" runat="server" Height="19px" Width="74px" 
                Text='<%# Bind("Language") %>'></asp:TextBox>布局:<asp:TextBox 
                ID="TextBox3" runat="server" Height="20px" Width="70px" 
                Text='<%# Bind("Htmal") %>'></asp:TextBox>
            <br />
            图片：  
             
            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ImgUrl") %>' 
                Enabled="False"></asp:TextBox>
            <cc1:ImageUploader ID="ImageUploader1" runat="server" AllowMulti="False" 
                onuploaded="ImageUploader1_Uploaded" PicSavePath="~/images/product/" 
                PicThumbSavePath="~/images/product/Thumb/" PreviewProsition="Right" 
                ThumbMaxHeight="40" ThumbMaxWidth="20" WatermarkPosition="TopLeft" 
                WatermarkText="www.cwtzmm.com" WatermarkTextColor="Pink" 
                WatermarkType="Text" MaxSize="200" />
            <br />
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
                TabMode="InsertSpaces" Text='<%# Bind("Appraisal") %>' 
                TextDirection="LeftToRight" ToolbarBackColor="Transparent" 
                ToolbarBackgroundImage="True" ToolbarImagesLocation="InternalResource" 
                ToolbarLayout="ParagraphMenu,FontFacesMenu,FontSizesMenu,FontForeColorsMenu|Bold,Italic,Underline,Strikethrough;Superscript,Subscript,RemoveFormat|JustifyLeft,JustifyRight,JustifyCenter,JustifyFull;BulletedList,NumberedList,Indent,Outdent;CreateLink,Unlink,InsertImage,InsertRule|Cut,Copy,Paste;Undo,Redo,Print" 
                ToolbarStyleConfiguration="OfficeXP" UpdateToolbar="True" 
                UseToolbarBackGroundImage="True" Width="100%">
            </FTB:FreeTextBox>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/update.jpg" CommandName="Update"  />
            
        </EditItemTemplate>
  </asp:FormView>
  <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
      SelectMethod="Designsing" TypeName="BLL.BLLDesign" 
      UpdateMethod="DesignUpdate">
      <UpdateParameters>
          <asp:Parameter Name="Id" Type="Int32" />
          <asp:Parameter Name="WroksName" Type="String" />
          <asp:Parameter Name="ImgUrl" Type="String" />
          <asp:Parameter Name="Appraisal" Type="String" />
          <asp:Parameter Name="Language" Type="String" />
          <asp:Parameter Name="Htmal" Type="String" />
      </UpdateParameters>
      <SelectParameters>
          <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
      </SelectParameters>
  </asp:ObjectDataSource>
   </div>
    
</asp:Content>

