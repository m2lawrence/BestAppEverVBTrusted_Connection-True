
Partial Class Login
    Inherits System.Web.UI.Page

    'On "Page Load" code:
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Page H1 Title:
        Session("Header") = "Please Login here"
    End Sub

    'Click the "OK" button to do this:
    Protected Sub butOK_Click(sender As Object, e As EventArgs) Handles butOK.Click
        'If name/password match, hide login panel and show message.

        If txtUsername.Text = "m" And txtPassword.Text = "m" Then
            pnlLogon.Visible = False
            Response.Redirect("Orders.aspx")
        Else
            txtPassword.Text = ""
            lblError.Text = "Please try again"
        End If

        If txtUsername.Text = "admin" And txtPassword.Text = "admin" Then
            pnlLogon.Visible = False
            Response.Redirect("Orders.aspx")
        Else
            txtPassword.Text = ""
            lblError.Text = "Please try again"
        End If
    End Sub

End Class
