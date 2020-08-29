<%@ Page Title="" Language="VB" MasterPageFile="Site.master" AutoEventWireup="false" CodeFile="people.aspx.vb" Inherits="people" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       
    <p style="text-align: center">
        <asp:FormView ID="FormView1" runat="server" DataSourceID="AccessDataSource1" Width="780px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" GridLines="Both">
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
            <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
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
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle HorizontalAlign="Center" VerticalAlign="Top" BackColor="White" ForeColor="#003399" />
        </asp:FormView>
        <asp:FormView ID="FormView2" runat="server" DataSourceID="AccessDataSource1" Width="780px" PageIndex="2" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" GridLines="Both">
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
            <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
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
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle HorizontalAlign="Center" VerticalAlign="Top" BackColor="White" ForeColor="#003399" />
        </asp:FormView>
        <asp:FormView ID="FormView3" runat="server" DataSourceID="AccessDataSource1" Width="780px" PageIndex="1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" GridLines="Both" AllowPaging="True">
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
            <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
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
            <PagerSettings Mode="NextPrevious" NextPageText="Next Page" PreviousPageText="Previous----------" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle HorizontalAlign="Center" VerticalAlign="Top" BackColor="White" ForeColor="#003399" />
        </asp:FormView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT [firstname], [lastname], [comments], [productgroup] FROM [customers]"></asp:AccessDataSource>
        </p>
   </p>
</asp:Content>

