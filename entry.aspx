<%@ Page Title="" Language="VB" MasterPageFile="Site.master" AutoEventWireup="false" CodeFile="entry.aspx.vb" Inherits="edit_entry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            width: 377px;
            height: 798px;
        }
        .auto-style16 {
            width: 380px;
            height: 798px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="z-index: 2"> <tr><td class="auto-style15"></td><td class="auto-style16">
    <asp:LoginName ID="LoginName1" runat="server" />
    <asp:Login ID="Login1" runat="server">
    </asp:Login> 
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" style="z-index: 1">
    </asp:PasswordRecovery>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="upsid" DataSourceID="AccessDataSource1" DefaultMode="Insert" style="z-index: 2">
        <EditItemTemplate>
            upsid:
            <asp:Label ID="upsidLabel1" runat="server" Text='<%# Eval("upsid") %>' />
            <br />
            xzeroweighterror:
            <asp:TextBox ID="xzeroweighterrorTextBox" runat="server" Text='<%# Bind("xzeroweighterror") %>' />
            <br />
            xautoseparateweight:
            <asp:TextBox ID="xautoseparateweightTextBox" runat="server" Text='<%# Bind("xautoseparateweight") %>' />
            <br />
            xautoseparatepackages:
            <asp:TextBox ID="xautoseparatepackagesTextBox" runat="server" Text='<%# Bind("xautoseparatepackages") %>' />
            <br />
            xsuppliershipfield:
            <asp:TextBox ID="xsuppliershipfieldTextBox" runat="server" Text='<%# Bind("xsuppliershipfield") %>' />
            <br />
            xusesupplierzip:
            <asp:TextBox ID="xusesupplierzipTextBox" runat="server" Text='<%# Bind("xusesupplierzip") %>' />
            <br />
            xindividualpackages:
            <asp:TextBox ID="xindividualpackagesTextBox" runat="server" Text='<%# Bind("xindividualpackages") %>' />
            <br />
            ups_weightunits:
            <asp:TextBox ID="ups_weightunitsTextBox" runat="server" Text='<%# Bind("ups_weightunits") %>' />
            <br />
            ups_residentialind:
            <asp:TextBox ID="ups_residentialindTextBox" runat="server" Text='<%# Bind("ups_residentialind") %>' />
            <br />
            ups_unitofmeasurement:
            <asp:TextBox ID="ups_unitofmeasurementTextBox" runat="server" Text='<%# Bind("ups_unitofmeasurement") %>' />
            <br />
            packagingtype:
            <asp:TextBox ID="packagingtypeTextBox" runat="server" Text='<%# Bind("packagingtype") %>' />
            <br />
            pickuptype:
            <asp:TextBox ID="pickuptypeTextBox" runat="server" Text='<%# Bind("pickuptype") %>' />
            <br />
            xmerchantcountry:
            <asp:TextBox ID="xmerchantcountryTextBox" runat="server" Text='<%# Bind("xmerchantcountry") %>' />
            <br />
            xmerchantstate:
            <asp:TextBox ID="xmerchantstateTextBox" runat="server" Text='<%# Bind("xmerchantstate") %>' />
            <br />
            xmerchantcity:
            <asp:TextBox ID="xmerchantcityTextBox" runat="server" Text='<%# Bind("xmerchantcity") %>' />
            <br />
            xmerchantpostcode:
            <asp:TextBox ID="xmerchantpostcodeTextBox" runat="server" Text='<%# Bind("xmerchantpostcode") %>' />
            <br />
            accesslicencenum:
            <asp:TextBox ID="accesslicencenumTextBox" runat="server" Text='<%# Bind("accesslicencenum") %>' />
            <br />
            username:
            <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
            <br />
            password:
            <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
            <br />
            developerkey:
            <asp:TextBox ID="developerkeyTextBox" runat="server" Text='<%# Bind("developerkey") %>' />
            <br />
            gatewaylocation_license:
            <asp:TextBox ID="gatewaylocation_licenseTextBox" runat="server" Text='<%# Bind("gatewaylocation_license") %>' />
            <br />
            gatewaylocation_register:
            <asp:TextBox ID="gatewaylocation_registerTextBox" runat="server" Text='<%# Bind("gatewaylocation_register") %>' />
            <br />
            xml:
            <asp:TextBox ID="xmlTextBox" runat="server" Text='<%# Bind("xml") %>' />
            <br />
            xcheckindividualproductfield:
            <asp:TextBox ID="xcheckindividualproductfieldTextBox" runat="server" Text='<%# Bind("xcheckindividualproductfield") %>' />
            <br />
            xcheckindividualproduct:
            <asp:TextBox ID="xcheckindividualproductTextBox" runat="server" Text='<%# Bind("xcheckindividualproduct") %>' />
            <br />
            xdimensionfield:
            <asp:TextBox ID="xdimensionfieldTextBox" runat="server" Text='<%# Bind("xdimensionfield") %>' />
            <br />
            ups_dimensions:
            <asp:TextBox ID="ups_dimensionsTextBox" runat="server" Text='<%# Bind("ups_dimensions") %>' />
            <br />
            gatewaylocation_paymenttesting:
            <asp:TextBox ID="gatewaylocation_paymenttestingTextBox" runat="server" Text='<%# Bind("gatewaylocation_paymenttesting") %>' />
            <br />
            gatewaylocation_payment:
            <asp:TextBox ID="gatewaylocation_paymentTextBox" runat="server" Text='<%# Bind("gatewaylocation_payment") %>' />
            <br />
            testmode:
            <asp:TextBox ID="testmodeTextBox" runat="server" Text='<%# Bind("testmode") %>' />
            <br />
            xupsacctno:
            <asp:TextBox ID="xupsacctnoTextBox" runat="server" Text='<%# Bind("xupsacctno") %>' />
            <br />
            dimensions:
            <asp:TextBox ID="dimensionsTextBox" runat="server" Text='<%# Bind("dimensions") %>' />
            <br />
            xtrace:
            <asp:TextBox ID="xtraceTextBox" runat="server" Text='<%# Bind("xtrace") %>' />
            <br />
            xtracexml:
            <asp:TextBox ID="xtracexmlTextBox" runat="server" Text='<%# Bind("xtracexml") %>' />
            <br />
            gatewaylocation_trackingtesting:
            <asp:TextBox ID="gatewaylocation_trackingtestingTextBox" runat="server" Text='<%# Bind("gatewaylocation_trackingtesting") %>' />
            <br />
            gatewaylocation_tracking:
            <asp:TextBox ID="gatewaylocation_trackingTextBox" runat="server" Text='<%# Bind("gatewaylocation_tracking") %>' />
            <br />
            xUPSDisplayNegotiatedRates:
            <asp:TextBox ID="xUPSDisplayNegotiatedRatesTextBox" runat="server" Text='<%# Bind("xUPSDisplayNegotiatedRates") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
           
            username:
            <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
            <br />
            password:
            <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
            <br />
           
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" OnClick="InsertButton_Click1" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            upsid:
            <asp:Label ID="upsidLabel" runat="server" Text='<%# Eval("upsid") %>' />
            <br />
            xzeroweighterror:
            <asp:Label ID="xzeroweighterrorLabel" runat="server" Text='<%# Bind("xzeroweighterror") %>' />
            <br />
            xautoseparateweight:
            <asp:Label ID="xautoseparateweightLabel" runat="server" Text='<%# Bind("xautoseparateweight") %>' />
            <br />
            xautoseparatepackages:
            <asp:Label ID="xautoseparatepackagesLabel" runat="server" Text='<%# Bind("xautoseparatepackages") %>' />
            <br />
            xsuppliershipfield:
            <asp:Label ID="xsuppliershipfieldLabel" runat="server" Text='<%# Bind("xsuppliershipfield") %>' />
            <br />
            xusesupplierzip:
            <asp:Label ID="xusesupplierzipLabel" runat="server" Text='<%# Bind("xusesupplierzip") %>' />
            <br />
            xindividualpackages:
            <asp:Label ID="xindividualpackagesLabel" runat="server" Text='<%# Bind("xindividualpackages") %>' />
            <br />
            ups_weightunits:
            <asp:Label ID="ups_weightunitsLabel" runat="server" Text='<%# Bind("ups_weightunits") %>' />
            <br />
            ups_residentialind:
            <asp:Label ID="ups_residentialindLabel" runat="server" Text='<%# Bind("ups_residentialind") %>' />
            <br />
            ups_unitofmeasurement:
            <asp:Label ID="ups_unitofmeasurementLabel" runat="server" Text='<%# Bind("ups_unitofmeasurement") %>' />
            <br />
            packagingtype:
            <asp:Label ID="packagingtypeLabel" runat="server" Text='<%# Bind("packagingtype") %>' />
            <br />
            pickuptype:
            <asp:Label ID="pickuptypeLabel" runat="server" Text='<%# Bind("pickuptype") %>' />
            <br />
            xmerchantcountry:
            <asp:Label ID="xmerchantcountryLabel" runat="server" Text='<%# Bind("xmerchantcountry") %>' />
            <br />
            xmerchantstate:
            <asp:Label ID="xmerchantstateLabel" runat="server" Text='<%# Bind("xmerchantstate") %>' />
            <br />
            xmerchantcity:
            <asp:Label ID="xmerchantcityLabel" runat="server" Text='<%# Bind("xmerchantcity") %>' />
            <br />
            xmerchantpostcode:
            <asp:Label ID="xmerchantpostcodeLabel" runat="server" Text='<%# Bind("xmerchantpostcode") %>' />
            <br />
            accesslicencenum:
            <asp:Label ID="accesslicencenumLabel" runat="server" Text='<%# Bind("accesslicencenum") %>' />
            <br />
            username:
            <asp:Label ID="usernameLabel" runat="server" Text='<%# Bind("username") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            <br />
            password:
            <asp:Label ID="passwordLabel" runat="server" Text='<%# Bind("password") %>' />
            <br />
            developerkey:
            <asp:Label ID="developerkeyLabel" runat="server" Text='<%# Bind("developerkey") %>' />
            <br />
            gatewaylocation_license:
            <asp:Label ID="gatewaylocation_licenseLabel" runat="server" Text='<%# Bind("gatewaylocation_license") %>' />
            <br />
            gatewaylocation_register:
            <asp:Label ID="gatewaylocation_registerLabel" runat="server" Text='<%# Bind("gatewaylocation_register") %>' />
            <br />
            xml:
            <asp:Label ID="xmlLabel" runat="server" Text='<%# Bind("xml") %>' />
            <br />
            xcheckindividualproductfield:
            <asp:Label ID="xcheckindividualproductfieldLabel" runat="server" Text='<%# Bind("xcheckindividualproductfield") %>' />
            <br />
            xcheckindividualproduct:
            <asp:Label ID="xcheckindividualproductLabel" runat="server" Text='<%# Bind("xcheckindividualproduct") %>' />
            <br />
            xdimensionfield:
            <asp:Label ID="xdimensionfieldLabel" runat="server" Text='<%# Bind("xdimensionfield") %>' />
            <br />
            ups_dimensions:
            <asp:Label ID="ups_dimensionsLabel" runat="server" Text='<%# Bind("ups_dimensions") %>' />
            <br />
            gatewaylocation_paymenttesting:
            <asp:Label ID="gatewaylocation_paymenttestingLabel" runat="server" Text='<%# Bind("gatewaylocation_paymenttesting") %>' />
            <br />
            gatewaylocation_payment:
            <asp:Label ID="gatewaylocation_paymentLabel" runat="server" Text='<%# Bind("gatewaylocation_payment") %>' />
            <br />
            testmode:
            <asp:Label ID="testmodeLabel" runat="server" Text='<%# Bind("testmode") %>' />
            <br />
            xupsacctno:
            <asp:Label ID="xupsacctnoLabel" runat="server" Text='<%# Bind("xupsacctno") %>' />
            <br />
            dimensions:
            <asp:Label ID="dimensionsLabel" runat="server" Text='<%# Bind("dimensions") %>' />
            <br />
            xtrace:
            <asp:Label ID="xtraceLabel" runat="server" Text='<%# Bind("xtrace") %>' />
            <br />
            xtracexml:
            <asp:Label ID="xtracexmlLabel" runat="server" Text='<%# Bind("xtracexml") %>' />
            <br />
            gatewaylocation_trackingtesting:
            <asp:Label ID="gatewaylocation_trackingtestingLabel" runat="server" Text='<%# Bind("gatewaylocation_trackingtesting") %>' />
            <br />
            gatewaylocation_tracking:
            <asp:Label ID="gatewaylocation_trackingLabel" runat="server" Text='<%# Bind("gatewaylocation_tracking") %>' />
            <br />
            xUPSDisplayNegotiatedRates:
            <asp:Label ID="xUPSDisplayNegotiatedRatesLabel" runat="server" Text='<%# Bind("xUPSDisplayNegotiatedRates") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
</asp:FormView>
<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data\my_products.mdb" DeleteCommand="DELETE FROM `ups_config` WHERE `upsid` = ?" InsertCommand="INSERT INTO `ups_config` ( `xzeroweighterror`, `xautoseparateweight`, `xautoseparatepackages`, `xsuppliershipfield`, `xusesupplierzip`, `xindividualpackages`, `ups_weightunits`, `ups_residentialind`, `ups_unitofmeasurement`, `packagingtype`, `pickuptype`, `xmerchantcountry`, `xmerchantstate`, `xmerchantcity`, `xmerchantpostcode`, `accesslicencenum`, `username`, `password`, `developerkey`, `gatewaylocation_license`, `gatewaylocation_register`, `xml`, `xcheckindividualproductfield`, `xcheckindividualproduct`, `xdimensionfield`, `ups_dimensions`, `gatewaylocation_paymenttesting`, `gatewaylocation_payment`, `testmode`, `xupsacctno`, `dimensions`, `xtrace`, `xtracexml`, `gatewaylocation_trackingtesting`, `gatewaylocation_tracking`, `xUPSDisplayNegotiatedRates`) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT upsid, xzeroweighterror, xautoseparateweight, xautoseparatepackages, xsuppliershipfield, xusesupplierzip, xindividualpackages, ups_weightunits, ups_residentialind, ups_unitofmeasurement, packagingtype, pickuptype, xmerchantcountry, xmerchantstate, xmerchantcity, xmerchantpostcode, accesslicencenum, username, [password], developerkey, gatewaylocation_license, gatewaylocation_register, xml, xcheckindividualproductfield, xcheckindividualproduct, xdimensionfield, ups_dimensions, gatewaylocation_paymenttesting, gatewaylocation_payment, testmode, xupsacctno, dimensions, xtrace, xtracexml, gatewaylocation_trackingtesting, gatewaylocation_tracking, xUPSDisplayNegotiatedRates FROM ups_config" UpdateCommand="UPDATE `ups_config` SET `xzeroweighterror` = ?, `xautoseparateweight` = ?, `xautoseparatepackages` = ?, `xsuppliershipfield` = ?, `xusesupplierzip` = ?, `xindividualpackages` = ?, `ups_weightunits` = ?, `ups_residentialind` = ?, `ups_unitofmeasurement` = ?, `packagingtype` = ?, `pickuptype` = ?, `xmerchantcountry` = ?, `xmerchantstate` = ?, `xmerchantcity` = ?, `xmerchantpostcode` = ?, `accesslicencenum` = ?, `username` = ?, `password` = ?, `developerkey` = ?, `gatewaylocation_license` = ?, `gatewaylocation_register` = ?, `xml` = ?, `xcheckindividualproductfield` = ?, `xcheckindividualproduct` = ?, `xdimensionfield` = ?, `ups_dimensions` = ?, `gatewaylocation_paymenttesting` = ?, `gatewaylocation_payment` = ?, `testmode` = ?, `xupsacctno` = ?, `dimensions` = ?, `xtrace` = ?, `xtracexml` = ?, `gatewaylocation_trackingtesting` = ?, `gatewaylocation_tracking` = ?, `xUPSDisplayNegotiatedRates` = ? WHERE `upsid` = ?">
    <DeleteParameters>
        <asp:Parameter Name="upsid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
       
        <asp:Parameter Name="xzeroweighterror" Type="String" />
        <asp:Parameter Name="xautoseparateweight" Type="String" />
        <asp:Parameter Name="xautoseparatepackages" Type="String" />
        <asp:Parameter Name="xsuppliershipfield" Type="String" />
        <asp:Parameter Name="xusesupplierzip" Type="String" />
        <asp:Parameter Name="xindividualpackages" Type="String" />
        <asp:Parameter Name="ups_weightunits" Type="String" />
        <asp:Parameter Name="ups_residentialind" Type="String" />
        <asp:Parameter Name="ups_unitofmeasurement" Type="String" />
        <asp:Parameter Name="packagingtype" Type="String" />
        <asp:Parameter Name="pickuptype" Type="String" />
        <asp:Parameter Name="xmerchantcountry" Type="String" />
        <asp:Parameter Name="xmerchantstate" Type="String" />
        <asp:Parameter Name="xmerchantcity" Type="String" />
        <asp:Parameter Name="xmerchantpostcode" Type="String" />
        <asp:Parameter Name="accesslicencenum" Type="String" />
        <asp:Parameter Name="username" Type="String" />
        <asp:Parameter Name="password" Type="String" />
        <asp:Parameter Name="developerkey" Type="String" />
        <asp:Parameter Name="gatewaylocation_license" Type="String" />
        <asp:Parameter Name="gatewaylocation_register" Type="String" />
        <asp:Parameter Name="xml" Type="String" />
        <asp:Parameter Name="xcheckindividualproductfield" Type="String" />
        <asp:Parameter Name="xcheckindividualproduct" Type="String" />
        <asp:Parameter Name="xdimensionfield" Type="String" />
        <asp:Parameter Name="ups_dimensions" Type="String" />
        <asp:Parameter Name="gatewaylocation_paymenttesting" Type="String" />
        <asp:Parameter Name="gatewaylocation_payment" Type="String" />
        <asp:Parameter Name="testmode" Type="String" />
        <asp:Parameter Name="xupsacctno" Type="String" />
        <asp:Parameter Name="dimensions" Type="String" />
        <asp:Parameter Name="xtrace" Type="String" />
        <asp:Parameter Name="xtracexml" Type="String" />
        <asp:Parameter Name="gatewaylocation_trackingtesting" Type="String" />
        <asp:Parameter Name="gatewaylocation_tracking" Type="String" />
        <asp:Parameter Name="xUPSDisplayNegotiatedRates" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="xzeroweighterror" Type="String" />
        <asp:Parameter Name="xautoseparateweight" Type="String" />
        <asp:Parameter Name="xautoseparatepackages" Type="String" />
        <asp:Parameter Name="xsuppliershipfield" Type="String" />
        <asp:Parameter Name="xusesupplierzip" Type="String" />
        <asp:Parameter Name="xindividualpackages" Type="String" />
        <asp:Parameter Name="ups_weightunits" Type="String" />
        <asp:Parameter Name="ups_residentialind" Type="String" />
        <asp:Parameter Name="ups_unitofmeasurement" Type="String" />
        <asp:Parameter Name="packagingtype" Type="String" />
        <asp:Parameter Name="pickuptype" Type="String" />
        <asp:Parameter Name="xmerchantcountry" Type="String" />
        <asp:Parameter Name="xmerchantstate" Type="String" />
        <asp:Parameter Name="xmerchantcity" Type="String" />
        <asp:Parameter Name="xmerchantpostcode" Type="String" />
        <asp:Parameter Name="accesslicencenum" Type="String" />
        <asp:Parameter Name="username" Type="String" />
        <asp:Parameter Name="password" Type="String" />
        <asp:Parameter Name="developerkey" Type="String" />
        <asp:Parameter Name="gatewaylocation_license" Type="String" />
        <asp:Parameter Name="gatewaylocation_register" Type="String" />
        <asp:Parameter Name="xml" Type="String" />
        <asp:Parameter Name="xcheckindividualproductfield" Type="String" />
        <asp:Parameter Name="xcheckindividualproduct" Type="String" />
        <asp:Parameter Name="xdimensionfield" Type="String" />
        <asp:Parameter Name="ups_dimensions" Type="String" />
        <asp:Parameter Name="gatewaylocation_paymenttesting" Type="String" />
        <asp:Parameter Name="gatewaylocation_payment" Type="String" />
        <asp:Parameter Name="testmode" Type="String" />
        <asp:Parameter Name="xupsacctno" Type="String" />
        <asp:Parameter Name="dimensions" Type="String" />
        <asp:Parameter Name="xtrace" Type="String" />
        <asp:Parameter Name="xtracexml" Type="String" />
        <asp:Parameter Name="gatewaylocation_trackingtesting" Type="String" />
        <asp:Parameter Name="gatewaylocation_tracking" Type="String" />
        <asp:Parameter Name="xUPSDisplayNegotiatedRates" Type="String" />
        <asp:Parameter Name="upsid" Type="Int32" />
    </UpdateParameters>
</asp:AccessDataSource>
        <br />
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server" />
                <asp:CompleteWizardStep runat="server" />
            </WizardSteps>
        </asp:CreateUserWizard>
        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="ApplicationId,LoweredUserName" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ApplicationId" HeaderText="ApplicationId" ReadOnly="True" SortExpression="ApplicationId" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="LoweredUserName" HeaderText="LoweredUserName" ReadOnly="True" SortExpression="LoweredUserName" />
                <asp:BoundField DataField="MobileAlias" HeaderText="MobileAlias" SortExpression="MobileAlias" />
                <asp:CheckBoxField DataField="IsAnonymous" HeaderText="IsAnonymous" SortExpression="IsAnonymous" />
                <asp:BoundField DataField="LastActivityDate" HeaderText="LastActivityDate" SortExpression="LastActivityDate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString1 %>" SelectCommand="SELECT * FROM [vw_aspnet_Users]"></asp:SqlDataSource>
        <br />
        <br />
 </td></tr>  </table> 
</asp:Content>

