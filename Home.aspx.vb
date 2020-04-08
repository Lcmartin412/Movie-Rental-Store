Option Strict On
Partial Class Home
    Inherits System.Web.UI.Page

    Protected Sub AllVideosButton_Click(sender As Object, e As EventArgs) Handles AllVideosButton.Click
        Response.Redirect("AllVideos.aspx?")
    End Sub
    Protected Sub RatingButton_Click(sender As Object, e As EventArgs) Handles RatingButton.Click
        Dim RatinglistSelection As String = RatingDropDownList.SelectedItem.ToString
        Response.Redirect("Rating.aspx?SelectedRating=" & RatinglistSelection)
    End Sub
    Protected Sub BluRay_Click(sender As Object, e As EventArgs) Handles BluRay.Click
        Response.Redirect("BluRay.aspx?SelectedMajor")
    End Sub
End Class
