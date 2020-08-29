Imports System.IO


Partial Class fileupload
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim UpPath As String
        Dim UpName As String
        UpPath = "\\boswinfs02\home\users\web\b2907\ez.karnalee\can\photoGallery"
        UpName = Dir(UpPath, vbDirectory)
        If UpName = "" Then
            MkDir("\\boswinfs02\home\users\web\b2907\ez.karnalee\can\photoGallery\")
        End If

    End Sub


    Protected Sub UploadButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles UploadButton.Click
        FileName.InnerHtml = FileField.PostedFile.FileName
        FileContent.InnerHtml = FileField.PostedFile.ContentType
        FileSize.InnerHtml = FileField.PostedFile.ContentLength
        UploadDetails.Visible = True

        Dim strFileName As String
        strFileName = FileField.PostedFile.FileName
        Dim c As String = System.IO.Path.GetFileName(strFileName) ' We don't need the path, just the name.

        Try
            Dim Current As String
            Dim Root As String

            Current = Directory.GetCurrentDirectory()
            Root = Directory.GetDirectoryRoot(Current)
            Dim str1 As String


            'System.out.println("Filename = " +c)
            Try

                'Span1.InnerHtml = "Current dir :::  " + Current + c + " " + "
                FileField.PostedFile.SaveAs(Server.MapPath(".\photoGallery\") & c)

                'Server.MapPath(".\photoGallery\") & c
                'str1 = Current + "\photoGallery\" + c + " "


            Catch Ex As Exception



            End Try



        Catch Exp As Exception
            'Span1.InnerHtml = "Some Error occured please send by email. info@nepali.team फाईल अपलोड हुन सकेन । कृपया फाईल ईमेलबाट पठाउनुहोस् । "

            UploadDetails.Visible = False
        End Try

    End Sub
End Class
