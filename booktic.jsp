<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<img src="aeroplanelogo1.jpg" style="margin-left: 38%;margin-top:-5%">

    <div class="w3-top">
            <div class="w3-bar w3-light-green">
              <a href="index.html" class="w3-bar-item w3-button"  >Home</a>
              <a href="login.jsp" class="w3-bar-item w3-button">Login</a>
              <a href="signup.jsp" class="w3-bar-item w3-button">Sign up</a>
              <a href="profile.jsp" class="w3-bar-item w3-button">Profile</a>
              <a href="about.jsp" class="w3-bar-item w3-button">About Us</a>
              <form action="Logout" >
				    <input type="Submit" value="Logout" class="w3-bar-item w3-button" >
			  </form>
            </div>
    </div>
<head>
<meta charset="ISO-8859-1">
<title>Flight ticket</title>
<style>
	.box{
	height:340px;
	width:500px;
	margin-left:35%;
	background-color:#CCAFFF;
	border : 1px  ;
	border-radius : 8px ;
	padding : 1% ;
	}
	.d1{
		color : #ffd;
		font-color : #ffd;
		size : 10px ;
	}
</style>
</head>
<body style="margin-top:10%">
<br><br>
	<div class="box" >
	<font style="font-size:32px" >Congrutulation ! </font>
	<font style="font-size:24px" >Your <font id="d1" style="font-color : #ffd;" ><% String fltno = (String)session.getAttribute("fltno");out.println(fltno); %></font> flight ticket has been booked. </font>
	<font style="font-size:24px" > Your journey will start on <font id="d1"><% String dat = (String)session.getAttribute("dat");out.println(dat); %></font> at 
	 <font id="d1"><% String toff = (String)session.getAttribute("toff");out.println(toff); %></font>  and flight will end on   <% out.println(dat); %>   at  
	 <font id="d1"><% String tld = (String)session.getAttribute("tld");out.println(tld); %></font> .You have booked   seats 
	 
	 <font id="d1"><% String adults = (String)session.getAttribute("adult");
		String children = (String)session.getAttribute("children");
		String infants = (String)session.getAttribute("infants"); 
		
		int seats = Integer.parseInt(adults) + Integer.parseInt(children) + Integer.parseInt(infants) ;
		out.println(seats);
		
		String prices = (String)session.getAttribute("price");
		int pricee = (int)Integer.parseInt(prices) ; 
		
		pricee = seats * pricee ;
		
	 %></font> 
	 
	  and it costs  Rs  <font id="d1"><% out.println(pricee); %></font>/- .	  
	  Your seat no is from <% int i = 45/4*seats;out.println(i); %> to <% i = i + seats-1 ; out.println(i); %> in 
	   <% 
	   String clss = (String)session.getAttribute("pass-cls");
	   String clas ;
	  if(clss.equals("bisscls"))    
	  {
	  	clas = "business" ;
	  }
	  else{
	  	clas = "economy " ;	
	  	}
	  
	  out.println(clas);
	  
	  %>
	  class.
	  </font>
	  
	  
	  
	  
	</div>

	<%
	
/* 	String seats = (String)session.getAttribute("seats");
	String fromm = (String)session.getAttribute("fromm");
	String too = (String)session.getAttribute("too"); */
	/* String dat = (String)session.getAttribute("dat"); */
/* 	String cls = (String)session.getAttribute("pass-cls");
	String adults = (String)session.getAttribute("adult");
	String children = (String)session.getAttribute("children");
	String infants = (String)session.getAttribute("infants"); */
	/* String fltno = (String)session.getAttribute("fltno"); *//* 
	String tld = (String)session.getAttribute("tld");*//* 
	String toff = (String)session.getAttribute("toff");
	String price = (String)session.getAttribute("price"); */
	
	
/* 	out.println(fromm +" "+too+" "+dat+" "+cls+" "+fltno+" "+tld+" "+toff+" "+price +" kuch nhi aaya "); */
	
	%>
	
		
</body>
</html>