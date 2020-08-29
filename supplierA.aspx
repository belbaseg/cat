<%@ Page Title="" Language="VB" MasterPageFile="Site.master" AutoEventWireup="false" CodeFile="people.aspx.vb" Inherits="people" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       
    <p style="text-align: center">
<br>
        </p>
    <p>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.supplierid, suppliers.company, suppliers.city, suppliers.category, suppliers.comments, products.cname, products.retailprice, products.minimumquantity, products.supplierCompany, products.extraimage1, products.extraimage2, products.productmetatitle FROM suppliers, products WHERE (suppliers.category = ?) AND (suppliers.company = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="category" QueryStringField="category" Type="Int32" />
                <asp:QueryStringParameter Name="company" QueryStringField="company" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderStyle="None" BorderWidth="3px" CellPadding="4" DataSourceID="AccessDataSource2" EmptyDataText="There are no data records to display." GridLines="Horizontal" Width="760px">
            <Columns>
                <asp:BoundField DataField="supplierid" SortExpression="supplierid" HeaderText="supplierid" InsertVisible="False">
                </asp:BoundField>
                <asp:BoundField DataField="company" SortExpression="company" HeaderText="company" />
                <asp:BoundField DataField="city" SortExpression="city" HeaderText="city">
                </asp:BoundField>
                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                <asp:BoundField DataField="comments" SortExpression="comments" HeaderText="comments">
                </asp:BoundField>
                <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
                <asp:BoundField DataField="retailprice" HeaderText="retailprice" SortExpression="retailprice" />
                <asp:BoundField DataField="minimumquantity" HeaderText="minimumquantity" SortExpression="minimumquantity" />
                <asp:BoundField DataField="supplierCompany" HeaderText="supplierCompany" SortExpression="supplierCompany" />
                <asp:BoundField DataField="extraimage1" HeaderText="extraimage1" SortExpression="extraimage1" />
                <asp:BoundField DataField="extraimage2" HeaderText="extraimage2" SortExpression="extraimage2" />
                <asp:BoundField DataField="productmetatitle" HeaderText="productmetatitle" SortExpression="productmetatitle" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
           
        </asp:GridView>
    </p>
</asp:Content>

