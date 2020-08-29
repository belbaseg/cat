<%@ Page Language="VB" MasterPageFile="Site.master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .label-element.state-editing,.preview-mode .rich-text-content,.rich-text-content.editing-mode{cursor:text}.common-rich-content-style{white-space:pre-line;word-wrap:break-word}*{-webkit-tap-highlight-color:rgba(255,255,255,0)}
        .auto-style25 {
            text-indent: -14.2pt;
            line-height: 115%;
            font-size: 11.0pt;
            font-family: Calibri, sans-serif;
            margin-left: 36.0pt;
            margin-right: 0cm;
            margin-top: 0cm;
            margin-bottom: 10.0pt;
        }
        .auto-style26 {
            text-indent: -27.0pt;
            line-height: 115%;
            font-size: 11.0pt;
            font-family: Calibri, sans-serif;
            margin-left: 36.0pt;
            margin-right: 0cm;
            margin-top: 0cm;
            margin-bottom: 10.0pt;
        }
        </style>
  
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
     
 <div style="text-align: left; width: 710px; background: #ffffff; margin-left: 206px;">  <br>Coming soon</div>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data\my_products.mdb" DeleteCommand="DELETE FROM `Menu1` WHERE `id` = ?" InsertCommand="INSERT INTO `Menu1` (`id`, `name`, `seq`, `pmenuitemid`, `url`, `contentid`, `openin`, `productmatch`) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT `id`, `name`, `seq`, `pmenuitemid`, `url`, `contentid`, `openin`, `productmatch` FROM `Menu1`" UpdateCommand="UPDATE `Menu1` SET `name` = ?, `seq` = ?, `pmenuitemid` = ?, `url` = ?, `contentid` = ?, `openin` = ?, `productmatch` = ? WHERE `id` = ?">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="seq" Type="Int32" />
            <asp:Parameter Name="pmenuitemid" Type="Int32" />
            <asp:Parameter Name="url" Type="String" />
            <asp:Parameter Name="contentid" Type="Int32" />
            <asp:Parameter Name="openin" Type="String" />
            <asp:Parameter Name="productmatch" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="seq" Type="Int32" />
            <asp:Parameter Name="pmenuitemid" Type="Int32" />
            <asp:Parameter Name="url" Type="String" />
            <asp:Parameter Name="contentid" Type="Int32" />
            <asp:Parameter Name="openin" Type="String" />
            <asp:Parameter Name="productmatch" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
</asp:AccessDataSource>

    </asp:Content>


