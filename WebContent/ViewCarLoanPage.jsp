<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
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
                    <h2 class="marg">Car Loans</h2>
<%
try
{
	Statement statement = null;
    ResultSet rs = null;
    String connectionURL = "jdbc:mysql://localhost:3307/ezloan";
    Connection connection = null; 
  	Class.forName("com.mysql.jdbc.Driver").newInstance(); 
  	connection = DriverManager.getConnection(connectionURL, "root", "root");
  	Statement st = connection.createStatement();
  	String QueryString = "Select id,BankName,Rate,EMI,ProcessingFee,MinLoanAmount,MaxLoanAmount,Link from car_loan";
  	rs = st.executeQuery(QueryString);
  	if(rs!=null)
  	{
  		%>
  		<table class="table1">
	  	   <thead>
	  	        <tr>
	  	            <th scope="col">Bank</th>
	  	            <th scope="col">Rate</th>
	  	            <th scope="col">EMI</th>
	  	            <th scope="col">Processing Fee</th>
	  	            <th scope="col">Maximum Loan</th>
	  	            <th scope="col">Minimum Loan</th>
	  	            <th scope="col">Link</th>
	  	        </tr>
	  	    </thead>
	    <tbody>
  		<%
  		while(rs.next())
  		{
  		%>
  		<tr>
  			<td><%=rs.getString(2) %></td>
  			<td><%=rs.getString(3) %></td>
  			<td><%=rs.getString(4) %></td>
  			<td><%=rs.getString(5) %></td>
  			<td><%=rs.getString(6) %></td>
  			<td><%=rs.getString(7) %></td>
  			<td><%=rs.getString(8) %></td>
	    </tr>
  		<%
  		}
  		%>
  		</tbody>  		
  		</table>
  		<br>
  		<br>
  		<%
  	}
  	else
  	{
  		%><h2>There are no car loans to show!</h2><% 
  	}
}
catch(Exception e)
{
	e.printStackTrace();	
}
%>
<br><br><br>
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