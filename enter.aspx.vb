
Partial Class enter
    Inherits System.Web.UI.Page
    Using System.Data;
        Using system.Data.OleDb;
    
    {  
        If Not (!IsPostBack) Then

            End If
            Return TextBox1.Focus(); // blink cursor In TextBox1  
    }  
    Protected void Button1_Click(Object sender, EventArgs e)  
    {  
        String sql; int row;  
        OleDbConnection con = New OleDbConnection();  
        // establish connection  
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("my_products.mdb");  
        con.Open(); // connection open  
        // sql query  
        sql = "select count(*) from login where user='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'";  
        OleDbCommand cmd = New OleDbCommand(sql, con);  
        row = (Int())cmd.ExecuteScalar(); // cast into Integer And ExecuteScalar() Get Single value from database.   
        con.Close(); // connection close  
        If (row > 0) Then
                Response.Redirect("Default.aspx");  
        Else
                Label2.Text = "Username or Password is invalid...";  
    }  
    End Sub
End Class
