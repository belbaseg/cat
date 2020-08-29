<%@ Page Title="" Language="VB" MasterPageFile="Site.master" AutoEventWireup="false" CodeFile="enter.aspx.vb" Inherits="enter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            margin-right: 181px;
        }
        .auto-style16 {
            z-index: 2;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style16" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Width="590px">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
    </asp:Login>
    <br />
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="supplierid" DataSourceID="AccessDataSource4">
        <EditItemTemplate>
            supplierid:
            <asp:Label ID="supplieridLabel1" runat="server" Text='<%# Eval("supplierid") %>' />
            <br />
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            supplieruserid:
            <asp:TextBox ID="supplieruseridTextBox" runat="server" Text='<%# Bind("supplieruserid") %>' />
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
            comments:
            <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' />
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
            supplierpassword:
            <asp:TextBox ID="supplierpasswordTextBox" runat="server" Text='<%# Bind("supplierpassword") %>' />
            <br />
            accountno:
            <asp:TextBox ID="accountnoTextBox" runat="server" Text='<%# Bind("accountno") %>' />
            <br />
            template:
            <asp:TextBox ID="templateTextBox" runat="server" Text='<%# Bind("template") %>' />
            <br />
            commissionrate:
            <asp:TextBox ID="commissionrateTextBox" runat="server" Text='<%# Bind("commissionrate") %>' />
            <br />
            other1:
            <asp:TextBox ID="other1TextBox" runat="server" Text='<%# Bind("other1") %>' />
            <br />
            category:
            <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            supplieruserid:
            <asp:TextBox ID="supplieruseridTextBox" runat="server" Text='<%# Bind("supplieruserid") %>' />
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
            comments:
            <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' />
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
            supplierpassword:
            <asp:TextBox ID="supplierpasswordTextBox" runat="server" Text='<%# Bind("supplierpassword") %>' />
            <br />
            accountno:
            <asp:TextBox ID="accountnoTextBox" runat="server" Text='<%# Bind("accountno") %>' />
            <br />
            template:
            <asp:TextBox ID="templateTextBox" runat="server" Text='<%# Bind("template") %>' />
            <br />
            commissionrate:
            <asp:TextBox ID="commissionrateTextBox" runat="server" Text='<%# Bind("commissionrate") %>' />
            <br />
            other1:
            <asp:TextBox ID="other1TextBox" runat="server" Text='<%# Bind("other1") %>' />
            <br />
            category:
            <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            supplierid:
            <asp:Label ID="supplieridLabel" runat="server" Text='<%# Eval("supplierid") %>' />
            <br />
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
            <br />
            supplieruserid:
            <asp:Label ID="supplieruseridLabel" runat="server" Text='<%# Bind("supplieruserid") %>' />
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
            comments:
            <asp:Label ID="commentsLabel" runat="server" Text='<%# Bind("comments") %>' />
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
            supplierpassword:
            <asp:Label ID="supplierpasswordLabel" runat="server" Text='<%# Bind("supplierpassword") %>' />
            <br />
            accountno:
            <asp:Label ID="accountnoLabel" runat="server" Text='<%# Bind("accountno") %>' />
            <br />
            template:
            <asp:Label ID="templateLabel" runat="server" Text='<%# Bind("template") %>' />
            <br />
            commissionrate:
            <asp:Label ID="commissionrateLabel" runat="server" Text='<%# Bind("commissionrate") %>' />
            <br />
            other1:
            <asp:Label ID="other1Label" runat="server" Text='<%# Bind("other1") %>' />
            <br />
            category:
            <asp:Label ID="categoryLabel" runat="server" Text='<%# Bind("category") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="supplierid" DataSourceID="AccessDataSource4">
        <Columns>
            <asp:BoundField DataField="supplierid" HeaderText="supplierid" InsertVisible="False" ReadOnly="True" SortExpression="supplierid" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="supplieruserid" HeaderText="supplieruserid" SortExpression="supplieruserid" />
            <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
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
            <asp:BoundField DataField="comments" HeaderText="comments" SortExpression="comments" />
            <asp:BoundField DataField="logincount" HeaderText="logincount" SortExpression="logincount" />
            <asp:BoundField DataField="lastlogindate" HeaderText="lastlogindate" SortExpression="lastlogindate" />
            <asp:BoundField DataField="website" HeaderText="website" SortExpression="website" />
            <asp:BoundField DataField="supplierpassword" HeaderText="supplierpassword" SortExpression="supplierpassword" />
            <asp:BoundField DataField="accountno" HeaderText="accountno" SortExpression="accountno" />
            <asp:BoundField DataField="template" HeaderText="template" SortExpression="template" />
            <asp:BoundField DataField="commissionrate" HeaderText="commissionrate" SortExpression="commissionrate" />
            <asp:BoundField DataField="other1" HeaderText="other1" SortExpression="other1" />
            <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:AccessDataSource ID="AccessDataSource4" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT * FROM [suppliers]" DeleteCommand="DELETE FROM [suppliers] WHERE [supplierid] = ?" InsertCommand="INSERT INTO [suppliers] ([supplierid], [name], [supplieruserid], [firstname], [lastname], [address], [city], [state], [postcode], [country], [company], [phone], [workphone], [mobilephone], [fax], [email], [comments], [logincount], [lastlogindate], [website], [supplierpassword], [accountno], [template], [commissionrate], [other1], [category]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [suppliers] SET [name] = ?, [supplieruserid] = ?, [firstname] = ?, [lastname] = ?, [address] = ?, [city] = ?, [state] = ?, [postcode] = ?, [country] = ?, [company] = ?, [phone] = ?, [workphone] = ?, [mobilephone] = ?, [fax] = ?, [email] = ?, [comments] = ?, [logincount] = ?, [lastlogindate] = ?, [website] = ?, [supplierpassword] = ?, [accountno] = ?, [template] = ?, [commissionrate] = ?, [other1] = ?, [category] = ? WHERE [supplierid] = ?">
        <DeleteParameters>
            <asp:Parameter Name="supplierid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="supplierid" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="supplieruserid" Type="String" />
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="address" Type="String" />
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
            <asp:Parameter Name="comments" Type="String" />
            <asp:Parameter Name="logincount" Type="Int32" />
            <asp:Parameter Name="lastlogindate" Type="DateTime" />
            <asp:Parameter Name="website" Type="String" />
            <asp:Parameter Name="supplierpassword" Type="String" />
            <asp:Parameter Name="accountno" Type="String" />
            <asp:Parameter Name="template" Type="String" />
            <asp:Parameter Name="commissionrate" Type="Single" />
            <asp:Parameter Name="other1" Type="String" />
            <asp:Parameter Name="category" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="supplieruserid" Type="String" />
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="address" Type="String" />
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
            <asp:Parameter Name="comments" Type="String" />
            <asp:Parameter Name="logincount" Type="Int32" />
            <asp:Parameter Name="lastlogindate" Type="DateTime" />
            <asp:Parameter Name="website" Type="String" />
            <asp:Parameter Name="supplierpassword" Type="String" />
            <asp:Parameter Name="accountno" Type="String" />
            <asp:Parameter Name="template" Type="String" />
            <asp:Parameter Name="commissionrate" Type="Single" />
            <asp:Parameter Name="other1" Type="String" />
            <asp:Parameter Name="category" Type="Int32" />
            <asp:Parameter Name="supplierid" Type="Int32" />
        </UpdateParameters>
</asp:AccessDataSource>
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Width="823px">
        <SubmitButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <SuccessTextStyle Font-Bold="True" ForeColor="#990000" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
    </asp:PasswordRecovery>
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style15" Font-Names="Verdana" Font-Size="0.8em" Width="860px">
        <ContinueButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284E98" />
        <CreateUserButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284E98" />
        <TextBoxStyle ForeColor="#666666" />
        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
        <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
        <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284E98" />
        <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" ForeColor="White" />
        <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
        <StepStyle Font-Size="0.8em" />
    </asp:CreateUserWizard>
</asp:Content>

