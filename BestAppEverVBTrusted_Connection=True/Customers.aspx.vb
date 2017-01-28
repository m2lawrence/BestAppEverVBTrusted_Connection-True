Imports System.Data.SqlClient
Imports System.Data.Sql

Partial Class Customers
    Inherits System.Web.UI.Page

    Protected Sub btnSelect_Click(sender As Object, e As EventArgs) Handles btnSelect.Click
        'Customer inputs info and this Select Button moves it into the text boxes below.
        txtSelectCust_ID.Text = DDLCust_ID.SelectedValue
        txtSelectName.Text = txtName.Text
        txtSelectAddress.Text = txtAddress.Text
        txtSelectEmail.Text = txtEmail.Text
        txtSelectMobile.Text = txtMobile.Text

    End Sub

    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        'Inserts the text boxes info into the Customer table.

        'INSERT INTO table, SET column= .Net DropDownList.SelectedValue, Where    
        'Dim tmpSQL As String = "INSERT INTO Customer (Name) VALUES ('" + TextBoxCustName.Text + "');"

        Dim tmpSQL As String = "Insert Into Customer (Cust_ID, Name, Address, Email, Mobile) Values ('" + txtSelectCust_ID.Text + "','" + txtSelectName.Text + "','" + txtSelectAddress.Text + "','" + txtSelectEmail.Text + "','" + txtSelectMobile.Text + "' ) "
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

        Response.Redirect("Customers.aspx")

    End Sub
    Protected Sub btnRefreshDatabase_Click(sender As Object, e As EventArgs) Handles btnRefreshDatabaseCustomer.Click
        'database table is read and displays last row in text boxes.

        Dim tmpSQL As String = "select * from Customer "
        ' create a new SqlConnection object with the appropriate connection string 
        Dim sqlConn As New Data.SqlClient.SqlConnection("server=MIKESDELL\SQLEXPRESS;database=mike;Trusted_Connection=True;")
        ' open the connection 
        sqlConn.Open()

        Dim sqlComm As New Data.SqlClient.SqlCommand(tmpSQL, sqlConn)
        sqlComm.CommandTimeout = 0
        Dim r As Data.SqlClient.SqlDataReader = sqlComm.ExecuteReader()

        'this code reads the database table and displays it in the text boxes.
        While r.Read()
            txtSelectCust_ID.Text = r("Cust_ID")
            txtSelectName.Text = r("Name")
            txtSelectAddress.Text = r("Address")
            txtSelectEmail.Text = r("Email")
            txtSelectMobile.Text = r("Mobile")
        End While

        r.Close()
        sqlConn.Close()

    End Sub

    Protected Sub btnUpdateCustomer_Click(sender As Object, e As EventArgs) Handles btnUpdateCustomer.Click
        'Values already stored earlier, are updated with new DDL values.

        Dim tmpSQL As String = "Update Customer Set Name ='" + txtUpdateName.Text + "', Address ='" + txtUpdateAddress.Text + "', Email ='" + txtUpdateEmail.Text + "', Mobile ='" + txtUpdateMobile.Text + "'Where Cust_ID =" + DDLUpdateCust_ID.SelectedValue
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

        Response.Redirect("Customers.aspx")
    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDeleteCustomer.Click
        'Deletes from Customer table using Cust_ID.

        Dim tmpSQL As String = "delete from Customer where Cust_ID=" + DDLDeleteCust_ID.SelectedValue

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

        Response.Redirect("Customers.aspx")

    End Sub

End Class
