<%@ Page Title="" Language="VB" MasterPageFile="Site.master" AutoEventWireup="false" CodeFile="projects.aspx.vb" Inherits="projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            width: 784px;
        }
        .auto-style17 {
            width: 1939px;
        }
        .newStyle2 {
            text-align: right;
        }
        .DDDetailsTable {
            text-align: justify;
        }
        .auto-style18 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table><tr><td class="auto-style17">&nbsp;</td><td class="auto-style15" style="text-align: justify">
        <table class="auto-style18">
            <tr>
                <td style="vertical-align: top">
                    <asp:GridView ID="GridView10" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="AccessDataSource2" EmptyDataText="There are no data records to display." EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" PageSize="6" ShowHeader="False" Width="171px">
                        <Columns>
                            <asp:HyperLinkField DataNavigateUrlFields="headline" DataNavigateUrlFormatString="newsall.aspx?headline={0}" DataTextField="headline" DataTextFormatString="{0}" ShowHeader="False">
                            <ItemStyle Font-Size="XX-Small" HorizontalAlign="Left" VerticalAlign="Top" Width="90px" />
                            </asp:HyperLinkField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerSettings FirstPageText="First Page" LastPageText="&gt;" Mode="NextPreviousFirstLast" NextPageText="Next" />
                        <PagerStyle BackColor="White" Font-Size="XX-Small" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                </td>
                <td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="newsid" DataSourceID="AccessDataSource2" Height="100px" ShowHeader="False" Width="312px" BorderStyle="None" PageSize="1" AllowPaging="True">
        <Columns>
            <asp:ImageField DataAlternateTextField="newsimage" DataImageUrlField="newsimage" DataImageUrlFormatString="photogallery/{0}.jpg">
                <ItemStyle BorderStyle="None" />
            </asp:ImageField>
            <asp:BoundField DataField="newsid" HeaderText="newsid" SortExpression="newsid" InsertVisible="False" ReadOnly="True" Visible="False" />
            <asp:BoundField DataField="headline" HeaderText="headline" SortExpression="headline" Visible="False" />
            <asp:BoundField DataField="newsimage" HeaderText="newsimage" SortExpression="newsimage" Visible="False" />
            <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" Visible="False" />
        </Columns>
        <PagerSettings Visible="False" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Top" BorderStyle="None" />
    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="newsid" DataSourceID="AccessDataSource2" Height="134px" Width="657px" CssClass="DDTextBox">
        <EditItemTemplate>
            newsid:
            <asp:Label ID="newsidLabel1" runat="server" Text='<%# Eval("newsid") %>' />
            <br />
            headline:
            <asp:TextBox ID="headlineTextBox" runat="server" Text='<%# Bind("headline") %>' />
            <br />
            newsimage:
            <asp:TextBox ID="newsimageTextBox" runat="server" Text='<%# Bind("newsimage") %>' />
            <br />
            message:
            <asp:TextBox ID="messageTextBox" runat="server" Text='<%# Bind("message") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            headline:
            <asp:TextBox ID="headlineTextBox" runat="server" Text='<%# Bind("headline") %>' />
            <br />
            newsimage:
            <asp:TextBox ID="newsimageTextBox" runat="server" Text='<%# Bind("newsimage") %>' />
            <br />

            message:
            <asp:TextBox ID="messageTextBox" runat="server" Text='<%# Bind("message") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
              Date:
            <asp:Label ID="Label1" runat="server" Text='<%# Bind("cNewsStartDate", "{0:dd/MM/yyyy}")%>' CssClass="DDDetailsTable" />
            <br />
            &nbsp;<asp:Label ID="headlineLabel" runat="server" Text='<%# Bind("headline") %>' CssClass="DDMainHeader" ForeColor="#0099CC" />
            <br />
            <br />
            <asp:Label ID="messageLabel" runat="server" Text='<%# Bind("message") %>' CssClass="DDDetailsTable" />
            <br />
          
        </ItemTemplate>
        <RowStyle HorizontalAlign="Justify" VerticalAlign="Top" />
    </asp:FormView>
        <hr style="background-color: #669900; height: 27px;" />
    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="newsid" DataSourceID="AccessDataSource2" Height="100px" ShowHeader="False" Width="312px" BorderStyle="None" PageSize="1" AllowPaging="True" PageIndex="1">
        <Columns>
            <asp:ImageField DataAlternateTextField="newsimage" DataImageUrlField="newsimage" DataImageUrlFormatString="photogallery/{0}.jpg">
                <ItemStyle BorderStyle="None" />
            </asp:ImageField>
            <asp:BoundField DataField="newsid" HeaderText="newsid" SortExpression="newsid" InsertVisible="False" ReadOnly="True" Visible="False" />
            <asp:BoundField DataField="headline" HeaderText="headline" SortExpression="headline" Visible="False" />
            <asp:BoundField DataField="newsimage" HeaderText="newsimage" SortExpression="newsimage" Visible="False" />
            <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" Visible="False" />
        </Columns>
        <PagerSettings Visible="False" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Top" BorderStyle="None" />
    </asp:GridView>
    <asp:FormView ID="FormView5" runat="server" DataKeyNames="newsid" DataSourceID="AccessDataSource2" Height="134px" Width="657px" CssClass="DDTextBox" PageIndex="1">
        <EditItemTemplate>
            newsid:
            <asp:Label ID="newsidLabel1" runat="server" Text='<%# Eval("newsid") %>' />
            <br />
            headline:
            <asp:TextBox ID="headlineTextBox" runat="server" Text='<%# Bind("headline") %>' />
            <br />
            newsimage:
            <asp:TextBox ID="newsimageTextBox" runat="server" Text='<%# Bind("newsimage") %>' />
            <br />
            message:
            <asp:TextBox ID="messageTextBox" runat="server" Text='<%# Bind("message") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            headline:
            <asp:TextBox ID="headlineTextBox0" runat="server" Text='<%# Bind("headline") %>' />
            <br />
            newsimage:
            <asp:TextBox ID="newsimageTextBox0" runat="server" Text='<%# Bind("newsimage") %>' />
            <br />

            message:
            <asp:TextBox ID="messageTextBox0" runat="server" Text='<%# Bind("message") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            &nbsp;<asp:Label ID="headlineLabel" runat="server" Text='<%# Bind("headline") %>' CssClass="DDMainHeader" ForeColor="#0099CC" />
            <br />
            <br />
            <asp:Label ID="messageLabel" runat="server" Text='<%# Bind("message") %>' CssClass="DDDetailsTable" />
            <br />
            Date:
            <asp:Label ID="Label1" runat="server" CssClass="DDDetailsTable" Text='<%# Bind("cNewsStartDate", "{0:dd/MM/yyyy}")%>' />
            <br />
        </ItemTemplate>
        <RowStyle HorizontalAlign="Center" />
    </asp:FormView>
        <hr style="height: 18px; background-color: #009900;" />
    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="newsid" DataSourceID="AccessDataSource2" Height="100px" ShowHeader="False" Width="312px" BorderStyle="None" PageSize="1" AllowPaging="True" PageIndex="2">
        <Columns>
            <asp:ImageField DataAlternateTextField="newsimage" DataImageUrlField="newsimage" DataImageUrlFormatString="photogallery/{0}.jpg">
                <ItemStyle BorderStyle="None" />
            </asp:ImageField>
            <asp:BoundField DataField="newsid" HeaderText="newsid" SortExpression="newsid" InsertVisible="False" ReadOnly="True" Visible="False" />
            <asp:BoundField DataField="headline" HeaderText="headline" SortExpression="headline" Visible="False" />
            <asp:BoundField DataField="newsimage" HeaderText="newsimage" SortExpression="newsimage" Visible="False" />
            <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" Visible="False" />
        </Columns>
        <PagerSettings Visible="False" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Top" BorderStyle="None" />
    </asp:GridView>
    <asp:FormView ID="FormView6" runat="server" DataKeyNames="newsid" DataSourceID="AccessDataSource2" Height="134px" Width="657px" CssClass="DDTextBox" PageIndex="2">
        <EditItemTemplate>
            newsid:
            <asp:Label ID="newsidLabel1" runat="server" Text='<%# Eval("newsid") %>' />
            <br />
            headline:
            <asp:TextBox ID="headlineTextBox" runat="server" Text='<%# Bind("headline") %>' />
            <br />
            newsimage:
            <asp:TextBox ID="newsimageTextBox" runat="server" Text='<%# Bind("newsimage") %>' />
            <br />
            message:
            <asp:TextBox ID="messageTextBox" runat="server" Text='<%# Bind("message") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            headline:
            <asp:TextBox ID="headlineTextBox0" runat="server" Text='<%# Bind("headline") %>' />
            <br />
            newsimage:
            <asp:TextBox ID="newsimageTextBox0" runat="server" Text='<%# Bind("newsimage") %>' />
            <br />

            message:
            <asp:TextBox ID="messageTextBox0" runat="server" Text='<%# Bind("message") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            &nbsp;<asp:Label ID="headlineLabel" runat="server" Text='<%# Bind("headline") %>' CssClass="DDMainHeader" ForeColor="#0099CC" />
            <br />
            <br />
            <asp:Label ID="messageLabel" runat="server" Text='<%# Bind("message") %>' CssClass="DDDetailsTable" />
            <br />
            Date:
            <asp:Label ID="Label1" runat="server" CssClass="DDDetailsTable" Text='<%# Bind("cNewsStartDate", "{0:dd/MM/yyyy}")%>' />
            <br />
        </ItemTemplate>
        <RowStyle HorizontalAlign="Center" />
    </asp:FormView>
        <hr style="height: 12px; background-color: #009900;" />
    <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" DataKeyNames="newsid" DataSourceID="AccessDataSource2" Height="100px" ShowHeader="False" Width="312px" BorderStyle="None" PageSize="1" AllowPaging="True" PageIndex="3">
        <Columns>
            <asp:ImageField DataAlternateTextField="newsimage" DataImageUrlField="newsimage" DataImageUrlFormatString="photogallery/{0}.jpg">
                <ItemStyle BorderStyle="None" />
            </asp:ImageField>
            <asp:BoundField DataField="newsid" HeaderText="newsid" SortExpression="newsid" InsertVisible="False" ReadOnly="True" Visible="False" />
            <asp:BoundField DataField="headline" HeaderText="headline" SortExpression="headline" Visible="False" />
            <asp:BoundField DataField="newsimage" HeaderText="newsimage" SortExpression="newsimage" Visible="False" />
            <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" Visible="False" />
        </Columns>
        <PagerSettings Visible="False" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Top" BorderStyle="None" />
    </asp:GridView>
    <asp:FormView ID="FormView7" runat="server" DataKeyNames="newsid" DataSourceID="AccessDataSource2" Height="134px" Width="657px" CssClass="DDTextBox" PageIndex="3">
        <EditItemTemplate>
            newsid:
            <asp:Label ID="newsidLabel1" runat="server" Text='<%# Eval("newsid") %>' />
            <br />
            headline:
            <asp:TextBox ID="headlineTextBox" runat="server" Text='<%# Bind("headline") %>' />
            <br />
            newsimage:
            <asp:TextBox ID="newsimageTextBox" runat="server" Text='<%# Bind("newsimage") %>' />
            <br />
            message:
            <asp:TextBox ID="messageTextBox" runat="server" Text='<%# Bind("message") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            headline:
            <asp:TextBox ID="headlineTextBox0" runat="server" Text='<%# Bind("headline") %>' />
            <br />
            newsimage:
            <asp:TextBox ID="newsimageTextBox0" runat="server" Text='<%# Bind("newsimage") %>' />
            <br />

            message:
            <asp:TextBox ID="messageTextBox0" runat="server" Text='<%# Bind("message") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            &nbsp;<asp:Label ID="headlineLabel" runat="server" Text='<%# Bind("headline") %>' CssClass="DDMainHeader" ForeColor="#0099CC" />
            <br />
            <br />
            <asp:Label ID="messageLabel" runat="server" Text='<%# Bind("message") %>' CssClass="DDDetailsTable" />
            <br />
            Date:
            <asp:Label ID="Label1" runat="server" CssClass="DDDetailsTable" Text='<%# Bind("cNewsStartDate", "{0:dd/MM/yyyy}")%>' />
            <br />
        </ItemTemplate>
        <RowStyle HorizontalAlign="Center" />
    </asp:FormView>
        <hr style="background-image: url('Logo_2_d200.png'); height: 21px;" />
    <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" DataKeyNames="newsid" DataSourceID="AccessDataSource2" Height="100px" ShowHeader="False" Width="312px" BorderStyle="None" PageSize="1" AllowPaging="True" PageIndex="4">
        <Columns>
            <asp:ImageField DataAlternateTextField="newsimage" DataImageUrlField="newsimage" DataImageUrlFormatString="photogallery/{0}.jpg">
                <ItemStyle BorderStyle="None" />
            </asp:ImageField>
            <asp:BoundField DataField="newsid" HeaderText="newsid" SortExpression="newsid" InsertVisible="False" ReadOnly="True" Visible="False" />
            <asp:BoundField DataField="headline" HeaderText="headline" SortExpression="headline" Visible="False" />
            <asp:BoundField DataField="newsimage" HeaderText="newsimage" SortExpression="newsimage" Visible="False" />
            <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" Visible="False" />
        </Columns>
        <PagerSettings Visible="False" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Top" BorderStyle="None" />
    </asp:GridView>
    <asp:FormView ID="FormView8" runat="server" DataKeyNames="newsid" DataSourceID="AccessDataSource2" Height="134px" Width="657px" CssClass="DDTextBox" PageIndex="4">
        <EditItemTemplate>
            newsid:
            <asp:Label ID="newsidLabel1" runat="server" Text='<%# Eval("newsid") %>' />
            <br />
            headline:
            <asp:TextBox ID="headlineTextBox" runat="server" Text='<%# Bind("headline") %>' />
            <br />
            newsimage:
            <asp:TextBox ID="newsimageTextBox" runat="server" Text='<%# Bind("newsimage") %>' />
            <br />
            message:
            <asp:TextBox ID="messageTextBox" runat="server" Text='<%# Bind("message") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            headline:
            <asp:TextBox ID="headlineTextBox0" runat="server" Text='<%# Bind("headline") %>' />
            <br />
            newsimage:
            <asp:TextBox ID="newsimageTextBox0" runat="server" Text='<%# Bind("newsimage") %>' />
            <br />

            message:
            <asp:TextBox ID="messageTextBox0" runat="server" Text='<%# Bind("message") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            &nbsp;<asp:Label ID="headlineLabel" runat="server" Text='<%# Bind("headline") %>' CssClass="DDMainHeader" ForeColor="#0099CC" />
            <br />
            <br />
            <asp:Label ID="messageLabel" runat="server" Text='<%# Bind("message") %>' CssClass="DDDetailsTable" />
            <br />
            Date:
            <asp:Label ID="Label1" runat="server" CssClass="DDDetailsTable" Text='<%# Bind("cNewsStartDate", "{0:dd/MM/yyyy}")%>' />
            <br />
        </ItemTemplate>
        <RowStyle HorizontalAlign="Center" />
    </asp:FormView>
        <hr />
    <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" DataKeyNames="newsid" DataSourceID="AccessDataSource2" Height="100px" ShowHeader="False" Width="312px" BorderStyle="None" PageSize="1" AllowPaging="True" PageIndex="5">
        <Columns>
            <asp:ImageField DataAlternateTextField="newsimage" DataImageUrlField="newsimage" DataImageUrlFormatString="photogallery/{0}.jpg">
                <ItemStyle BorderStyle="None" />
            </asp:ImageField>
            <asp:BoundField DataField="newsid" HeaderText="newsid" SortExpression="newsid" InsertVisible="False" ReadOnly="True" Visible="False" />
            <asp:BoundField DataField="headline" HeaderText="headline" SortExpression="headline" Visible="False" />
            <asp:BoundField DataField="newsimage" HeaderText="newsimage" SortExpression="newsimage" Visible="False" />
            <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" Visible="False" />
        </Columns>
        <PagerSettings Visible="False" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Top" BorderStyle="None" />
    </asp:GridView>
        <hr style="background-color: #669900; height: 21px;" />
    <asp:FormView ID="FormView9" runat="server" DataKeyNames="newsid" DataSourceID="AccessDataSource2" Height="134px" Width="657px" CssClass="DDTextBox" PageIndex="5">
        <EditItemTemplate>
            newsid:
            <asp:Label ID="newsidLabel1" runat="server" Text='<%# Eval("newsid") %>' />
            <br />
            headline:
            <asp:TextBox ID="headlineTextBox" runat="server" Text='<%# Bind("headline") %>' />
            <br />
            newsimage:
            <asp:TextBox ID="newsimageTextBox" runat="server" Text='<%# Bind("newsimage") %>' />
            <br />
            message:
            <asp:TextBox ID="messageTextBox" runat="server" Text='<%# Bind("message") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            headline:
            <asp:TextBox ID="headlineTextBox0" runat="server" Text='<%# Bind("headline") %>' />
            <br />
            newsimage:
            <asp:TextBox ID="newsimageTextBox0" runat="server" Text='<%# Bind("newsimage") %>' />
            <br />

            message:
            <asp:TextBox ID="messageTextBox0" runat="server" Text='<%# Bind("message") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            &nbsp;<asp:Label ID="headlineLabel" runat="server" Text='<%# Bind("headline") %>' CssClass="DDMainHeader" ForeColor="#0099CC" />
            <br />
            <br />
            <asp:Label ID="messageLabel" runat="server" Text='<%# Bind("message") %>' CssClass="DDDetailsTable" />
            <br />
            Date:
            <asp:Label ID="Label1" runat="server" CssClass="DDDetailsTable" Text='<%# Bind("cNewsStartDate", "{0:dd/MM/yyyy}")%>' />
            <br />
        </ItemTemplate>
        <RowStyle HorizontalAlign="Center" />
    </asp:FormView>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT newsid, headline, newsimage, message, cNewsStartDate FROM news ORDER BY newsid DESC">
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT [newsid], [headline], [newsimage], [other1], [message] FROM [news] ORDER BY [newsid] DESC">
    </asp:AccessDataSource></td></tr></table>
</asp:Content>

