<html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<link rel="StyleSheet" href="login.css" >
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<img src="aeroplanelogo1.jpg" style="margin-left: 38%;margin-top: 1.3%">
    

    <div class="w3-top">
            <div class="w3-bar w3-light-green">
              <a href="index.html" class="w3-bar-item w3-button" >Home</a>
              <a href="profile.jsp" class="w3-bar-item w3-button">Profile</a>
              <a href="about.jsp" class="w3-bar-item w3-button">About Us</a>
              <form action="Logout" >
				<input type="Submit" value="Logout" class="w3-bar-item w3-button" >
			  </form>
              
              </div>
    </div>
	
	
	
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Flights available</title>
	<%@ page import="java.sql.*" %>
	<style>
table, th, td {
  border: 2px solid black;
  border-collapse: collapse;
}
th, td{
  padding: 15px;
  text-align: center;
  font-size : 20px ;
}
table#t01 {
  width: 80%;    
  background-color: #f1f1c1;
  border-radius: 10px;
}
	</style>
</head>



<body>
    <br>
	<font style="color:#A0A;margin-left:10%;font-size:28px" >All Flights Available </font> 
	
<table id="t01" style="margin-top:0%;margin-left:10%">
  <tr>
    <th>Flight no</th>
    <th>From</th> 
    <th>To</th>
    <th>dat</th>
    <th>toff</th>
    <th>tld</th>
    <th>seat</th>
    <th>price</th>
    <th>ecocls</th>
    <th>bisscls</th>
  <tr>

	<% 

	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");	
	
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect("login.jsp") ;	
		}
		
	%>
	
	
	
	
	<%
	
		ResultSet rs1 = (ResultSet)session.getAttribute("flights");
		

		while(rs1.next() ){
			
	%>		
			
				<tr>
					<td><% out.println(rs1.getString(1)); %></td>
					<td><% out.println(rs1.getString(2)); %></td>
					<td><% out.println(rs1.getString(3)); %></td>
					<td><% out.println(rs1.getString(4)); %></td>
					<td><% out.println(rs1.getString(5)); %></td>
					<td><% out.println(rs1.getString(6)); %></td>
					<td><% out.println(rs1.getString(7)); %></td>
					<td><% out.println(rs1.getString(8)); %></td>
					<td><% out.println(rs1.getString(9)); %></td>
					<td><% out.println(rs1.getString(10)); %></td>
				</tr>
				
				

<%

		
	
	
	
	

	
			

		}
%>
<head>
	<style>
		.booktic{
			margin-left : 35%;
				
		}
		.a1{
          padding : .5% ;
          width : 200px;
          font-size: 20px ;
          text-decoration: none;
          border-radius : 4px ;
          border: 1px solid black;
          background-color : #bEA ;
          margin-left : 0% ;
          margin-top : 0% ;
        }
        .a2:active {
            background-color :rgb(255, 184, 255) ;
        }
      	.a2{
          padding : .7% ;
          font-size: 20px ;
          border-radius : 20px ;
          text-decoration: none;
          border: 1px solid black;
          background-color : #BFA ;
          margin-left : 0% ;
          margin-top : 0% ;
        }
        .a2:hover {
            background-color :rgb(255, 184, 255) ;
        }
		
		
	</style>
</head>
	
</table>
	<br><br>
	<div class="booktic">
	<form action="Bookticket" method="post" >
	
		Enter Flight no : <input type="text" name="flightno" class="a1" placeholder="Enter flight no" ><br><br>
		Book ticket : <input type="submit"  value = "          Continue          " class="a2"  name="book">
		
	</form>
	</div>
<%
%>
</body>
</html>
