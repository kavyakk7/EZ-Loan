<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Personal Loan</title>
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
<script>
function evalSlider()
{
	var sliderValue = document.getElementById('rating').value;
	document.getElementById('sliderVal').value = sliderValue;
	//document.getElementById('filter').style.display = 'block';
}
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
                    <h1 class="navbar-brand navbar-brand_"><a href="index.html">EZ ~ Loan</a></h1>
                    <section class="menuBox">
                        <nav class="navbar navbar-default navbar-static-top mynavbar clearfix" role="navigation">
                        	<ul class="nav sf-menu clearfix">
                        		<li class="active"><a href="index.jsp">Home</a></li>
                        		<li class="sub-menu"><a href="#">Loans<span></span></a>
								 <ul class="submenu">
                                        <li><a href="PersonalLoan.jsp">Personal loans</a></li>
                                        <li><a href="EducationLoan.jsp">Education loans</a></li>
                                        <li><a href="HomeLoan.jsp">Home loans</a></li>
                                        <li><a href="CarLoan.jsp">Car loans</a></li>
                                        <li class="tr"></li>
                                    </ul></li>
                        		<li><a href="About.html">About us</a></li>
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
                                    <p class="title"><a href="HomeLoan.jsp">Home Loan</a></p>
                                    <form name=ploan action="HomeLoan1.jsp" method=POST>
                                 <p> Choose the loan amount : </p>
                                 <input type="range" name="rating" id="rating" min="50000" max="600000" value="50000" step="50000" onchange="evalSlider()"/>
									<div class="caption" id="filter" >
                                     Loan Amount Selected <input type=text id="sliderVal" name="loan"> 
									<input type=submit value=" Show ">                                    
                                    </div>
                                    </form>
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