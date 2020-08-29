<%@ Page Language="VB" MasterPageFile="Site.master" %>



<asp:Content ID="headContent" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style47 {
            width: 336px;
        }
    </style>
    </asp:Content>


    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   <table><tr><td class="auto-style47">
       <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="AccessDataSource2">
           <Columns>
               <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
               <asp:BoundField DataField="sessionkey" HeaderText="sessionkey" SortExpression="sessionkey" />
               <asp:BoundField DataField="sessionvaluename" HeaderText="sessionvaluename" SortExpression="sessionvaluename" />
               <asp:BoundField DataField="sessiondate" HeaderText="sessiondate" SortExpression="sessiondate" />
               <asp:BoundField DataField="sessiontime" HeaderText="sessiontime" SortExpression="sessiontime" />
               <asp:BoundField DataField="sessionnow" HeaderText="sessionnow" SortExpression="sessionnow" />
               <asp:BoundField DataField="sessionvalue" HeaderText="sessionvalue" SortExpression="sessionvalue" />
           </Columns>
       </asp:GridView>
       <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="AccessDataSource2" DefaultMode="Insert">
           <EditItemTemplate>
               id:
               <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
               <br />
               sessionkey:
               <asp:TextBox ID="sessionkeyTextBox" runat="server" Text='<%# Bind("sessionkey") %>' />
               <br />
               sessionvaluename:
               <asp:TextBox ID="sessionvaluenameTextBox" runat="server" Text='<%# Bind("sessionvaluename") %>' />
               <br />
               sessiondate:
               <asp:TextBox ID="sessiondateTextBox" runat="server" Text='<%# Bind("sessiondate") %>' />
               <br />
               sessiontime:
               <asp:TextBox ID="sessiontimeTextBox" runat="server" Text='<%# Bind("sessiontime") %>' />
               <br />
               sessionnow:
               <asp:TextBox ID="sessionnowTextBox" runat="server" Text='<%# Bind("sessionnow") %>' />
               <br />
               sessionvalue:
               <asp:TextBox ID="sessionvalueTextBox" runat="server" Text='<%# Bind("sessionvalue") %>' />
               <br />
               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
           </EditItemTemplate>
           <InsertItemTemplate>
               sessionkey:
               <asp:TextBox ID="sessionkeyTextBox" runat="server" Text='<%# Bind("sessionkey") %>' />
               <br />
               sessionvaluename:
               <asp:TextBox ID="sessionvaluenameTextBox" runat="server" Text='<%# Bind("sessionvaluename") %>' />
               <br />
               sessiondate:
               <asp:TextBox ID="sessiondateTextBox" runat="server" Text='<%# Bind("sessiondate") %>' />
               <br />
               sessiontime:
               <asp:TextBox ID="sessiontimeTextBox" runat="server" Text='<%# Bind("sessiontime") %>' />
               <br />
               sessionnow:
               <asp:TextBox ID="sessionnowTextBox" runat="server" Text='<%# Bind("sessionnow") %>' />
               <br />
               sessionvalue:
               <asp:TextBox ID="sessionvalueTextBox" runat="server" Text='<%# Bind("sessionvalue") %>' />
               <br />
               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
           </InsertItemTemplate>
           <ItemTemplate>
               id:
               <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
               <br />
               sessionkey:
               <asp:Label ID="sessionkeyLabel" runat="server" Text='<%# Bind("sessionkey") %>' />
               <br />
               sessionvaluename:
               <asp:Label ID="sessionvaluenameLabel" runat="server" Text='<%# Bind("sessionvaluename") %>' />
               <br />
               sessiondate:
               <asp:Label ID="sessiondateLabel" runat="server" Text='<%# Bind("sessiondate") %>' />
               <br />
               sessiontime:
               <asp:Label ID="sessiontimeLabel" runat="server" Text='<%# Bind("sessiontime") %>' />
               <br />
               sessionnow:
               <asp:Label ID="sessionnowLabel" runat="server" Text='<%# Bind("sessionnow") %>' />
               <br />
               sessionvalue:
               <asp:Label ID="sessionvalueLabel" runat="server" Text='<%# Bind("sessionvalue") %>' />
               <br />
               <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
               &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
               &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
           </ItemTemplate>
       </asp:FormView>
       <br />
       <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="App_Data\my_products.mdb" SelectCommand="SELECT * FROM [sitesessions]" DeleteCommand="DELETE FROM [sitesessions] WHERE [id] = ?" InsertCommand="INSERT INTO [sitesessions] ([sessionkey], [sessionvaluename], [sessiondate], [sessiontime], [sessionnow], [sessionvalue]) VALUES (?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [sitesessions] SET [sessionkey] = ?, [sessionvaluename] = ?, [sessiondate] = ?, [sessiontime] = ?, [sessionnow] = ?, [sessionvalue] = ? WHERE [id] = ?">
                                      <DeleteParameters>
                                          <asp:Parameter Name="id" Type="Int32" />
                                      </DeleteParameters>
                                      <InsertParameters>
                                          <asp:Parameter Name="id" Type="Int32" />
                                          <asp:Parameter Name="sessionkey" Type="String" />
                                          <asp:Parameter Name="sessionvaluename" Type="String" />
                                          <asp:Parameter Name="sessiondate" Type="DateTime" />
                                          <asp:Parameter Name="sessiontime" Type="DateTime" />
                                          <asp:Parameter Name="sessionnow" Type="String" />
                                          <asp:Parameter Name="sessionvalue" Type="String" />
                                      </InsertParameters>
                                      <UpdateParameters>
                                          <asp:Parameter Name="sessionkey" Type="String" />
                                          <asp:Parameter Name="sessionvaluename" Type="String" />
                                          <asp:Parameter Name="sessiondate" Type="DateTime" />
                                          <asp:Parameter Name="sessiontime" Type="DateTime" />
                                          <asp:Parameter Name="sessionnow" Type="String" />
                                          <asp:Parameter Name="sessionvalue" Type="String" />
                                          <asp:Parameter Name="id" Type="Int32" />
                                      </UpdateParameters>
</asp:AccessDataSource>
       </td><td></td></tr></table>
        </asp:Content>


