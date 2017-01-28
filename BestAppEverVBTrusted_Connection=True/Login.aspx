<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

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
                <a href="#" class="navbar-brand">Login Here</a>
            </div>

            <!-- Menu Items -->
            <div class="collapse navbar-collapse" id="mainNavBar">
                <ul class="nav navbar-nav">
                   <li class="active"><li><a href="#">Orders</a></li>
                    <li><a href="#">Products</a></li>
                       <li><a href="#">Customers</a></li>
           
                    <!-- DropDown Menu -->
            <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle ="dropdown">Profile <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Orders</a></li>
                    <li><a href="#">Products</a></li>
                    <li><a href="#">Customers</a></li>
                </ul>
           </li>
        </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Default.aspx">Log Out</a></li>
                </ul> 
            </div>
        </div>
    </nav>



    <!-- Banner header section -->
    <div class="intro-banner">




         <div>  <div style="height: 748px">

        <br />   
        <br />
        <br />
        <br />  
        <br />
        
    <asp:Panel ID="pnlLogon" runat="server" Height="181px">
        <p>Username: m & Password: m.</p>
        <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
        &nbsp;<asp:TextBox ID="txtUsername" runat="server" ForeColor="Maroon">m</asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
        &nbsp;
        <asp:TextBox ID="txtPassword" runat="server" Font-Bold="False" TextMode="Password" ForeColor="Maroon"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="butOK" runat="server" Height="25px" Text="OK" Width="76px" BackColor="Maroon" ForeColor="Yellow" />
        &nbsp;<br />
        <br />
        <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
    </asp:Panel>
              <br />
   
    </div>
             </div>
    </form>
</body>
</html>