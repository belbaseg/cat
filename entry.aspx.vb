
Partial Class edit_entry
    Inherits System.Web.UI.Page

    Protected Sub usernameTextBox_TextChanged(sender As Object, e As EventArgs)
        Dim usernameTextBox As Object = Nothing
        Session("usernameTextBox") = usernameTextBox.Text
    End Sub





    Protected Sub InsertButton_Click1(sender As Object, e As EventArgs)
        Dim usernameTextBox As Object = Nothing
        Session("usernameTextBox") = usernameTextBox.Text
    End Sub

    Protected Sub SqlDataSource1(sender As Object, e As EventArgs) Handles CreateUserWizard1.DataBinding

    End Sub
End Class
