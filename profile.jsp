<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<body >
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<img src="aeroplanelogo1.jpg" style="margin-left: 38%;margin-top: 1%">

    
         <link rel="StyleSheet" href="login.css" >
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <div class="w3-top">
            <div class="w3-bar w3-light-green">
              <a href="index.html" class="w3-bar-item w3-button" >Home</a>
              <a href="login.jsp" class="w3-bar-item w3-button">Login</a>
              <a href="signup.jsp" class="w3-bar-item w3-button">Sign up</a>
              <a href="profile.jsp" class="w3-bar-item w3-button">Profile</a>
              <a href="about.jsp" class="w3-bar-item w3-button">About Us</a>
              <a href="Logout.java" class="w3-bar-item w3-button">Logout</a>
            </div>
    </div>

<head>
	<title>Flights booking site</title>
	<% 
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");	
	
	if(session.getAttribute("username")==null)
	{
		response.sendRedirect("login.jsp") ;	
	}
	
	%>
	
	
<style>
    .div1{
            font-size: 20px ;
            width: 50% ;
            color : red  ;
            padding : 2px 2px ;
            padding-bottom: 0% ;
            border-spacing: 2% ;
            border : 1px solid  rgb(5, 112, 141) ;
            margin-left : 45% ;
            margin-top : 2% ;
        background-color:rgb(255, 251, 255) ;
        border-radius: 5px;
    }
    .r4{
            color : red  ;
            border-radius: 5px; 
            font-size: 18px;
            border : 1px solid rgb(5, 112, 141) ;
            margin-left: 45%;
            padding: 2px 6px;
            margin-top: 2.3%;
            margin-bottom: -7%;
            width : 48% ;
    }
    .txt1{
            font-size: 18px;
            color : red  ;
            padding: 2px 4px;
            border : 1px solid rgb(5, 112, 141) ;
            /* border-color: yellow; */
            border-radius: 5px; 
            margin-left: 45%;
            margin-top: -15%;
    }




    // here starts popover show

    <!-- body { -->
        <!-- display: flex; --> 
        <!-- justify-content: flex-start; -->
        <!-- align-items: center; -->
        <!-- flex-direction: column; -->
      <!-- } -->    
      
      .wrapper {
        position: relative;
        padding: 20px; 
        <!-- padding: relative; -->
      }
      
      .trigger {
        margin-bottom: 10px;
      }
      
      .content {
        visibility: hidden;
        background-color: #bfbfbf;
        position: absolute;
        padding: 15px; 
        <!-- padding: relative; -->
      }
      
      .content:before {
        position: absolute;
        top: -10px;
        content: "";
        right: calc(50% - 10px);
        border-style: solid;
        border-width: 0 10px 10px 10px;
        border-color: transparent transparent #bfbfbf transparent;
      }
      
      .wrapper:hover .content {
        visibility: visible;
      }
</style>
</head>

	
	
	
    <fieldset style="margin-right: 36%;margin-left: 32%;border-radius: 7px;margin-top:0%;background-color: #ADD8EA" >
            <br>
       <b> <font style="font-size: 30px;font-style:oblique ; margin-left: 3% ;color : rgb(218, 72, 4) ">Your Profile</font></b><br><br>
       
       <input type="text" class="div1"  placeholder="name" id="i1" value=<% String uname1 = (String)session.getAttribute("username");out.println(uname1); %> >	
       <pre  style="margin-left: 10%;margin-top:-6.5%;font: 18px sans-serif;color: rgb(34, 71,  139) " > Your name</pre>
        
        <input type="text" class="div1" placeholder="mob no" id="i2" value=<% String mob = (String)session.getAttribute("mob");out.println(mob); %> >
        <pre  style="margin-left: 10%;margin-top:-6%;font: 18px sans-serif;color:rgb(34, 71,  139) " >Mobile name</pre>
        
        <input type="text" class="div1" style="margin-top:2%" placeholder="email" id="i3" value=<% String email = (String)session.getAttribute("email"); out.println(email); %> >
        <pre  style="margin-left: 10%;margin-top:-6%;font: 18px sans-serif;color:rgb(34, 71,  139) " >Email id</pre>
        
        <input type="text" class="r4" placeholder="User name" id="i4" value=<% String name = (String)session.getAttribute("name"); out.println(name); %> >
        <pre  style="margin-left: 10%;margin-top:-4.5%;font: 18px sans-serif;color: rgb(34, 71,  139) " >User name</pre>

        <input type="text" class="r4" placeholder="dob" id="i5" value=<% String dob = (String)session.getAttribute("dob"); out.println(dob); %> >
        <pre  style="margin-left: 10%;margin-top:-4%;font: 18px sans-serif;color:rgb(34, 71,  139) ">Date of Birth</pre>

        <br>
        <pre  style="margin-top: -2.3px; margin-left: 10%; font: 18px sans-serif; color: rgb(34, 71,  139)   " >Address</pre><br>
        <textarea class="txt1" placeholder="Your Address" rows="5" cols="22%" id="i6" ><% String address = (String)session.getAttribute("add"); out.println(address); %></textarea>
        
        
        
    </fieldset>

	<br>
</body> 
<script>
	String uname;
	function myFunction() {
		alert("bosdk");
  		document.getElementById("i1").innerHTML = 10 ;
  		document.getElementById("i2").innerHTML = mob ;
  		document.getElementById("i3").innerHTML = email ;
  		document.getElementById("i4").value = sak ;
  		document.getElementById("i5").value = dob ;
  		document.getElementById("i6").value = address ;
		System.out.println(uname+" "+mob+email+name+dob+address+"asd");
		}
	</script>
</html>