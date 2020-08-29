<%@ Page Title="" Language="VB" MasterPageFile="Site.master" AutoEventWireup="false" CodeFile="projects.aspx.vb" Inherits="projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .newStyle2 {
            text-align: right;
        }
        .DDDetailsTable {
            text-align: justify;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table><tr><td>
       
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="newsid" DataSourceID="AccessDataSource2" Height="134px" Width="657px" CssClass="DDTextBox" EnableModelValidation="True">
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="newsid" DataSourceID="AccessDataSource2" Height="100px" ShowHeader="False" Width="312px" BorderStyle="None" PageSize="1" AllowPaging="True" EnableModelValidation="True">
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
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="AccessDataSource3" EmptyDataText="There are no data records to display." EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" Width="566px" AllowPaging="True">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="headline" DataNavigateUrlFormatString="newsall.aspx?headline={0}" DataTextField="headline" DataTextFormatString="{0}" HeaderText="Other news" />
                <asp:BoundField DataField="cNewsStartDate" DataFormatString="{0}">
                <ItemStyle Font-Size="XX-Small" HorizontalAlign="Center" VerticalAlign="Top" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT headline, cNewsStartDate FROM news ORDER BY cNewsStartDate DESC"></asp:AccessDataSource>
        <hr style="height: 12px; background-color: #009900;" />
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT newsid, headline, newsimage, message, cNewsStartDate FROM news WHERE (headline = ?) ORDER BY newsid DESC">
        <SelectParameters>
            <asp:QueryStringParameter Name="?" QueryStringField="headline" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT [newsid], [headline], [newsimage], [other1], [message] FROM [news] ORDER BY [newsid] DESC">
    </asp:AccessDataSource></td></tr></table>
</asp:Content>

