<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Products.aspx.vb" Inherits="Product" %>
 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

    <!-- Custom CSS -->
    <link href="Login.css" rel="stylesheet">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Architects+Daughter' rel='stylesheet' type='text/css'>
</head>
<body>
    <form id="form1" runat="server">
   <div>
    
    <!-- This is code from the previous tutorial with the following changes -->

    <!-- navbar-fixed-top topnav -->
    <nav class="navbar navbar-default navbar-fixed-top topnav">

        <!-- topnav -->
        <div class="container topnav">
             
                 <!-- Logo -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainNavBar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="#" class="navbar-brand">Products</a>
            </div>

            <!-- Menu Items -->
            <div class="collapse navbar-collapse" id="mainNavBar">
                <ul class="nav navbar-nav">
                    <li class="active"><li><a href="Orders.aspx">Orders</a></li>
                    <li><a href="Products.aspx">Products</a></li>
                    <li><a href="Customers.aspx">Customers</a></li>
           
                    <!-- DropDown Menu -->
            <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle ="dropdown">Profile <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="Orders.aspx">Orders</a></li>
                    <li><a href="Products.aspx">Products</a></li>
                    <li><a href="Customers.aspx">Customers</a></li>
               </ul>
           </li>
        </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Login.aspx">Log Out</a></li>
                </ul> 
            </div>
        </div>
    </nav>


<!-- Banner header section -->
    <div class="intro-banner">
        <br /><br />
        <asp:DropDownList ID="DDLProd_ID" runat="server" Height="16px" Width="44px" ForeColor="Maroon">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
&nbsp;Product ID: Unique Key.<br />
        <br />
        <asp:DropDownList ID="DDLCust_ID" runat="server" Height="16px" Width="44px" ForeColor="Maroon">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
&nbsp;Customer ID<br />
        <br />
        <asp:DropDownList ID="DDLProdQty" runat="server" Height="16px" Width="44px" ForeColor="Maroon">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
&nbsp;Quantity<br />
        <asp:Button ID="btnSelectProduct" runat="server" BackColor="Maroon" ForeColor="Yellow" Text="Select Product" />
        <br />
        <br />
        <asp:TextBox ID="txtSelProd_ID" runat="server" ForeColor="Maroon"></asp:TextBox>
&nbsp;
        <asp:TextBox ID="txtSelCust_ID" runat="server" ForeColor="Maroon"></asp:TextBox>
&nbsp;
        <asp:TextBox ID="txtSelProdQty" runat="server" ForeColor="Maroon"></asp:TextBox>
&nbsp;<br />
        <asp:Button ID="btnInsertProduct" runat="server" Text="Insert into Database" BackColor="Maroon" ForeColor="Yellow" Height="36px" Width="154px" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataProd" AllowSorting="True" DataKeyNames="Prod_ID" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="624px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Prod_ID" HeaderText="Prod_ID" ReadOnly="True" SortExpression="Prod_ID" />
                <asp:BoundField DataField="Cust_ID" HeaderText="Cust_ID" SortExpression="Cust_ID" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataProd" runat="server" ConnectionString="<%$ ConnectionStrings:mikeConString1 %>" SelectCommand="SELECT * FROM [Products] ORDER BY [Prod_ID]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="btnRefreshDatabase" runat="server" Text="Display Last Entry In Database" BackColor="Maroon" ForeColor="Yellow" Height="41px" Width="221px" />
        <br />
        <br />
        Update the database:<br />
        <asp:DropDownList ID="DDLUpdateProd_ID" runat="server" Height="16px" Width="44px" ForeColor="Maroon" DataSourceID="SqlDataS1" DataTextField="Prod_ID" DataValueField="Prod_ID">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataS1" runat="server" ConnectionString="<%$ ConnectionStrings:mikeConString1 %>" SelectCommand="SELECT [Prod_ID] FROM [Products]"></asp:SqlDataSource>
        &nbsp;Product ID<br />
        <br />
        <asp:DropDownList ID="DDLProdUpdateCust_ID" runat="server" ForeColor="Maroon">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        &nbsp;Customer ID<br />
        <br />
        <asp:DropDownList ID="DDLProdUpdateQty" runat="server" ForeColor="Maroon">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
&nbsp;Quantity<br />
        <asp:Button ID="btnUpdate" runat="server" BackColor="Maroon" ForeColor="Yellow" Height="41px" Text="Update" Width="85px" />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataProd" AllowSorting="True" DataKeyNames="Prod_ID" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="624px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Prod_ID" HeaderText="Prod_ID" ReadOnly="True" SortExpression="Prod_ID" />
                <asp:BoundField DataField="Cust_ID" HeaderText="Cust_ID" SortExpression="Cust_ID" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <br />Product ID number to delete:<br />
        <asp:DropDownList ID="DDLDeleteProd_ID" runat="server" ForeColor="Maroon" DataSourceID="SqlDataS1" DataTextField="Prod_ID" DataValueField="Prod_ID">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="btnDelete" runat="server" BackColor="Maroon" ForeColor="Yellow" Height="35px" Text="Delete" Width="90px" />
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataProd" AllowSorting="True" DataKeyNames="Prod_ID" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="624px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Prod_ID" HeaderText="Prod_ID" ReadOnly="True" SortExpression="Prod_ID" />
                <asp:BoundField DataField="Cust_ID" HeaderText="Cust_ID" SortExpression="Cust_ID" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>       
      <br />
    </div>
   </div>
  </form>
 </body>
</html>