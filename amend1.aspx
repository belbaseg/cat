<%@ Page Language="VB" MasterPageFile="SiteB.master" AutoEventWireup="false" CodeFile="trustee.aspx.vb" Inherits="edit_trustee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>तपाइको पासवर्ड वा अरू विवरण चेन्ज गर्न लग इन गर्नुहोस ।<br /><br /><br />
        Your Email:
        <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Email" CausesValidation="True" ValidationGroup="email"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter CORRECT email." ForeColor="#CC3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Please enter email.</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="तपाइको Email एड्रेस" ForeColor="#CC3300">तपाइको Email एड्रेस</asp:RequiredFieldValidator>
    </p>
    <p>
        Mobile N.
        <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="BusinessPhone" ValidationGroup="password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="तपाइको फोन नम्बर चाहिन्छ" ForeColor="#CC33FF">तपाइको फोन नम्बर</asp:RequiredFieldValidator>
        <br />
        Your ID:
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="तपाइको ID शेयर प्रमाणपत्रमा भेटिन्छ" ForeColor="#FF0066">तपाइको ID शेयर प्रमाणपत्रमा भेटिन्छ</asp:RequiredFieldValidator>
        <br />
    </p>
    <asp:Button ID="Button1" runat="server" Text="Log in" />
    <p>
        </p>
    
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" />
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="contactid" DataSourceID="AccessDataSource1" EmptyDataText="Please go to &lt;a href=&quot;http://nepali.team&quot;&gt;nepali.team&lt;/a&gt;" AutoGenerateEditButton="True" EditIndex="0" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" DataFormatString="Click on edit to change your password." >
            <ControlStyle Font-Overline="True" Font-Strikeout="True" ForeColor="White" BackColor="#666633" Font-Bold="True" Font-Names="Preeti" Font-Size="Medium" />
            <ItemStyle Font-Size="Medium" ForeColor="Blue" />
            </asp:BoundField>
            <asp:BoundField DataField="contactid" HeaderText="contactid" InsertVisible="False" ReadOnly="True" SortExpression="contactid" Visible="False" />
            <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="address2" HeaderText="address2" SortExpression="address2" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="postcode" HeaderText="postcode" SortExpression="postcode" />
            <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="workphone" HeaderText="workphone" SortExpression="workphone" />
            <asp:BoundField DataField="mobilephone" HeaderText="mobilephone" SortExpression="mobilephone" />
            <asp:BoundField DataField="fax" HeaderText="fax" SortExpression="fax" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="comments" HeaderText="comments" SortExpression="comments" />
            <asp:BoundField DataField="fb_userid" HeaderText="fb_userid" SortExpression="fb_userid" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data/my_products.mdb" SelectCommand="SELECT [contactid], [firstname], [lastname], [address], [address2], [city], [postcode], [country], [phone], [workphone], [mobilephone], [fax], [email], [comments], [password], [fb_userid] FROM [customers] WHERE (([email] = ?) AND ([mobilephone] = ?) AND ([contactid] = ?))" DeleteCommand="DELETE FROM [customers] WHERE [contactid] = ?" InsertCommand="INSERT INTO [customers] ([contactid], [firstname], [lastname], [address], [address2], [city], [postcode], [country], [phone], [workphone], [mobilephone], [fax], [email], [comments], [password], [fb_userid]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [customers] SET [firstname] = ?, [lastname] = ?, [address] = ?, [address2] = ?, [city] = ?, [postcode] = ?, [country] = ?, [phone] = ?, [workphone] = ?, [mobilephone] = ?, [fax] = ?, [email] = ?, [comments] = ?, [password] = ?, [fb_userid] = ? WHERE [contactid] = ?">
        <DeleteParameters>
            <asp:Parameter Name="contactid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
           
            <asp:Parameter Name="contactid" Type="Int32" />
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="address2" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="postcode" Type="String" />
            <asp:Parameter Name="country" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="workphone" Type="String" />
            <asp:Parameter Name="mobilephone" Type="String" />
            <asp:Parameter Name="fax" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="comments" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="fb_userid" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="email" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="mobilephone" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="contactid" PropertyName="Text" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="address2" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="postcode" Type="String" />
            <asp:Parameter Name="country" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="workphone" Type="String" />
            <asp:Parameter Name="mobilephone" Type="String" />
            <asp:Parameter Name="fax" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="comments" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="fb_userid" Type="String" />
            <asp:Parameter Name="contactid" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    </p>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="contactid" DataSourceID="AccessDataSource2" EmptyDataText="Please go to &lt;a href=&quot;http://nepali.team&quot;&gt;nepali.team&lt;/a&gt;" EditIndex="0" EnablePersistedSelection="True" Visible="False">
        <Columns>
            <asp:CommandField ButtonType="Button" UpdateText="Change" />
            <asp:BoundField DataField="contactid" HeaderText="contactid" InsertVisible="False" ReadOnly="True" SortExpression="contactid" />
            <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="address2" HeaderText="address2" SortExpression="address2" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="postcode" HeaderText="postcode" SortExpression="postcode" />
            <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
            <asp:BoundField DataField="company" HeaderText="company" SortExpression="company" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="workphone" HeaderText="workphone" SortExpression="workphone" />
            <asp:BoundField DataField="mobilephone" HeaderText="mobilephone" SortExpression="mobilephone" />
            <asp:BoundField DataField="fax" HeaderText="fax" SortExpression="fax" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="contacttypeid" HeaderText="contacttypeid" SortExpression="contacttypeid" />
            <asp:BoundField DataField="comments" HeaderText="comments" SortExpression="comments" />
            <asp:BoundField DataField="contactreason" HeaderText="contactreason" SortExpression="contactreason" />
            <asp:BoundField DataField="logincount" HeaderText="logincount" SortExpression="logincount" />
            <asp:BoundField DataField="lastlogindate" HeaderText="lastlogindate" SortExpression="lastlogindate" />
            <asp:BoundField DataField="website" HeaderText="website" SortExpression="website" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="discount" HeaderText="discount" SortExpression="discount" />
            <asp:BoundField DataField="custother1" HeaderText="custother1" SortExpression="custother1" />
            <asp:BoundField DataField="accountno" HeaderText="accountno" SortExpression="accountno" />
            <asp:BoundField DataField="cardno" HeaderText="cardno" SortExpression="cardno" />
            <asp:BoundField DataField="cardexpires" HeaderText="cardexpires" SortExpression="cardexpires" />
            <asp:BoundField DataField="cardname" HeaderText="cardname" SortExpression="cardname" />
            <asp:BoundField DataField="cardaddress" HeaderText="cardaddress" SortExpression="cardaddress" />
            <asp:BoundField DataField="cardcvn" HeaderText="cardcvn" SortExpression="cardcvn" />
            <asp:CheckBoxField DataField="maillist" HeaderText="maillist" SortExpression="maillist" />
            <asp:BoundField DataField="productgroup" HeaderText="productgroup" SortExpression="productgroup" />
            <asp:CheckBoxField DataField="cookiequestion" HeaderText="cookiequestion" SortExpression="cookiequestion" />
            <asp:BoundField DataField="pointstotal" HeaderText="pointstotal" SortExpression="pointstotal" />
            <asp:BoundField DataField="pointsremaining" HeaderText="pointsremaining" SortExpression="pointsremaining" />
            <asp:BoundField DataField="vatnumber" HeaderText="vatnumber" SortExpression="vatnumber" />
            <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
            <asp:BoundField DataField="hearaboutus" HeaderText="hearaboutus" SortExpression="hearaboutus" />
            <asp:BoundField DataField="taxexempt" HeaderText="taxexempt" SortExpression="taxexempt" />
            <asp:BoundField DataField="authorized" HeaderText="authorized" SortExpression="authorized" />
            <asp:BoundField DataField="fb_userid" HeaderText="fb_userid" SortExpression="fb_userid" />
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="App_Data/my_products.mdb" SelectCommand="SELECT contactid, firstname, lastname, address, address2, city, state, postcode, country, company, phone, workphone, mobilephone, fax, email, contacttypeid, comments, contactreason, logincount, lastlogindate, website, [password], discount, custother1, accountno, cardno, cardexpires, cardname, cardaddress, cardcvn, maillist, productgroup, cookiequestion, pointstotal, pointsremaining, vatnumber, userid, hearaboutus, taxexempt, authorized, fb_userid FROM customers WHERE (firstname = ?) AND (lastname = ?) AND (email = ?)" DeleteCommand="DELETE FROM [customers] WHERE [contactid] = ?" InsertCommand="INSERT INTO [customers] ([firstname], [lastname], [address], [address2], [city], [state], [postcode], [country], [company], [phone], [workphone], [mobilephone], [fax], [email], [contacttypeid], [comments], [contactreason], [logincount], [lastlogindate], [website], [password], [discount], [custother1], [accountno], [cardno], [cardexpires], [cardname], [cardaddress], [cardcvn], [maillist], [productgroup], [cookiequestion], [pointstotal], [pointsremaining], [vatnumber], [userid], [hearaboutus], [taxexempt], [authorized], [fb_userid]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [customers] SET [firstname] = ?, [lastname] = ?, [address] = ?, [address2] = ?, [city] = ?, [state] = ?, [postcode] = ?, [country] = ?, [company] = ?, [phone] = ?, [workphone] = ?, [mobilephone] = ?, [fax] = ?, [email] = ?, [contacttypeid] = ?, [comments] = ?, [contactreason] = ?, [logincount] = ?, [lastlogindate] = ?, [website] = ?, [password] = ?, [discount] = ?, [custother1] = ?, [accountno] = ?, [cardno] = ?, [cardexpires] = ?, [cardname] = ?, [cardaddress] = ?, [cardcvn] = ?, [maillist] = ?, [productgroup] = ?, [cookiequestion] = ?, [pointstotal] = ?, [pointsremaining] = ?, [vatnumber] = ?, [userid] = ?, [hearaboutus] = ?, [taxexempt] = ?, [authorized] = ?, [fb_userid] = ? WHERE [contactid] = ?">
        <DeleteParameters>
            <asp:Parameter Name="contactid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
           
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="address2" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="postcode" Type="String" />
            <asp:Parameter Name="country" Type="String" />
            <asp:Parameter Name="company" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="workphone" Type="String" />
            <asp:Parameter Name="mobilephone" Type="String" />
            <asp:Parameter Name="fax" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="contacttypeid" Type="Int32" />
            <asp:Parameter Name="comments" Type="String" />
            <asp:Parameter Name="contactreason" Type="String" />
            <asp:Parameter Name="logincount" Type="Int32" />
            <asp:Parameter Name="lastlogindate" Type="DateTime" />
            <asp:Parameter Name="website" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="discount" Type="Double" />
            <asp:Parameter Name="custother1" Type="String" />
            <asp:Parameter Name="accountno" Type="String" />
            <asp:Parameter Name="cardno" Type="String" />
            <asp:Parameter Name="cardexpires" Type="String" />
            <asp:Parameter Name="cardname" Type="String" />
            <asp:Parameter Name="cardaddress" Type="String" />
            <asp:Parameter Name="cardcvn" Type="String" />
            <asp:Parameter Name="maillist" Type="Boolean" />
            <asp:Parameter Name="productgroup" Type="String" />
            <asp:Parameter Name="cookiequestion" Type="Boolean" />
            <asp:Parameter Name="pointstotal" Type="Int32" />
            <asp:Parameter Name="pointsremaining" Type="Int32" />
            <asp:Parameter Name="vatnumber" Type="String" />
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="hearaboutus" Type="String" />
            <asp:Parameter Name="taxexempt" Type="String" />
            <asp:Parameter Name="authorized" Type="String" />
            <asp:Parameter Name="fb_userid" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="?" QueryStringField="firstname" />
            <asp:QueryStringParameter Name="?" QueryStringField="lastname" />
            <asp:QueryStringParameter Name="?" QueryStringField="email" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="address2" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="postcode" Type="String" />
            <asp:Parameter Name="country" Type="String" />
            <asp:Parameter Name="company" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="workphone" Type="String" />
            <asp:Parameter Name="mobilephone" Type="String" />
            <asp:Parameter Name="fax" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="contacttypeid" Type="Int32" />
            <asp:Parameter Name="comments" Type="String" />
            <asp:Parameter Name="contactreason" Type="String" />
            <asp:Parameter Name="logincount" Type="Int32" />
            <asp:Parameter Name="lastlogindate" Type="DateTime" />
            <asp:Parameter Name="website" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="discount" Type="Double" />
            <asp:Parameter Name="custother1" Type="String" />
            <asp:Parameter Name="accountno" Type="String" />
            <asp:Parameter Name="cardno" Type="String" />
            <asp:Parameter Name="cardexpires" Type="String" />
            <asp:Parameter Name="cardname" Type="String" />
            <asp:Parameter Name="cardaddress" Type="String" />
            <asp:Parameter Name="cardcvn" Type="String" />
            <asp:Parameter Name="maillist" Type="Boolean" />
            <asp:Parameter Name="productgroup" Type="String" />
            <asp:Parameter Name="cookiequestion" Type="Boolean" />
            <asp:Parameter Name="pointstotal" Type="Int32" />
            <asp:Parameter Name="pointsremaining" Type="Int32" />
            <asp:Parameter Name="vatnumber" Type="String" />
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="hearaboutus" Type="String" />
            <asp:Parameter Name="taxexempt" Type="String" />
            <asp:Parameter Name="authorized" Type="String" />
            <asp:Parameter Name="fb_userid" Type="String" />
            <asp:Parameter Name="contactid" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
</asp:Content>

