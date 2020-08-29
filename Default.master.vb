
Partial Class _Default
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub BindDataList()
        Dim dir As New IO.DirectoryInfo(MapPath("UploadedUserFiles"))
        Dim files As IO.FileInfo() = dir.GetFiles()
        Dim listItems As New ArrayList()
        For Each info As IO.FileInfo In files
            listItems.Add(info)
        Next
        dtlist.DataSource = listItems
        dtlist.DataBind()
    End Sub
End Class

