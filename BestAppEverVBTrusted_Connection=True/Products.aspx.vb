Imports System.Data.SqlClient
Imports System.Data.Sql

Partial Class Product
    Inherits System.Web.UI.Page

    Protected Sub btnSelectProduct_Click(sender As Object, e As EventArgs) Handles btnSelectProduct.Click
        'User selects DDL values and they get stored into the row of text boxes below them.

        txtSelProd_ID.Text = DDLProd_ID.SelectedValue
        txtSelCust_ID.Text = DDLCust_ID.SelectedValue
        txtSelProdQty.Text = DDLProdQty.SelectedValue

    End Sub

    Protected Sub btnInsertProduct_Click(sender As Object, e As EventArgs) Handles btnInsertProduct.Click
        'Inserts the text boxes info into the Products table.

        Dim tmpSQL As String = "Insert Into Products (Prod_ID, Cust_ID, Quantity) Values (" + txtSelProd_ID.Text + "," + txtSelCust_ID.Text + "," + txtSelProdQty.Text + " ) "
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
        Response.Redirect("Products.aspx")

    End Sub


    Protected Sub btnRefreshDatabase_Click(sender As Object, e As EventArgs) Handles btnRefreshDatabase.Click
        'database table is read and displays last row in text boxes.

        Dim tmpSQL As String = "select * from Products "
        ' create a new SqlConnection object with the appropriate connection string 
        Dim sqlConn As New Data.SqlClient.SqlConnection("server=MIKESDELL\SQLEXPRESS;database=mike;Trusted_Connection=True;")
        ' open the connection 
        sqlConn.Open()

        Dim sqlComm As New Data.SqlClient.SqlCommand(tmpSQL, sqlConn)
        sqlComm.CommandTimeout = 0
        Dim r As Data.SqlClient.SqlDataReader = sqlComm.ExecuteReader()

        'this code reads the database table and displays it in the text boxes.
        While r.Read()
            txtSelProd_ID.Text = r("Prod_ID")
            txtSelCust_ID.Text = r("Cust_ID")
            txtSelProdQty.Text = r("Quantity")
        End While

        r.Close()
        sqlConn.Close()
    End Sub

    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        'Values already stored earlier, are updated with new DDL values.

        Dim tmpSQL As String = "Update Products Set Cust_ID =" + DDLProdUpdateCust_ID.SelectedValue + ", Quantity =" + DDLProdUpdateQty.SelectedValue + " Where Prod_ID =" + DDLUpdateProd_ID.SelectedValue
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
        Response.Redirect("Products.aspx")
    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        'Deletes from Products table using Prod_ID.

        Dim tmpSQL As String = "delete from Products where Prod_ID=" + DDLDeleteProd_ID.SelectedValue

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
        Response.Redirect("Products.aspx")
    End Sub

End Class
