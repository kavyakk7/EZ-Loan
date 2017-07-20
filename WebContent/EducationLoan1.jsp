<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Personal Loan</title>
<meta charset="utf-8">    
<!--CSS-->
<link rel="stylesheet" href="css/bootstrap.css" >
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/touchTouch.css">
<!--JS-->
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.2.1.min.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/jquery.equalheights.js"></script> 
<script src="js/jquery.ui.totop.js"></script>
<script src="js/touchTouch.jquery.js"></script>
<script>
   $(window).load(function() {
     // Initialize the gallery
    $('.trainerBox figure a').touchTouch();
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
    <div class="global indent">
        <!--content-->
        <div class="container">
            <div class="row">
                <section class="main-content clearfix">
                    <article class="col-lg-4 col-md-6 col-sm-6 who-box maxheight"> 
                        <h2 class="marg">Education Loan</h2>
                                <form name=ploan action="EducationLoan1.jsp" method=POST>
                                <% 
                  //String question = request.getAttribute("question") != null ? (String) request.getAttribute("question") : null;
                  double loan = Double.parseDouble(request.getParameter("loan"));                                
                                	System.out.println("loan amount selected : "+loan);
                                	%>
                                 <p class="title"> Choose a range : </p>
									<input type="range" name="rating" id="rating" min="100000" max="600000" value="<% out.println(loan); %>" step="50000" onchange="evalSlider()"/>
									<input type=text id="sliderVal" name="loan">
									<div class="caption" id="filter">
                                     LOAN AMOUNT SELECTED <input type=text name="loanSelected" value="<% out.println(loan); %>" >  
                                     
                                    <output id="sliderVal"></output>
                                    <input type=submit value=" Show ">
                                    <p class="title"> ************* </p>
                                        <%
// Get details loan
try
{
	Statement statement = null;
    ResultSet rs = null;
    String connectionURL = "jdbc:mysql://localhost:3307/ezloan";
    Connection connection = null; 
  	Class.forName("com.mysql.jdbc.Driver").newInstance(); 
  	connection = DriverManager.getConnection(connectionURL, "root", "root");
  	Statement st = connection.createStatement();
  	String QueryString = "Select BankName, Rate, EMI, ProcessingFee, Link from education_loan where "+loan+" Between MinLoanAmount and MaxLoanAmount";
  	//MinLoanAmount>='"+loan+"' and MaxLoanAmount<='"+loan+"'";
  	rs = st.executeQuery(QueryString);
  	if(rs!=null)
  	{
  		%>
  		<table class="table1 table1-horizontal table1-zebra table1-highlight">
	  	   <thead>
	  	        <tr>
	  	            <th scope="col">Bank</th>
	  	            <th scope="col">Rate</th>
	  	            <th scope="col">EMI</th>
	  	            <th scope="col">Processing Fee</th>
	  	            <th scope="col">Link</th>
	  	        </tr>
	  	    </thead>
	    <tbody>
  		<%
  		while(rs.next())
  		{
  		%>
  		<tr>
  			<td><%=rs.getString(1) %></td>
  			<td><%=rs.getString(2) %></td>
  			<td><%=rs.getString(3) %></td>
  			<td><%=rs.getString(4) %></td>
  			<td><%=rs.getString(5) %></td>
	    <tr>
  		<%
  		}
  		%>
  		</tbody>  		
  		</table>
  		<%
  	}
  	else
  	{
  		%><h2>No education loans that meet your requirement!</h2>
  		<% 
  	}
}
catch(Exception e)
{
	e.printStackTrace();	
}
%>
                                    </div>
                                    </form>
                    </article>
                </section>
                
            </div>
        </div>
    </div>
    </div>
</div>
<script src="js/bootstrap.min.js"></script>
<script src="js/scripts.js"></script>
</body>
</html>