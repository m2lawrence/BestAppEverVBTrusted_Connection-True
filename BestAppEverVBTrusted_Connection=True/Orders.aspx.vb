Imports System.Data.SqlClient
Imports System.Data.Sql

Partial Class _Default
    Inherits System.Web.UI.Page

    'All my buttons code blocks are in order from top to bottom.
    Protected Sub btnSelectNumbers_Click(sender As Object, e As EventArgs) Handles btnSelectNumbers.Click
        'User selects DDL values and they get stored into the row of text boxes below them.

        txtOrder_ID.Text = DropDownOrder_ID.SelectedValue
        txtCust_ID.Text = DropDownCust_ID.SelectedValue
        txtPart_ID.Text = DropDownParts.SelectedValue
        txtQuantity.Text = DropDownQty.SelectedValue

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        'Inserts the text boxes info into the Orders table.

        Dim tmpSQL As String = "Insert Into Orders (Order_ID, Cust_ID, Part_ID, Qty) Values (" + txtOrder_ID.Text + "," + txtCust_ID.Text + "," + txtPart_ID.Text + "," + txtQuantity.Text + " ) "
        ' create a new SqlConnection object with the appropriate connection string 
        Dim sqlConn As New Data.SqlClient.SqlConnection("server=MIKESDELL\SQLEXPRESS;database=mike;Trusted_Connection=True;")
        ' open the connection 
        sqlConn.Open()

        Dim sqlComm As New Data.SqlClient.SqlCommand(tmpSQL, sqlConn)
        sqlComm.CommandTimeout = 0
        Dim r As Data.SqlClient.SqlDataReader = sqlComm.ExecuteReader()

        r.Close()
        sqlConn.Close()

        'App goes to this page to refresh it - post back.

        Response.Redirect("Orders.aspx")

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles btnRefreshDatabase.Click
        'database table is read and displays last row in text boxes.

        Dim tmpSQL As String = "select * from Orders "
        ' create a new SqlConnection object with the appropriate connection string 
        Dim sqlConn As New Data.SqlClient.SqlConnection("server=MIKESDELL\SQLEXPRESS;database=mike;Trusted_Connection=True;")
        ' open the connection 
        sqlConn.Open()

        Dim sqlComm As New Data.SqlClient.SqlCommand(tmpSQL, sqlConn)
        sqlComm.CommandTimeout = 0
        Dim r As Data.SqlClient.SqlDataReader = sqlComm.ExecuteReader()

        'this code reads the database table and displays it in the text boxes.
        While r.Read()
            txtOrder_ID.Text = r("Order_ID")
            txtCust_ID.Text = r("Cust_ID")
            txtPart_ID.Text = r("Part_ID")
            txtQuantity.Text = r("Qty")
        End While

        r.Close()
        sqlConn.Close()

    End Sub

    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        'Values already stored earlier, are updated with new DDL values.

        Dim tmpSQL As String = "Update Orders Set Qty =" + DDLUpdateQty.SelectedValue + ", Part_ID =" + DDLUpdatePart_ID.SelectedValue + ", Cust_ID =" + DDLUpdateCust_ID.SelectedValue + "Where Order_ID =" + DDLUpdateOrder_ID.SelectedValue
        ' create a new SqlConnection object with the appropriate connection string 
        Dim sqlConn As New Data.SqlClient.SqlConnection("server=MIKESDELL\SQLEXPRESS;database=mike;Trusted_Connection=True;")
        ' open the connection 
        sqlConn.Open()

        Dim sqlComm As New Data.SqlClient.SqlCommand(tmpSQL, sqlConn)
        sqlComm.CommandTimeout = 0
        Dim r As Data.SqlClient.SqlDataReader = sqlComm.ExecuteReader()

        r.Close()
        sqlConn.Close()

        'App goes to this page to refresh it - post back.
        Response.Redirect("Orders.aspx")

    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        'Deletes from Orders table using Order_ID.

        Dim tmpSQL As String = "delete from Orders where Order_ID=" + DDLOrder_ID.SelectedValue

        ' create a new SqlConnection object with the appropriate connection string 
        Dim sqlConn As New Data.SqlClient.SqlConnection("server=MIKESDELL\SQLEXPRESS;database=mike;Trusted_Connection=True;")
        ' open the connection 
        sqlConn.Open()

        Dim sqlComm As New Data.SqlClient.SqlCommand(tmpSQL, sqlConn)
        sqlComm.CommandTimeout = 0
        Dim r As Data.SqlClient.SqlDataReader = sqlComm.ExecuteReader()

        r.Close()
        sqlConn.Close()

        'App goes to this page to refresh it - post back.

        Response.Redirect("Orders.aspx")

    End Sub

End Class