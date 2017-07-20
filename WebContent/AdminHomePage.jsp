<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Admin Home page</title>
<meta charset="utf-8">    
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
<!--CSS-->
<link rel="stylesheet" href="css/bootstrap.css" >
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/camera.css">
<!--JS-->
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.2.1.min.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/camera.js"></script>
<script>
    $(document).ready(function(){
        jQuery('.camera_wrap').camera();
    });
</script>
<!--[if (gt IE 9)|!(IE)]><!-->
      <script src="js/jquery.mobile.customized.min.js"></script>
<!--<![endif]-->

</head>
<body>
<div class="main">
    <!--header-->
    <div class="container visible-wrap">
        <div class="row">
            <article class="col-lg-12 col-md-12 col-sm-12 myheader">
                <header>
                    <h1 class="navbar-brand navbar-brand_"><a href="#">EZ ~ Loan</a></h1>
                    <section class="menuBox">
                        <nav class="navbar navbar-default navbar-static-top mynavbar clearfix" role="navigation">
                        	<ul class="nav sf-menu clearfix">
                        		<li class="active"><a href="AdminHomePage.jsp">Home</a></li>
                        		<li class="sub-menu"><a href="#">Settings</a>
                        		<ul class="submenu">
                                        <li><a href="AdminLoginPage.jsp">Logout</a></li>
                                        <li class="tr"></li>
                                </ul></li>
                        	</ul>
                        </nav>
                    </section>
                </header>
            </article>
        </div>
    </div>
    <div class="container">
        <div class="global">
            <div class="row">
                <br><br><br><br>
                <section class="main-content clearfix">
                    <article class="col-lg-3 col-md-6 col-sm-6">
                        <div class="thumb-pad1">
                            <div class="thumbnail">
                                <div class="caption">
                                    <p class="title"><a href="AddPersonalLoanPage.jsp">Add a new Personal loan</a></p>
                                    <p class="title"><a href="DeletePersonalLoanPage.jsp">Delete a Personal loan</a></p>
                                    <p class="title"><a href="PersonalLoan.jsp">View Personal loan</a></p>
                                    --------------------------------------------------
                                </div>
                            </div>
                        </div>
                    </article>
                    <article class="col-lg-3 col-md-6 col-sm-6">
                        <div class="thumb-pad1">
                            <div class="thumbnail">
                                <div class="caption">
                                    <p class="title"><a href="AddHomeLoanPage.jsp">Add a new Home loan</a></p>
                                    <p class="title"><a href="DeleteHomeLoanPage.jsp">Delete a Home loan</a></p>
                                    <p class="title"><a href="HomeLoan.jsp">View Home loan</a></p>
                                    --------------------------------------------------
                                </div>
                            </div>
                        </div>
                    </article>
                    <article class="col-lg-3 col-md-6 col-sm-6">
                        <div class="thumb-pad1">
                            <div class="thumbnail">
                                <div class="caption">
                                    <p class="title"><a href="AddEducationLoanPage.jsp">Add a new Education loan</a></p>
                                    <p class="title"><a href="DeleteEducationLoanPage.jsp">Delete a Education loan</a></p>
                                    <p class="title"><a href="EducationLoan.jsp">View Education loan</a></p>
                                    --------------------------------------------------
                                </div>
                            </div>
                        </div>
                    </article>
                    <article class="col-lg-3 col-md-6 col-sm-6">
                        <div class="thumb-pad1">
                            <div class="thumbnail">
                                <div class="caption">
                                    <p class="title"><a href="AddCarLoanPage.jsp">Add a new Car loan</a></p>
                                    <p class="title"><a href="DeleteCarLoanPage.jsp">Delete a Car loan</a></p>
                                    <p class="title"><a href="CarLoan.jsp">View Car loan</a></p>
                                    --------------------------------------------------
                                </div>
                            </div>
                        </div>
                    </article>
                    <article class="col-lg-3 col-md-6 col-sm-6">
                        <div class="thumb-pad1">
                            <div class="thumbnail">
                                <div class="caption">
                                    <p class="title"><a href="AddAdminPage.jsp">Add a new Admin</a></p>
                                </div>
                            </div>
                        </div>
                    </article>
                </section>                
            </div>
        </div>
        <!--footer-->
        <footer>
            
        </footer>
    </div>
</div>
<script src="js/bootstrap.min.js"></script>
<script src="js/scripts.js"></script>
</body>
</html>