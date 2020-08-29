<%@ Page Title="" Language="VB" MasterPageFile="Site.master" AutoEventWireup="false" CodeFile="people.aspx.vb" Inherits="people" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       
    <p style="text-align: center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="AccessDataSource2" EmptyDataText="There are no data records to display." GridLines="Horizontal" Width="760px" AllowSorting="True" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="firstname" SortExpression="firstname" HeaderText="First Name">
                </asp:BoundField>
                <asp:BoundField DataField="lastname" SortExpression="lastname" HeaderText="Last Name">
                </asp:BoundField>
                <asp:BoundField DataField="comments" SortExpression="comments" HeaderText="comments" Visible="False" />
                <asp:BoundField DataField="productgroup" SortExpression="productgroup" HeaderText="Group">
                </asp:BoundField>
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" Visible="False" />
                <asp:BoundField DataField="address" HeaderText="Country" SortExpression="address" />
                <asp:HyperLinkField DataNavigateUrlFields="firstname,lastname,email" DataNavigateUrlFormatString="amend.aspx?firstname={0}&amp;lastname={1}&amp;email={2}" DataTextField="firstname" DataTextFormatString="Amend" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
           
        </asp:GridView>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="AccessDataSource1" Width="780px">
            <EditItemTemplate>
                firstname:
                <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>' />
                <br />
                lastname:
                <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' />
                <br />
                comments:
                <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' />
                <br />
                productgroup:
                <asp:TextBox ID="productgroupTextBox" runat="server" Text='<%# Bind("productgroup") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                firstname:
                <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>' />
                <br />
                lastname:
                <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' />
                <br />
                comments:
                <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' />
                <br />
                productgroup:
                <asp:TextBox ID="productgroupTextBox" runat="server" Text='<%# Bind("productgroup") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="productgroupLabel" runat="server" Text='<%# Bind("productgroup") %>' Font-Size="Large" ForeColor="#0099FF" />
                <br />
                
                <asp:Label ID="firstnameLabel" runat="server" Text='<%# Bind("firstname") %>' Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="Aqua" />
                <asp:Label ID="lastnameLabel" runat="server" Text='<%# Bind("lastname") %>' Font-Bold="True" Font-Size="Medium" ForeColor="#66FFFF" />
                <br />
                <asp:Image ID="Image1" runat="server" Height="136px" ImageUrl='<%# Eval("firstname", "photoGallery/{0}.jpg") %>' Width="169px" />
                <asp:Label ID="commentsLabel" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" ForeColor="Gray" Width="400px"/>
                <br />
                <br />
                <br />

            </ItemTemplate>
            <RowStyle HorizontalAlign="Center" VerticalAlign="Top" />
        </asp:FormView>
        <asp:FormView ID="FormView2" runat="server" DataSourceID="AccessDataSource1" Width="780px" PageIndex="2">
            <EditItemTemplate>
                firstname:
                <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>' />
                <br />
                lastname:
                <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' />
                <br />
                comments:
                <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' />
                <br />
                productgroup:
                <asp:TextBox ID="productgroupTextBox" runat="server" Text='<%# Bind("productgroup") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                firstname:
                <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>' />
                <br />
                lastname:
                <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' />
                <br />
                comments:
                <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' />
                <br />
                productgroup:
                <asp:TextBox ID="productgroupTextBox" runat="server" Text='<%# Bind("productgroup") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="productgroupLabel" runat="server" Text='<%# Bind("productgroup") %>' Font-Size="Large" ForeColor="#0099FF" />
                <br />
                
                <asp:Label ID="firstnameLabel" runat="server" Text='<%# Bind("firstname") %>' Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="Aqua" />
                <asp:Label ID="lastnameLabel" runat="server" Text='<%# Bind("lastname") %>' Font-Bold="True" Font-Size="Medium" ForeColor="#66FFFF" />
                <br />
                <asp:Image ID="Image1" runat="server" Height="136px" ImageUrl='<%# Eval("firstname", "photoGallery/{0}.jpg") %>' Width="169px" />
                <asp:Label ID="commentsLabel" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" ForeColor="Gray" Width="400px" />
                <br />
                <br />
                <br />

            </ItemTemplate>
            <RowStyle HorizontalAlign="Center" VerticalAlign="Top" />
        </asp:FormView>
        <asp:FormView ID="FormView3" runat="server" DataSourceID="AccessDataSource1" Width="780px" PageIndex="1">
            <EditItemTemplate>
                firstname:
                <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>' />
                <br />
                lastname:
                <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' />
                <br />
                comments:
                <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' />
                <br />
                productgroup:
                <asp:TextBox ID="productgroupTextBox" runat="server" Text='<%# Bind("productgroup") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                firstname:
                <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>' />
                <br />
                lastname:
                <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' />
                <br />
                comments:
                <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' />
                <br />
                productgroup:
                <asp:TextBox ID="productgroupTextBox" runat="server" Text='<%# Bind("productgroup") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="productgroupLabel" runat="server" Text='<%# Bind("productgroup") %>' Font-Size="Large" ForeColor="#0099FF" />
                <br />
                
                <asp:Label ID="firstnameLabel" runat="server" Text='<%# Bind("firstname") %>' Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="Aqua" />
                <asp:Label ID="lastnameLabel" runat="server" Text='<%# Bind("lastname") %>' Font-Bold="True" Font-Size="Medium" ForeColor="#66FFFF" />
                <br />
                <asp:Image ID="Image1" runat="server" Height="136px" ImageUrl='<%# Eval("firstname", "photoGallery/{0}.jpg") %>' Width="169px" />
                <asp:Label ID="commentsLabel" runat="server" Text='<%# Bind("comments") %>' Font-Size="Small" ForeColor="Gray" Width="400px"/>
                <br />
                <br />
                <br />

            </ItemTemplate>
            <RowStyle HorizontalAlign="Center" VerticalAlign="Top" />
        </asp:FormView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT [firstname], [lastname], [comments], [productgroup] FROM [customers]"></asp:AccessDataSource>
        </p>
   
    <p>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT * FROM [customers] WHERE ([productgroup] IS NOT NULL) ORDER BY [productgroup], [firstname]">
        </asp:AccessDataSource>
    </p>
</asp:Content>

