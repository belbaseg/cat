<%@ Page Title="" Language="VB" MasterPageFile="Site.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>


        <table class="auto-style11">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data\my_products.mdb" DeleteCommand="DELETE FROM `news` WHERE `newsid` = ?" InsertCommand="INSERT INTO `news` (`newsid`, `messagetype`, `headline`, `newsimage`, `hide`, `template`, `newslanguage`, `other1`, `other2`, `other3`, `loggedin`, `impressions`, `cdateadded`, `cdateupdated`, `fullname`, `contactid`, `contentgroups`, `excontentgroups`, `showonbox`, `cNewsStartDate`, `cNewsEndDate`, `showonhomepage`, `archive`, `metatitle`, `smFrequency`, `smPriority`, `gsmincluded`, `metakeywords`, `metadescription`, `message`, `userid`, `productmatch`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT `newsid`, `messagetype`, `headline`, `newsimage`, `hide`, `template`, `newslanguage`, `other1`, `other2`, `other3`, `loggedin`, `impressions`, `cdateadded`, `cdateupdated`, `fullname`, `contactid`, `contentgroups`, `excontentgroups`, `showonbox`, `cNewsStartDate`, `cNewsEndDate`, `showonhomepage`, `archive`, `metatitle`, `smFrequency`, `smPriority`, `gsmincluded`, `metakeywords`, `metadescription`, `message`, `userid`, `productmatch` FROM `news`" UpdateCommand="UPDATE `news` SET `messagetype` = ?, `headline` = ?, `newsimage` = ?, `hide` = ?, `template` = ?, `newslanguage` = ?, `other1` = ?, `other2` = ?, `other3` = ?, `loggedin` = ?, `impressions` = ?, `cdateadded` = ?, `cdateupdated` = ?, `fullname` = ?, `contactid` = ?, `contentgroups` = ?, `excontentgroups` = ?, `showonbox` = ?, `cNewsStartDate` = ?, `cNewsEndDate` = ?, `showonhomepage` = ?, `archive` = ?, `metatitle` = ?, `smFrequency` = ?, `smPriority` = ?, `gsmincluded` = ?, `metakeywords` = ?, `metadescription` = ?, `message` = ?, `userid` = ?, `productmatch` = ? WHERE `newsid` = ?">
                        <DeleteParameters>
                            <asp:Parameter Name="newsid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="newsid" Type="Int32" />
                            <asp:Parameter Name="messagetype" Type="String" />
                            <asp:Parameter Name="headline" Type="String" />
                            <asp:Parameter Name="newsimage" Type="String" />
                            <asp:Parameter Name="hide" Type="Boolean" />
                            <asp:Parameter Name="template" Type="String" />
                            <asp:Parameter Name="newslanguage" Type="String" />
                            <asp:Parameter Name="other1" Type="String" />
                            <asp:Parameter Name="other2" Type="String" />
                            <asp:Parameter Name="other3" Type="String" />
                            <asp:Parameter Name="loggedin" Type="Boolean" />
                            <asp:Parameter Name="impressions" Type="Int32" />
                            <asp:Parameter Name="cdateadded" Type="DateTime" />
                            <asp:Parameter Name="cdateupdated" Type="DateTime" />
                            <asp:Parameter Name="fullname" Type="String" />
                            <asp:Parameter Name="contactid" Type="String" />
                            <asp:Parameter Name="contentgroups" Type="String" />
                            <asp:Parameter Name="excontentgroups" Type="String" />
                            <asp:Parameter Name="showonbox" Type="Boolean" />
                            <asp:Parameter Name="cNewsStartDate" Type="DateTime" />
                            <asp:Parameter Name="cNewsEndDate" Type="DateTime" />
                            <asp:Parameter Name="showonhomepage" Type="Boolean" />
                            <asp:Parameter Name="archive" Type="Boolean" />
                            <asp:Parameter Name="metatitle" Type="String" />
                            <asp:Parameter Name="smFrequency" Type="String" />
                            <asp:Parameter Name="smPriority" Type="String" />
                            <asp:Parameter Name="gsmincluded" Type="String" />
                            <asp:Parameter Name="metakeywords" Type="String" />
                            <asp:Parameter Name="metadescription" Type="String" />
                            <asp:Parameter Name="message" Type="String" />
                            <asp:Parameter Name="userid" Type="String" />
                            <asp:Parameter Name="productmatch" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="messagetype" Type="String" />
                            <asp:Parameter Name="headline" Type="String" />
                            <asp:Parameter Name="newsimage" Type="String" />
                            <asp:Parameter Name="hide" Type="Boolean" />
                            <asp:Parameter Name="template" Type="String" />
                            <asp:Parameter Name="newslanguage" Type="String" />
                            <asp:Parameter Name="other1" Type="String" />
                            <asp:Parameter Name="other2" Type="String" />
                            <asp:Parameter Name="other3" Type="String" />
                            <asp:Parameter Name="loggedin" Type="Boolean" />
                            <asp:Parameter Name="impressions" Type="Int32" />
                            <asp:Parameter Name="cdateadded" Type="DateTime" />
                            <asp:Parameter Name="cdateupdated" Type="DateTime" />
                            <asp:Parameter Name="fullname" Type="String" />
                            <asp:Parameter Name="contactid" Type="String" />
                            <asp:Parameter Name="contentgroups" Type="String" />
                            <asp:Parameter Name="excontentgroups" Type="String" />
                            <asp:Parameter Name="showonbox" Type="Boolean" />
                            <asp:Parameter Name="cNewsStartDate" Type="DateTime" />
                            <asp:Parameter Name="cNewsEndDate" Type="DateTime" />
                            <asp:Parameter Name="showonhomepage" Type="Boolean" />
                            <asp:Parameter Name="archive" Type="Boolean" />
                            <asp:Parameter Name="metatitle" Type="String" />
                            <asp:Parameter Name="smFrequency" Type="String" />
                            <asp:Parameter Name="smPriority" Type="String" />
                            <asp:Parameter Name="gsmincluded" Type="String" />
                            <asp:Parameter Name="metakeywords" Type="String" />
                            <asp:Parameter Name="metadescription" Type="String" />
                            <asp:Parameter Name="message" Type="String" />
                            <asp:Parameter Name="userid" Type="String" />
                            <asp:Parameter Name="productmatch" Type="String" />
                            <asp:Parameter Name="newsid" Type="Int32" />
                        </UpdateParameters>
                    </asp:AccessDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="blogsid" DataSourceID="AccessDataSource2" EmptyDataText="There are no data records to display.">
                        <Columns>
                            <asp:BoundField DataField="blogsid" HeaderText="blogsid" ReadOnly="True" SortExpression="blogsid" />
                            <asp:BoundField DataField="messagetype" HeaderText="messagetype" SortExpression="messagetype" />
                            <asp:BoundField DataField="headline" HeaderText="headline" SortExpression="headline" />
                            <asp:BoundField DataField="blogsimage" HeaderText="blogsimage" SortExpression="blogsimage" />
                            <asp:CheckBoxField DataField="hide" HeaderText="hide" SortExpression="hide" />
                            <asp:BoundField DataField="template" HeaderText="template" SortExpression="template" />
                            <asp:BoundField DataField="blogslanguage" HeaderText="blogslanguage" SortExpression="blogslanguage" />
                            <asp:BoundField DataField="other1" HeaderText="other1" SortExpression="other1" />
                            <asp:BoundField DataField="other2" HeaderText="other2" SortExpression="other2" />
                            <asp:BoundField DataField="other3" HeaderText="other3" SortExpression="other3" />
                            <asp:CheckBoxField DataField="loggedin" HeaderText="loggedin" SortExpression="loggedin" />
                            <asp:BoundField DataField="impressions" HeaderText="impressions" SortExpression="impressions" />
                            <asp:BoundField DataField="cdateadded" HeaderText="cdateadded" SortExpression="cdateadded" />
                            <asp:BoundField DataField="cdateupdated" HeaderText="cdateupdated" SortExpression="cdateupdated" />
                            <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
                            <asp:BoundField DataField="contactid" HeaderText="contactid" SortExpression="contactid" />
                            <asp:BoundField DataField="contentgroups" HeaderText="contentgroups" SortExpression="contentgroups" />
                            <asp:BoundField DataField="excontentgroups" HeaderText="excontentgroups" SortExpression="excontentgroups" />
                            <asp:CheckBoxField DataField="showonbox" HeaderText="showonbox" SortExpression="showonbox" />
                            <asp:BoundField DataField="cBlogsStartDate" HeaderText="cBlogsStartDate" SortExpression="cBlogsStartDate" />
                            <asp:BoundField DataField="cBlogsEndDate" HeaderText="cBlogsEndDate" SortExpression="cBlogsEndDate" />
                            <asp:CheckBoxField DataField="showonhomepage" HeaderText="showonhomepage" SortExpression="showonhomepage" />
                            <asp:CheckBoxField DataField="archive" HeaderText="archive" SortExpression="archive" />
                            <asp:BoundField DataField="metatitle" HeaderText="metatitle" SortExpression="metatitle" />
                            <asp:BoundField DataField="smFrequency" HeaderText="smFrequency" SortExpression="smFrequency" />
                            <asp:BoundField DataField="smPriority" HeaderText="smPriority" SortExpression="smPriority" />
                            <asp:BoundField DataField="gsmincluded" HeaderText="gsmincluded" SortExpression="gsmincluded" />
                            <asp:BoundField DataField="metakeywords" HeaderText="metakeywords" SortExpression="metakeywords" />
                            <asp:BoundField DataField="metadescription" HeaderText="metadescription" SortExpression="metadescription" />
                            <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                            <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
                            <asp:BoundField DataField="productmatch" HeaderText="productmatch" SortExpression="productmatch" />
                        </Columns>
                    </asp:GridView>
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="App_Data\my_products.mdb" DeleteCommand="DELETE FROM `blogs` WHERE `blogsid` = ?" InsertCommand="INSERT INTO `blogs` (`blogsid`, `messagetype`, `headline`, `blogsimage`, `hide`, `template`, `blogslanguage`, `other1`, `other2`, `other3`, `loggedin`, `impressions`, `cdateadded`, `cdateupdated`, `fullname`, `contactid`, `contentgroups`, `excontentgroups`, `showonbox`, `cBlogsStartDate`, `cBlogsEndDate`, `showonhomepage`, `archive`, `metatitle`, `smFrequency`, `smPriority`, `gsmincluded`, `metakeywords`, `metadescription`, `message`, `userid`, `productmatch`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT `blogsid`, `messagetype`, `headline`, `blogsimage`, `hide`, `template`, `blogslanguage`, `other1`, `other2`, `other3`, `loggedin`, `impressions`, `cdateadded`, `cdateupdated`, `fullname`, `contactid`, `contentgroups`, `excontentgroups`, `showonbox`, `cBlogsStartDate`, `cBlogsEndDate`, `showonhomepage`, `archive`, `metatitle`, `smFrequency`, `smPriority`, `gsmincluded`, `metakeywords`, `metadescription`, `message`, `userid`, `productmatch` FROM `blogs`" UpdateCommand="UPDATE `blogs` SET `messagetype` = ?, `headline` = ?, `blogsimage` = ?, `hide` = ?, `template` = ?, `blogslanguage` = ?, `other1` = ?, `other2` = ?, `other3` = ?, `loggedin` = ?, `impressions` = ?, `cdateadded` = ?, `cdateupdated` = ?, `fullname` = ?, `contactid` = ?, `contentgroups` = ?, `excontentgroups` = ?, `showonbox` = ?, `cBlogsStartDate` = ?, `cBlogsEndDate` = ?, `showonhomepage` = ?, `archive` = ?, `metatitle` = ?, `smFrequency` = ?, `smPriority` = ?, `gsmincluded` = ?, `metakeywords` = ?, `metadescription` = ?, `message` = ?, `userid` = ?, `productmatch` = ? WHERE `blogsid` = ?">
                        <DeleteParameters>
                            <asp:Parameter Name="blogsid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="blogsid" Type="Int32" />
                            <asp:Parameter Name="messagetype" Type="String" />
                            <asp:Parameter Name="headline" Type="String" />
                            <asp:Parameter Name="blogsimage" Type="String" />
                            <asp:Parameter Name="hide" Type="Boolean" />
                            <asp:Parameter Name="template" Type="String" />
                            <asp:Parameter Name="blogslanguage" Type="String" />
                            <asp:Parameter Name="other1" Type="String" />
                            <asp:Parameter Name="other2" Type="String" />
                            <asp:Parameter Name="other3" Type="String" />
                            <asp:Parameter Name="loggedin" Type="Boolean" />
                            <asp:Parameter Name="impressions" Type="Int32" />
                            <asp:Parameter Name="cdateadded" Type="DateTime" />
                            <asp:Parameter Name="cdateupdated" Type="DateTime" />
                            <asp:Parameter Name="fullname" Type="String" />
                            <asp:Parameter Name="contactid" Type="String" />
                            <asp:Parameter Name="contentgroups" Type="String" />
                            <asp:Parameter Name="excontentgroups" Type="String" />
                            <asp:Parameter Name="showonbox" Type="Boolean" />
                            <asp:Parameter Name="cBlogsStartDate" Type="DateTime" />
                            <asp:Parameter Name="cBlogsEndDate" Type="DateTime" />
                            <asp:Parameter Name="showonhomepage" Type="Boolean" />
                            <asp:Parameter Name="archive" Type="Boolean" />
                            <asp:Parameter Name="metatitle" Type="String" />
                            <asp:Parameter Name="smFrequency" Type="String" />
                            <asp:Parameter Name="smPriority" Type="String" />
                            <asp:Parameter Name="gsmincluded" Type="String" />
                            <asp:Parameter Name="metakeywords" Type="String" />
                            <asp:Parameter Name="metadescription" Type="String" />
                            <asp:Parameter Name="message" Type="String" />
                            <asp:Parameter Name="userid" Type="String" />
                            <asp:Parameter Name="productmatch" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="messagetype" Type="String" />
                            <asp:Parameter Name="headline" Type="String" />
                            <asp:Parameter Name="blogsimage" Type="String" />
                            <asp:Parameter Name="hide" Type="Boolean" />
                            <asp:Parameter Name="template" Type="String" />
                            <asp:Parameter Name="blogslanguage" Type="String" />
                            <asp:Parameter Name="other1" Type="String" />
                            <asp:Parameter Name="other2" Type="String" />
                            <asp:Parameter Name="other3" Type="String" />
                            <asp:Parameter Name="loggedin" Type="Boolean" />
                            <asp:Parameter Name="impressions" Type="Int32" />
                            <asp:Parameter Name="cdateadded" Type="DateTime" />
                            <asp:Parameter Name="cdateupdated" Type="DateTime" />
                            <asp:Parameter Name="fullname" Type="String" />
                            <asp:Parameter Name="contactid" Type="String" />
                            <asp:Parameter Name="contentgroups" Type="String" />
                            <asp:Parameter Name="excontentgroups" Type="String" />
                            <asp:Parameter Name="showonbox" Type="Boolean" />
                            <asp:Parameter Name="cBlogsStartDate" Type="DateTime" />
                            <asp:Parameter Name="cBlogsEndDate" Type="DateTime" />
                            <asp:Parameter Name="showonhomepage" Type="Boolean" />
                            <asp:Parameter Name="archive" Type="Boolean" />
                            <asp:Parameter Name="metatitle" Type="String" />
                            <asp:Parameter Name="smFrequency" Type="String" />
                            <asp:Parameter Name="smPriority" Type="String" />
                            <asp:Parameter Name="gsmincluded" Type="String" />
                            <asp:Parameter Name="metakeywords" Type="String" />
                            <asp:Parameter Name="metadescription" Type="String" />
                            <asp:Parameter Name="message" Type="String" />
                            <asp:Parameter Name="userid" Type="String" />
                            <asp:Parameter Name="productmatch" Type="String" />
                            <asp:Parameter Name="blogsid" Type="Int32" />
                        </UpdateParameters>
                    </asp:AccessDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>


    </div>
</asp:Content>

