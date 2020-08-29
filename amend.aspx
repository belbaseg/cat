<%@ Page Language="VB" MasterPageFile="SiteB.master" AutoEventWireup="false" CodeFile="trustee.aspx.vb" Inherits="edit_trustee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 1579px;
            height: 211px;
            position: absolute;
            top: 72px;
            left: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <table style="background-color: #CCCCCC"><tr><td> <p><br><a href="fileupload.aspx">Upload your file</a><br />
      <div style="background-image: inherit; background-color: #00FF00; text-align: right;"> Email:
    <asp:TextBox ID="user" runat="server"></asp:TextBox><br />
    Password:
    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
    <asp:Button ID="submit" runat="server" Text="Submit" /></div><br /><br />
      <table><tr><td><a href="amend1.aspx">तपाइको विवरण चेञ्ज गर्नको लागि यहाँ क्लिक गर्नुहोस »»</a></td></tr></table>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="contactid" DataSourceID="AccessDataSource1" EditIndex="0" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" CssClass="auto-style1" style="z-index: 1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="contactid" HeaderText="Your ID" InsertVisible="False" ReadOnly="True" SortExpression="contactid" />
                <asp:BoundField DataField="firstname" HeaderText="First Name" SortExpression="firstname" />
                <asp:BoundField DataField="lastname" HeaderText="Last Name" SortExpression="lastname" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                <asp:BoundField DataField="address2" HeaderText="Nepal-Address" SortExpression="address2" />
                <asp:BoundField DataField="mobilephone" HeaderText="Mobile Phone" SortExpression="mobilephone" />
                <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:CommandField ShowEditButton="True" CancelText="" >
                <ControlStyle BackColor="#CC3300" ForeColor="#FFFFCC" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
    </p>
    <p>&nbsp;</p>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data/my_products.mdb" SelectCommand="SELECT contactid, firstname, lastname, address, address2, mobilephone, [password], email FROM customers WHERE (firstname = ?) AND (lastname = ?) AND (email IS NULL)" DeleteCommand="DELETE FROM [customers] WHERE [contactid] = ?" InsertCommand="INSERT INTO [customers] ([contactid], [firstname], [lastname], [address], [address2], [mobilephone], [password], [email]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [customers] SET [firstname] = ?, [lastname] = ?, [address] = ?, [address2] = ?, [mobilephone] = ?, [password] = ?, [email] = ? WHERE [contactid] = ?">
        <DeleteParameters>
            <asp:Parameter Name="contactid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
           
            <asp:Parameter Name="contactid" Type="Int32" />
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="address2" Type="String" />
            <asp:Parameter Name="mobilephone" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="email" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="firstname" QueryStringField="firstname" Type="String" />
            <asp:QueryStringParameter Name="lastname" QueryStringField="lastname" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="address2" Type="String" />
            <asp:Parameter Name="mobilephone" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="contactid" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
   <asp:FormView ID="FormView2" runat="server" DataKeyNames="contactid" DataSourceID="AccessDataSource2" DefaultMode="Edit" PageIndex="1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" Visible="False">
            <EditItemTemplate>
                contactid:
                <asp:Label ID="contactidLabel1" runat="server" Text='<%# Eval("contactid") %>' />
                <br />
                firstname:
                <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>' />
                <br />
                lastname:
                <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' />
                <br />
                address:
                <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                <br />
                address2:
                <asp:TextBox ID="address2TextBox" runat="server" Text='<%# Bind("address2") %>' />
                <br />
                city:
                <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                <br />
                state:
                <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                <br />
                postcode:
                <asp:TextBox ID="postcodeTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                <br />
                country:
                <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
                <br />
                company:
                <asp:TextBox ID="companyTextBox" runat="server" Text='<%# Bind("company") %>' />
                <br />
                phone:
                <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                <br />
                workphone:
                <asp:TextBox ID="workphoneTextBox" runat="server" Text='<%# Bind("workphone") %>' />
                <br />
                mobilephone:
                <asp:TextBox ID="mobilephoneTextBox" runat="server" Text='<%# Bind("mobilephone") %>' />
                <br />
                fax:
                <asp:TextBox ID="faxTextBox" runat="server" Text='<%# Bind("fax") %>' />
                <br />
                email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                contacttypeid:
                <asp:TextBox ID="contacttypeidTextBox" runat="server" Text='<%# Bind("contacttypeid") %>' />
                <br />
                comments:
                <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' />
                <br />
                contactreason:
                <asp:TextBox ID="contactreasonTextBox" runat="server" Text='<%# Bind("contactreason") %>' />
                <br />
                logincount:
                <asp:TextBox ID="logincountTextBox" runat="server" Text='<%# Bind("logincount") %>' />
                <br />
                lastlogindate:
                <asp:TextBox ID="lastlogindateTextBox" runat="server" Text='<%# Bind("lastlogindate") %>' />
                <br />
                website:
                <asp:TextBox ID="websiteTextBox" runat="server" Text='<%# Bind("website") %>' />
                <br />
                password:
                <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                <br />
                discount:
                <asp:TextBox ID="discountTextBox" runat="server" Text='<%# Bind("discount") %>' />
                <br />
                custother1:
                <asp:TextBox ID="custother1TextBox" runat="server" Text='<%# Bind("custother1") %>' />
                <br />
                accountno:
                <asp:TextBox ID="accountnoTextBox" runat="server" Text='<%# Bind("accountno") %>' />
                <br />
                cardno:
                <asp:TextBox ID="cardnoTextBox" runat="server" Text='<%# Bind("cardno") %>' />
                <br />
                cardexpires:
                <asp:TextBox ID="cardexpiresTextBox" runat="server" Text='<%# Bind("cardexpires") %>' />
                <br />
                cardname:
                <asp:TextBox ID="cardnameTextBox" runat="server" Text='<%# Bind("cardname") %>' />
                <br />
                cardaddress:
                <asp:TextBox ID="cardaddressTextBox" runat="server" Text='<%# Bind("cardaddress") %>' />
                <br />
                cardcvn:
                <asp:TextBox ID="cardcvnTextBox" runat="server" Text='<%# Bind("cardcvn") %>' />
                <br />
                maillist:
                <asp:CheckBox ID="maillistCheckBox" runat="server" Checked='<%# Bind("maillist") %>' />
                <br />
                productgroup:
                <asp:TextBox ID="productgroupTextBox" runat="server" Text='<%# Bind("productgroup") %>' />
                <br />
                cookiequestion:
                <asp:CheckBox ID="cookiequestionCheckBox" runat="server" Checked='<%# Bind("cookiequestion") %>' />
                <br />
                pointstotal:
                <asp:TextBox ID="pointstotalTextBox" runat="server" Text='<%# Bind("pointstotal") %>' />
                <br />
                pointsremaining:
                <asp:TextBox ID="pointsremainingTextBox" runat="server" Text='<%# Bind("pointsremaining") %>' />
                <br />
                vatnumber:
                <asp:TextBox ID="vatnumberTextBox" runat="server" Text='<%# Bind("vatnumber") %>' />
                <br />
                userid:
                <asp:TextBox ID="useridTextBox" runat="server" Text='<%# Bind("userid") %>' />
                <br />
                hearaboutus:
                <asp:TextBox ID="hearaboutusTextBox" runat="server" Text='<%# Bind("hearaboutus") %>' />
                <br />
                taxexempt:
                <asp:TextBox ID="taxexemptTextBox" runat="server" Text='<%# Bind("taxexempt") %>' />
                <br />
                authorized:
                <asp:TextBox ID="authorizedTextBox" runat="server" Text='<%# Bind("authorized") %>' />
                <br />
                fb_userid:
                <asp:TextBox ID="fb_useridTextBox" runat="server" Text='<%# Bind("fb_userid") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <InsertItemTemplate>
                firstname:
                <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>' />
                <br />
                lastname:
                <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' />
                <br />
                address:
                <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                <br />
                address2:
                <asp:TextBox ID="address2TextBox" runat="server" Text='<%# Bind("address2") %>' />
                <br />
                city:
                <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                <br />
                state:
                <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                <br />
                postcode:
                <asp:TextBox ID="postcodeTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                <br />
                country:
                <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
                <br />
                company:
                <asp:TextBox ID="companyTextBox" runat="server" Text='<%# Bind("company") %>' />
                <br />
                phone:
                <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                <br />
                workphone:
                <asp:TextBox ID="workphoneTextBox" runat="server" Text='<%# Bind("workphone") %>' />
                <br />
                mobilephone:
                <asp:TextBox ID="mobilephoneTextBox" runat="server" Text='<%# Bind("mobilephone") %>' />
                <br />
                fax:
                <asp:TextBox ID="faxTextBox" runat="server" Text='<%# Bind("fax") %>' />
                <br />
                email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                contacttypeid:
                <asp:TextBox ID="contacttypeidTextBox" runat="server" Text='<%# Bind("contacttypeid") %>' />
                <br />
                comments:
                <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' />
                <br />
                contactreason:
                <asp:TextBox ID="contactreasonTextBox" runat="server" Text='<%# Bind("contactreason") %>' />
                <br />
                logincount:
                <asp:TextBox ID="logincountTextBox" runat="server" Text='<%# Bind("logincount") %>' />
                <br />
                lastlogindate:
                <asp:TextBox ID="lastlogindateTextBox" runat="server" Text='<%# Bind("lastlogindate") %>' />
                <br />
                website:
                <asp:TextBox ID="websiteTextBox" runat="server" Text='<%# Bind("website") %>' />
                <br />
                password:
                <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                <br />
                discount:
                <asp:TextBox ID="discountTextBox" runat="server" Text='<%# Bind("discount") %>' />
                <br />
                custother1:
                <asp:TextBox ID="custother1TextBox" runat="server" Text='<%# Bind("custother1") %>' />
                <br />
                accountno:
                <asp:TextBox ID="accountnoTextBox" runat="server" Text='<%# Bind("accountno") %>' />
                <br />
                cardno:
                <asp:TextBox ID="cardnoTextBox" runat="server" Text='<%# Bind("cardno") %>' />
                <br />
                cardexpires:
                <asp:TextBox ID="cardexpiresTextBox" runat="server" Text='<%# Bind("cardexpires") %>' />
                <br />
                cardname:
                <asp:TextBox ID="cardnameTextBox" runat="server" Text='<%# Bind("cardname") %>' />
                <br />
                cardaddress:
                <asp:TextBox ID="cardaddressTextBox" runat="server" Text='<%# Bind("cardaddress") %>' />
                <br />
                cardcvn:
                <asp:TextBox ID="cardcvnTextBox" runat="server" Text='<%# Bind("cardcvn") %>' />
                <br />
                maillist:
                <asp:CheckBox ID="maillistCheckBox" runat="server" Checked='<%# Bind("maillist") %>' />
                <br />
                productgroup:
                <asp:TextBox ID="productgroupTextBox" runat="server" Text='<%# Bind("productgroup") %>' />
                <br />
                cookiequestion:
                <asp:CheckBox ID="cookiequestionCheckBox" runat="server" Checked='<%# Bind("cookiequestion") %>' />
                <br />
                pointstotal:
                <asp:TextBox ID="pointstotalTextBox" runat="server" Text='<%# Bind("pointstotal") %>' />
                <br />
                pointsremaining:
                <asp:TextBox ID="pointsremainingTextBox" runat="server" Text='<%# Bind("pointsremaining") %>' />
                <br />
                vatnumber:
                <asp:TextBox ID="vatnumberTextBox" runat="server" Text='<%# Bind("vatnumber") %>' />
                <br />
                userid:
                <asp:TextBox ID="useridTextBox" runat="server" Text='<%# Bind("userid") %>' />
                <br />
                hearaboutus:
                <asp:TextBox ID="hearaboutusTextBox" runat="server" Text='<%# Bind("hearaboutus") %>' />
                <br />
                taxexempt:
                <asp:TextBox ID="taxexemptTextBox" runat="server" Text='<%# Bind("taxexempt") %>' />
                <br />
                authorized:
                <asp:TextBox ID="authorizedTextBox" runat="server" Text='<%# Bind("authorized") %>' />
                <br />
                fb_userid:
                <asp:TextBox ID="fb_useridTextBox" runat="server" Text='<%# Bind("fb_userid") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                contactid:
                <asp:Label ID="contactidLabel" runat="server" Text='<%# Eval("contactid") %>' />
                <br />
                firstname:
                <asp:Label ID="firstnameLabel" runat="server" Text='<%# Bind("firstname") %>' />
                <br />
                lastname:
                <asp:Label ID="lastnameLabel" runat="server" Text='<%# Bind("lastname") %>' />
                <br />
                address:
                <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
                <br />
                address2:
                <asp:Label ID="address2Label" runat="server" Text='<%# Bind("address2") %>' />
                <br />
                city:
                <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                <br />
                state:
                <asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>' />
                <br />
                postcode:
                <asp:Label ID="postcodeLabel" runat="server" Text='<%# Bind("postcode") %>' />
                <br />

                country:
                <asp:Label ID="countryLabel" runat="server" Text='<%# Bind("country") %>' />
                <br />
                company:
                <asp:Label ID="companyLabel" runat="server" Text='<%# Bind("company") %>' />
                <br />
                phone:
                <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                <br />
                workphone:
                <asp:Label ID="workphoneLabel" runat="server" Text='<%# Bind("workphone") %>' />
                <br />
                mobilephone:
                <asp:Label ID="mobilephoneLabel" runat="server" Text='<%# Bind("mobilephone") %>' />
                <br />
                fax:
                <asp:Label ID="faxLabel" runat="server" Text='<%# Bind("fax") %>' />
                <br />
                email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                <br />
                contacttypeid:
                <asp:Label ID="contacttypeidLabel" runat="server" Text='<%# Bind("contacttypeid") %>' />
                <br />
                comments:
                <asp:Label ID="commentsLabel" runat="server" Text='<%# Bind("comments") %>' />
                <br />
                contactreason:
                <asp:Label ID="contactreasonLabel" runat="server" Text='<%# Bind("contactreason") %>' />
                <br />
                logincount:
                <asp:Label ID="logincountLabel" runat="server" Text='<%# Bind("logincount") %>' />
                <br />
                lastlogindate:
                <asp:Label ID="lastlogindateLabel" runat="server" Text='<%# Bind("lastlogindate") %>' />
                <br />
                website:
                <asp:Label ID="websiteLabel" runat="server" Text='<%# Bind("website") %>' />
                <br />
                password:
                <asp:Label ID="passwordLabel" runat="server" Text='<%# Bind("password") %>' />
                <br />
                discount:
                <asp:Label ID="discountLabel" runat="server" Text='<%# Bind("discount") %>' />
                <br />
                custother1:
                <asp:Label ID="custother1Label" runat="server" Text='<%# Bind("custother1") %>' />
                <br />
                accountno:
                <asp:Label ID="accountnoLabel" runat="server" Text='<%# Bind("accountno") %>' />
                <br />
                cardno:
                <asp:Label ID="cardnoLabel" runat="server" Text='<%# Bind("cardno") %>' />
                <br />
                cardexpires:
                <asp:Label ID="cardexpiresLabel" runat="server" Text='<%# Bind("cardexpires") %>' />
                <br />
                cardname:
                <asp:Label ID="cardnameLabel" runat="server" Text='<%# Bind("cardname") %>' />
                <br />
                cardaddress:
                <asp:Label ID="cardaddressLabel" runat="server" Text='<%# Bind("cardaddress") %>' />
                <br />
                cardcvn:
                <asp:Label ID="cardcvnLabel" runat="server" Text='<%# Bind("cardcvn") %>' />
                <br />
                maillist:
                <asp:CheckBox ID="maillistCheckBox" runat="server" Checked='<%# Bind("maillist") %>' Enabled="false" />
                <br />
                productgroup:
                <asp:Label ID="productgroupLabel" runat="server" Text='<%# Bind("productgroup") %>' />
                <br />
                cookiequestion:
                <asp:CheckBox ID="cookiequestionCheckBox" runat="server" Checked='<%# Bind("cookiequestion") %>' Enabled="false" />
                <br />
                pointstotal:
                <asp:Label ID="pointstotalLabel" runat="server" Text='<%# Bind("pointstotal") %>' />
                <br />
                pointsremaining:
                <asp:Label ID="pointsremainingLabel" runat="server" Text='<%# Bind("pointsremaining") %>' />
                <br />
                vatnumber:
                <asp:Label ID="vatnumberLabel" runat="server" Text='<%# Bind("vatnumber") %>' />
                <br />
                userid:
                <asp:Label ID="useridLabel" runat="server" Text='<%# Bind("userid") %>' />
                <br />
                hearaboutus:
                <asp:Label ID="hearaboutusLabel" runat="server" Text='<%# Bind("hearaboutus") %>' />
                <br />
                taxexempt:
                <asp:Label ID="taxexemptLabel" runat="server" Text='<%# Bind("taxexempt") %>' />
                <br />
                authorized:
                <asp:Label ID="authorizedLabel" runat="server" Text='<%# Bind("authorized") %>' />
                <br />
                fb_userid:
                <asp:Label ID="fb_useridLabel" runat="server" Text='<%# Bind("fb_userid") %>' />
                <br />

                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

            </ItemTemplate>
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
        </asp:FormView><br />
   
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="contactid" DataSourceID="AccessDataSource2" EmptyDataText="Please go to &lt;a href=&quot;http://nepali.team&quot;&gt;nepali.team&lt;/a&gt;" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
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
            <asp:BoundField DataField="contacttypeid" HeaderText="contacttypeid" SortExpression="contacttypeid" Visible="False" />
            <asp:BoundField DataField="comments" HeaderText="comments" SortExpression="comments" />
            <asp:BoundField DataField="contactreason" HeaderText="contactreason" SortExpression="contactreason" />
            <asp:BoundField DataField="logincount" HeaderText="logincount" SortExpression="logincount" Visible="False" />
            <asp:BoundField DataField="lastlogindate" HeaderText="lastlogindate" SortExpression="lastlogindate" Visible="False" />
            <asp:BoundField DataField="website" HeaderText="website" SortExpression="website" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" DataFormatString="******************" />
            <asp:BoundField DataField="discount" HeaderText="discount" SortExpression="discount" />
            <asp:BoundField DataField="custother1" HeaderText="custother1" SortExpression="custother1" />
            <asp:BoundField DataField="accountno" HeaderText="accountno" SortExpression="accountno" />
            <asp:BoundField DataField="cardno" HeaderText="cardno" SortExpression="cardno" />
            <asp:BoundField DataField="cardexpires" HeaderText="cardexpires" SortExpression="cardexpires" />
            <asp:BoundField DataField="cardname" HeaderText="cardname" SortExpression="cardname" />
            <asp:BoundField DataField="cardaddress" HeaderText="cardaddress" SortExpression="cardaddress" />
            <asp:BoundField DataField="cardcvn" HeaderText="cardcvn" SortExpression="cardcvn" />
            <asp:CheckBoxField DataField="maillist" HeaderText="maillist" SortExpression="maillist" Visible="False" />
            <asp:BoundField DataField="productgroup" HeaderText="productgroup" SortExpression="productgroup" />
            <asp:CheckBoxField DataField="cookiequestion" HeaderText="cookiequestion" SortExpression="cookiequestion" />
            <asp:BoundField DataField="pointstotal" HeaderText="pointstotal" SortExpression="pointstotal" Visible="False" />
            <asp:BoundField DataField="pointsremaining" HeaderText="pointsremaining" SortExpression="pointsremaining" Visible="False" />
            <asp:BoundField DataField="vatnumber" HeaderText="vatnumber" SortExpression="vatnumber" />
            <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
            <asp:BoundField DataField="hearaboutus" HeaderText="hearaboutus" SortExpression="hearaboutus" />
            <asp:BoundField DataField="taxexempt" HeaderText="taxexempt" SortExpression="taxexempt" Visible="False" />
            <asp:BoundField DataField="authorized" HeaderText="authorized" SortExpression="authorized" Visible="False" />
            <asp:BoundField DataField="fb_userid" HeaderText="fb_userid" SortExpression="fb_userid" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="App_Data/my_products.mdb" SelectCommand="SELECT contactid, firstname, lastname, address, address2, city, state, postcode, country, company, phone, workphone, mobilephone, fax, email, contacttypeid, comments, contactreason, logincount, lastlogindate, website, [password], discount, custother1, accountno, cardno, cardexpires, cardname, cardaddress, cardcvn, maillist, productgroup, cookiequestion, pointstotal, pointsremaining, vatnumber, userid, hearaboutus, taxexempt, authorized, fb_userid FROM customers WHERE (email = ?) AND ([password] = ?)" DeleteCommand="DELETE FROM [customers] WHERE [contactid] = ?" InsertCommand="INSERT INTO [customers] ([firstname], [lastname], [address], [address2], [city], [state], [postcode], [country], [company], [phone], [workphone], [mobilephone], [fax], [email], [contacttypeid], [comments], [contactreason], [logincount], [lastlogindate], [website], [password], [discount], [custother1], [accountno], [cardno], [cardexpires], [cardname], [cardaddress], [cardcvn], [maillist], [productgroup], [cookiequestion], [pointstotal], [pointsremaining], [vatnumber], [userid], [hearaboutus], [taxexempt], [authorized], [fb_userid]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [customers] SET [firstname] = ?, [lastname] = ?, [address] = ?, [address2] = ?, [city] = ?, [state] = ?, [postcode] = ?, [country] = ?, [company] = ?, [phone] = ?, [workphone] = ?, [mobilephone] = ?, [fax] = ?, [email] = ?, [contacttypeid] = ?, [comments] = ?, [contactreason] = ?, [logincount] = ?, [lastlogindate] = ?, [website] = ?, [password] = ?, [discount] = ?, [custother1] = ?, [accountno] = ?, [cardno] = ?, [cardexpires] = ?, [cardname] = ?, [cardaddress] = ?, [cardcvn] = ?, [maillist] = ?, [productgroup] = ?, [cookiequestion] = ?, [pointstotal] = ?, [pointsremaining] = ?, [vatnumber] = ?, [userid] = ?, [hearaboutus] = ?, [taxexempt] = ?, [authorized] = ?, [fb_userid] = ? WHERE [contactid] = ?">
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
            <asp:ControlParameter ControlID="user" Name="?" PropertyName="Text" />
            <asp:ControlParameter ControlID="password" Name="?" PropertyName="Text" />
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
    <br /><asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="App_Data/my_products.mdb" SelectCommand="SELECT [contactid], [firstname], [lastname], [email], [password] FROM [customers] WHERE (([email] = ?) AND ([password] = ?))">
        <SelectParameters>
            <asp:ControlParameter ControlID="user" Name="email" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="password" Name="password" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
      <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="contactid" DataSourceID="AccessDataSource3" ShowHeader="False">
          <Columns>
              <asp:BoundField DataField="contactid" HeaderText="contactid" InsertVisible="False" ReadOnly="True" SortExpression="contactid" Visible="False" />
              <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" Visible="False" />
              <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" Visible="False" />
              <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" Visible="False" />
              <asp:BoundField DataField="password" DataFormatString="password" HeaderText="password" SortExpression="password" Visible="False" />
              <asp:ImageField DataAlternateTextField="contactid" DataImageUrlField="contactid" DataImageUrlFormatString="~/nepaliteam/photogallery/{0}.jpg">
              </asp:ImageField>
              <asp:ImageField DataAlternateTextField="contactid" DataImageUrlFormatString="~/nepaliteam/photogallery/{0}a.jpg">
              </asp:ImageField>
          </Columns>
      </asp:GridView>
      <br />
    <br><a href="fileupload.aspx">Upload your file</a></td></tr></table> 
</asp:Content>

