<%@ Page Title="" Language="VB" MasterPageFile="Site.master" AutoEventWireup="false" CodeFile="people.aspx.vb" Inherits="people" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       
    <p style="text-align: center">
<br>
        </p>
    <p>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.supplierid, suppliers.company, suppliers.city, suppliers.category, suppliers.comments, products.cname, products.retailprice, products.minimumquantity, products.supplierCompany, products.extraimage1, products.extraimage2, products.productmetatitle, products.maximumquantity, postcode.Postcode, products.features, categories.catdescription FROM ((suppliers INNER JOIN postcode ON suppliers.postcode = postcode.Postcode) INNER JOIN categories ON suppliers.category = categories.categoryid), products WHERE (suppliers.category = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="category" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="AccessDataSource2" EmptyDataText="There are no data records to display." GridLines="None" Width="760px" ForeColor="#333333" ShowHeader="False">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="supplierid" SortExpression="supplierid" HeaderText="supplierid" InsertVisible="False" Visible="False">
                </asp:BoundField>
                <asp:BoundField DataField="company" SortExpression="company" HeaderText="company" />
                <asp:BoundField DataField="city" SortExpression="city" HeaderText="city">
                </asp:BoundField>
                <asp:BoundField DataField="Postcode" HeaderText="Postcode" SortExpression="Postcode" />
                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" DataFormatString="{0} meal." Visible="False" />
                <asp:BoundField DataField="catdescription" HeaderText="catdescription" SortExpression="catdescription" />
                <asp:BoundField DataField="comments" SortExpression="comments" HeaderText="comments">
                </asp:BoundField>
                <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
                <asp:BoundField DataField="retailprice" HeaderText="retailprice" SortExpression="retailprice" DataFormatString="£ {0} per person." />
                <asp:BoundField DataField="minimumquantity" HeaderText="minimumquantity" SortExpression="minimumquantity" DataFormatString="Minum order {0}" />
                <asp:BoundField DataField="maximumquantity" HeaderText="maximumquantity" SortExpression="maximumquantity" DataFormatString="Max order {0}" />
                <asp:BoundField DataField="supplierCompany" HeaderText="supplierCompany" SortExpression="supplierCompany" Visible="False" />
                <asp:BoundField DataField="extraimage1" HeaderText="extraimage1" SortExpression="extraimage1" Visible="False" />
                <asp:BoundField DataField="extraimage2" HeaderText="extraimage2" SortExpression="extraimage2" Visible="False" />
                <asp:BoundField DataField="productmetatitle" DataFormatString="ingredients: {0}" HeaderText="productmetatitle" SortExpression="productmetatitle" Visible="False" />
                <asp:BoundField DataField="features" DataFormatString="{0}" HeaderText="features" SortExpression="features" />
                <asp:HyperLinkField DataNavigateUrlFields="supplierid,Postcode,retailprice,features" DataNavigateUrlFormatString="order.aspx?company={0}&amp;pcode={1}&amp;cost={2}&amp;feature={3}" DataTextField="supplierid" DataTextFormatString="Order »">
                <ItemStyle Font-Size="Medium" />
                </asp:HyperLinkField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
           
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
           
        </asp:GridView>
    </p>
</asp:Content>

