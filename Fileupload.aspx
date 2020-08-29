<%@ Page Title="Nepali.Team" Language="VB" MasterPageFile="Default.master" AutoEventWireup="false" CodeFile="Fileupload.aspx.vb" Inherits="Fileupload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

   <br />
   <br />

   <id="formFileUpload" method="post"  enctype="Multipart/Form-Data" >
   <hr style="height: -15px; width: 364px" />
   <br />
   <i>
   Select File  To Upload : <br />
   </i>
   <input id="FileField" type="File" runat="server" size="60" /><br />
   <br />
   <asp:Button ID="UploadButton" runat="server" 
            Text="Submit the file" style="background-color: #FF9933" /><br />      
       <asp:CustomValidator ID="CustomValidator1" runat="server" 
       ControlToValidate="FileField" ErrorMessage="File not valid to upload." 
       ValidateEmptyText="True"></asp:CustomValidator>
       <br />
    <div id="UploadDetails" visible="false" runat="server" class="">
        File Name: <span id="FileName" runat="server"/> <br />
        File Content: <span id="FileContent" runat="server"/><br />
        File Size: <span id="FileSize" runat="server"/>bytes<br />
        <hr />
        <span id="FileName0" runat="server"/> <span id="FileContent0" runat="server"/> <span id="FileSize0" runat="server"/>फाइल प्राप्त भयो, धन्यवाद</span></span></span></p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
</div>
        </span></span></span>
</asp:Content>
