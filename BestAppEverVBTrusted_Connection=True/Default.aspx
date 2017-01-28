<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Landing" %>
<link href="Default.css" rel="stylesheet" />
<!DOCTYPE html>
     
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Landing</title>
     
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

    <!-- Custom CSS -->
    <link href="Default.css" rel="stylesheet">
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
                <a href="#" class="navbar-brand">MICHAEL LAWRENCE</a>
            </div>

            <!-- Menu Items, don't allow to work on Login Page!! -->
            <div class="collapse navbar-collapse" id="mainNavBar">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Orders</a></li>
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
                    <li><a href="Login.aspx">Login</a></li>
                </ul> 
            </div>
        </div>
    </nav>


 <!-- Banner header section -->
    <div class="intro-banner">
        <div class="container">
            <div class="row">

                <div class="col-lg-12">
                    <div class="intro-inner">
                        <h1>Michael Lawrence BSc (HONS)</h1>
                        <h3>BootStrap for Programmers</h3>
                        <hr class="intro-divider">
                        <ul class="list-inline intro-social-buttons">

                            <li>
                                <a href="#" class="btn btn-default btn-lg">
                                    <i class="fa fa-comment fa-fw"></i>
                                    <span class="button-title">Orders</span>
                                </a>
                            </li>

                            <li>
                                <a href="#" class="btn btn-default btn-lg">
                                    <i class="fa fa-youtube-play fa-fw"></i>
                                    <span class="button-title">Products</span>
                                </a>
                            </li>

                            <li>
                                <a href="#" class="btn btn-default btn-lg">
                                    <i class="fa fa-user fa-fw"></i>
                                    <span class="button-title">Customers</span>
                                </a>
                            </li>

                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Content row 2 -->
    <div class="content-section-b">
        <div class="container">
            <div class="row">

                <div class="col-lg-5 col-lg-offset-1 col-sm-push-6 col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>

                    <h2 class="section-heading">Technology Used</h2>
                    <p class="lead">
                        I developed this great App using Visual Basic, ASP.Net, HTML5, CSS3, BootStrap JavaScript and Microsoft SQL Server. 
                        I am currently looking for a great career asap, so please get in touch soon at: m2lawrence77@outlook.com 
                        <br /> <br />This website is for show.
                    </p>
                </div>

                <div class="col-lg-5 col-sm-pull-6 col-sm-6">
                    <img class="img-responsive img-rounded" src="https://snap-photos.s3.amazonaws.com/img-thumbs/960w/8Y0EDX4VP9.jpg">
                </div>
      </div>
     </div>
    </div>
   </div>
  </form>
 </body>
</html>