<%@ Page Title="" Language="VB" MasterPageFile="Site.master" AutoEventWireup="false" CodeFile="projects.aspx.vb" Inherits="projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">
    $(window).load(function () {
        $(".loader").fadeOut("slow");
    })
</script>
    <style type="text/css">
        .auto-style15 {
            width: 784px;
        }
        .auto-style17 {
            width: 298px;
        }
    </style>
    <style type="text/css">
    .modal
    {
        position: fixed;
        top: 0;
        left: 0;
        background-color: black;
        z-index: 99;
        opacity: 0.8;
        filter: alpha(opacity=80);
        -moz-opacity: 0.8;
        min-height: 100%;
        width: 100%;
    }
    .loading
    {
        font-family: Arial;
        font-size: 10pt;
        border: 5px solid #67CFF5;
        width: 200px;
        height: 100px;
        display: none;
        position: fixed;
        background-color: White;
        z-index: 999;
    }
     .dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    padding: 12px 16px;
    z-index: 1;
}

.dropdown:hover .dropdown-content {
    display: block;
}
        .auto-style21 {
            color: #666;
            font-style: normal;
            font-variant: normal;
            font-weight: normal;
            font-size: .95em;
            line-height: normal;
            font-family: Tahoma, Arial, Sans-Serif;
            border: 1px solid #dcdcdc;
            padding: 2px;
            background-color: #FEFEFE;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="AccessDataSource1" DataTextField="description" DataValueField="pid" AutoPostBack="True" CssClass="auto-style21">
    </asp:DropDownList>
    <div class="loading" align="center">
    Loading. Please wait.<br />
    <br />
    <img src="loader.gif" alt="" />
</div>
    <table><tr><td class="auto-style17">&nbsp;</td><td class="auto-style15" style="text-align: center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pid" DataSourceID="AccessDataSource2" Height="100px" ShowHeader="False" Width="400px" BorderStyle="None" BackColor="White" BorderColor="#CC9966" BorderWidth="1px" CellPadding="4" EnableModelValidation="True">
        <Columns>
            <asp:ImageField DataAlternateTextField="other1" DataImageUrlFormatString="./photoGallery/{0}.jpg" DataImageUrlField="other1">
                <ControlStyle Width="400px" />
                <ItemStyle BorderStyle="None" Width="650px" Wrap="True" />
            </asp:ImageField>
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" Visible="False" />
            <asp:BoundField DataField="comments" HeaderText="comments" SortExpression="comments" Visible="False" />
            <asp:BoundField DataField="pid" HeaderText="pid" InsertVisible="False" ReadOnly="True" SortExpression="pid" Visible="False" />
            <asp:BoundField DataField="other1" HeaderText="other1" SortExpression="other1" Visible="False" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Top" BackColor="White" BorderStyle="None" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
       
    </asp:GridView>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="pid" DataSourceID="AccessDataSource2" Height="134px" Width="535px" CssClass="DDTextBox">
        <EditItemTemplate>
            description:
            <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
            <br />
            comments:
            <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' />
            <br />
            pid:
            <asp:Label ID="pidLabel1" runat="server" Text='<%# Eval("pid") %>' />
            <br />
            other1:
            <asp:TextBox ID="other1TextBox" runat="server" Text='<%# Bind("other1") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            description:
            <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
            <br />
            comments:
            <asp:TextBox ID="commentsTextBox" runat="server" Text='<%# Bind("comments") %>' />
            <br />

            other1:
            <asp:TextBox ID="other1TextBox" runat="server" Text='<%# Bind("other1") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            &nbsp;<asp:Label ID="descriptionLabel" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0099CC" Text='<%# Bind("description") %>' />
            <br />
            &nbsp;<asp:Label ID="commentsLabel" runat="server" Font-Size="Small" ForeColor="Gray" Text='<%# Bind("comments") %>' CssClass="DDPager" />
            <br />
            <br />
            <br />
        </ItemTemplate>
        <RowStyle HorizontalAlign="Center" />
    </asp:FormView>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT [description], [comments], [pid], [other1] FROM [projects] WHERE ([pid] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="pid" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT * FROM [projects] WHERE ([description] NOT LIKE '%' + ? + '%')">
        <SelectParameters>
            <asp:Parameter DefaultValue="donate" Name="description" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource></td></tr></table>
</asp:Content>

