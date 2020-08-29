<%@ Page Title="Invest" Language="VB" MasterPageFile="site.master" AutoEventWireup="false" CodeFile="donate.aspx.vb" Inherits="donate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            width: 905px;
            height: 482px;
        }
        .auto-style16 {
            height: 104px;
            width: 62px;
        }
        .auto-style18 {
            height: 40px;
            width: 337px;
        }
        .auto-style20 {
            height: 20px;
            width: 337px;
        }
        .auto-style22 {
            height: 13px;
            width: 337px;
        }
        .auto-style24 {
            height: 78px;
        }
        .auto-style26 {
            width: 374px;
            height: 348px;
        }
        .auto-style28 {
            height: 40px;
            width: 255px;
        }
        .auto-style29 {
            height: 20px;
            width: 255px;
        }
        .auto-style30 {
            height: 13px;
            width: 255px;
        }
        .auto-style31 {
            width: 255px;
        }
        .auto-style32 {
            height: 78px;
            width: 337px;
        }
        .auto-style33 {
            width: 337px;
        }
        .auto-style34 {
            height: 322px;
            width: 337px;
        }
        .auto-style35 {
            height: 13px;
            width: 337px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
        <h1> Invest</h1><table class="auto-style15" style="background-color: #14a362; border-collapse: collapse; float: left; z-index: 1;" border="0">
        <tr><td style="background-color: #FFFFFF" colspan="2"><img alt="Give generously" class="auto-style26" longdesc="Our projects are designed to assist communities in need of critical need.  We use the funds very effctively and efficiently to help the poor people to earn their livelihoods." src="photoGallery/give.jpg" />
            
                </td>
            <td style="color: #FFFF66; vertical-align: top;" class="auto-style32">
                <br />Name: <asp:TextBox ID="Name" runat="server" BorderStyle="Groove" style="z-index: 2"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" ErrorMessage="Please enter your name." ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td style="color: #FFFF66; vertical-align: top;" class="auto-style24">
                Email:<asp:TextBox ID="Email" runat="server"></asp:TextBox><br />
               Phone: <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email" ErrorMessage="You must enter Email address."></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Enter valid email address please." ForeColor="#FF9900" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" rowspan="4" style="vertical-align: top; text-align: right;">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="AccessDataSource1" DataTextField="Price" DataValueField="pid" Font-Bold="True" Font-Size="Small" ForeColor="Yellow" DataTextFormatString="Amount ${0}00.00" Height="17px" Width="269px" style="z-index: 2">
                </asp:RadioButtonList>
            </td>
            <td style="color: #FFFF00" class="auto-style28">Card Number</td>
            <td class="auto-style18">
                <asp:TextBox ID="CardN" runat="server" Width="327px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="CardN" ErrorMessage="Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="CardN" ErrorMessage="Card Number is wrong." ForeColor="#FF9900" MaximumValue="5111111111111110" MinimumValue="311111111111111"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #FFFF66" class="auto-style29">Expiry date: MM/YY</td>
            <td class="auto-style34" style="text-align: left">
                <asp:TextBox ID="Expiry" runat="server" Width="37px"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Wrong Date" ForeColor="#FF9900" MaximumValue="12" MinimumValue="01" ControlToValidate="Expiry"></asp:RangeValidator>
                <asp:TextBox ID="TextBox1" runat="server" Width="32px"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Wrong Year" ForeColor="#FF9900" MaximumValue="27" MinimumValue="17" ControlToValidate="TextBox1"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT [price], [pid] FROM [projects] WHERE ([description] = ?)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Donate" Name="description" Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
            </td>
        </tr>
        <tr>
            <td style="color: #FFFF66" class="auto-style30">Security Number</td>
            <td class="auto-style35" style="text-align: left">
                <asp:TextBox ID="SecN" runat="server" Width="47px"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator4" runat="server" ErrorMessage="Enter Security Number" ForeColor="#FF9900" MaximumValue="999" MinimumValue="000" ControlToValidate="SecN"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="SecN" ErrorMessage="Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td style="text-align: center; vertical-align: top;" class="auto-style33">
                <asp:Button ID="pay" runat="server" Text="Process" />
            </td>
        </tr>
    </table>
    
</asp:Content>

