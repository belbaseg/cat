<%@ Page Title="" Language="VB" MasterPageFile="Site.master" AutoEventWireup="false" CodeFile="people.aspx.vb" Inherits="people" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style29 {
            position: relative;
            left: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       
    <p style="text-align: center">
<br>
        </p>
    <p>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT suppliers.supplierid, suppliers.company, suppliers.city, suppliers.category, suppliers.comments, products.cname, products.retailprice, products.minimumquantity, products.supplierCompany, products.extraimage1, products.extraimage2, products.productmetatitle, products.maximumquantity, postcode.Postcode, products.features, categories.catdescription FROM ((suppliers INNER JOIN postcode ON suppliers.postcode = postcode.Postcode) INNER JOIN categories ON suppliers.category = categories.categoryid), products WHERE (suppliers.category = ?) AND (suppliers.company = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="category" QueryStringField="category" Type="Int32" />
                <asp:QueryStringParameter Name="?" QueryStringField="company" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="AccessDataSource2" EmptyDataText="There are no data records to display." GridLines="None" Width="760px" ForeColor="#333333" ShowHeader="False" CssClass="auto-style29">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="supplierid" SortExpression="supplierid" HeaderText="supplierid" InsertVisible="False" Visible="False">
                </asp:BoundField>
                <asp:BoundField DataField="company" SortExpression="company" HeaderText="company" >
                <ItemStyle VerticalAlign="Top" />
                </asp:BoundField>
                <asp:BoundField DataField="city" SortExpression="city" HeaderText="city">
                <ItemStyle VerticalAlign="Top" />
                </asp:BoundField>
                <asp:BoundField DataField="Postcode" HeaderText="Postcode" SortExpression="Postcode" Visible="False" />
                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" DataFormatString="{0} meal." Visible="False" />
                <asp:BoundField DataField="catdescription" HeaderText="catdescription" SortExpression="catdescription" >
                <ItemStyle HorizontalAlign="Justify" VerticalAlign="Top" />
                </asp:BoundField>
                <asp:BoundField DataField="comments" SortExpression="comments" HeaderText="comments">
                <ItemStyle HorizontalAlign="Justify" VerticalAlign="Top" />
                </asp:BoundField>
                <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
                </asp:BoundField>
                <asp:BoundField DataField="retailprice" HeaderText="retailprice" SortExpression="retailprice" DataFormatString="£ {0} per person." />
                <asp:BoundField DataField="minimumquantity" HeaderText="minimumquantity" SortExpression="minimumquantity" DataFormatString="Minum order {0}" >
                <ItemStyle VerticalAlign="Top" />
                </asp:BoundField>
                <asp:BoundField DataField="maximumquantity" HeaderText="maximumquantity" SortExpression="maximumquantity" DataFormatString="Max order {0}" >
                <ItemStyle VerticalAlign="Top" />
                </asp:BoundField>
                <asp:BoundField DataField="supplierCompany" HeaderText="supplierCompany" SortExpression="supplierCompany" Visible="False" />
                <asp:BoundField DataField="extraimage1" HeaderText="extraimage1" SortExpression="extraimage1" Visible="False" />
                <asp:BoundField DataField="extraimage2" HeaderText="extraimage2" SortExpression="extraimage2" Visible="False" />
                <asp:BoundField DataField="productmetatitle" DataFormatString="ingredients: {0}" HeaderText="productmetatitle" SortExpression="productmetatitle" Visible="False" />
                <asp:BoundField DataField="features" DataFormatString="{0}" HeaderText="features" SortExpression="features" >
                <ItemStyle HorizontalAlign="Justify" VerticalAlign="Top" />
                </asp:BoundField>
                <asp:HyperLinkField DataNavigateUrlFields="supplierid,Postcode,retailprice,features" DataNavigateUrlFormatString="order.aspx?company={0}&amp;pcode={1}&amp;cost={2}&amp;feature={3}" DataTextField="supplierid" DataTextFormatString="Order »">
                <ItemStyle Font-Size="Medium" />
                </asp:HyperLinkField>
                <asp:ImageField DataAlternateTextField="extraimage1" DataImageUrlField="extraimage1" DataImageUrlFormatString="{0}" NullImageUrl="logo.jpg">
                    <ControlStyle Width="70px" />
                </asp:ImageField>
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

