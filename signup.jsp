<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>






<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<img src="aeroplanelogo1.jpg" style="margin-left: 38%;margin-top: 1.3%">

<html >
    <!-- <body style="margin-left: 40%" ></body> -->
    <div class="w3-top">
            <div class="w3-bar w3-light-green">
              <a href="index.html" class="w3-bar-item w3-button" >Home</a>
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
      <style>
        .a1{
          padding : .7% ;
          font-size: 20px ;
          border-radius : 20px ;
          text-decoration: none;
          border: 1px solid black;
          background-color : #FCA ;
          margin-left : 13% ;
          margin-top : 2% ;
        }
        .a1:hover {
            background-color :rgb(255, 184, 255) ;
        }
        .a2{
          padding : .7% ;
          font-size: 20px ;
          border-radius : 20px ;
          text-decoration: none;
          border: 1px solid black;
          background-color : #FCA ;
          margin-left : 42% ;
          margin-top : 0% ;
        }
        .a2:hover {
            background-color :rgb(255, 184, 255) ;
        }
      </style>
    </head>
    
	<form action="Signup" method="post" >
    <fieldset style="margin-right: 64%;margin-left:10%;border-radius: 7px;margin-top:0%;background-color: #ADD8EA; height: 430px;">
       <b> <font style="font-size: 30px;margin-left: 10% ">Create Account</font></b><br><br> 
       
    
        <font  style="font-size: 14px bold;margin-left: 10%; margin-top:-3%"  >uname</font><br>
        <input type="text" id="r1" style="margin-left: 10%;border-radius: 4px; padding: 7px 40px;border-color: yellow;font-size: 16px;" name="uname" ><br><br>
        <font  style="font-size: 14px bold;margin-left: 10% ">Mobile number</font><br>
        <input type="tel" id="r2" style="border-radius: 4px;margin-left: 10%; padding: 7px 40px;border-color: yellow;font-size: 16px;" name="mob" ><br><br>
        <font  style="font-size: 14px bold;margin-left: 10%">Email(optional)</font><br>
        <input type="email" id="r3" style="border-radius: 4px;margin-left: 10%; padding: 7px 40px;border-color: yellow;font-size: 16px;" name="email" ><br><br>
        
        
             <font  style="font-size: 14px bold ;margin-left: 10%">Password</font><br>
        <input type="password" id="r4" style="border-radius: 4px; padding: 7px 40px;border-color: yellow;font-size: 16px;margin-left: 10%" name="pass" ><br> 
    
        
    </fieldset><br>

	<fieldset style="margin-right: 13%;margin-left:60%;border-radius: 7px;margin-top:-30%;background-color: #ADD8EA; height: 430px;">
       <b> <font style="font-size: 30px;margin-left: 10% ;text-align:center;"> &nbsp;&nbsp; Other Details</font></b><br><br> 
       
    
        <font  style="font-size: 14px bold;margin-left: 10%; margin-top:-3%"  >Your name</font><br>
        <input type="text" name="namee" style="margin-left: 10%;border-radius: 4px; padding: 7px 40px;border-color: yellow;font-size: 16px;"><br><br>
        <font  style="font-size: 14px bold;margin-left: 10% ">Birth Date</font><br>
        <input type="date" style="width:300px; border-radius: 4px;margin-left: 10%; padding: 7px 40px;border-color: yellow;font-size: 16px;" name="dob" ><br><br>
        
        
             <font  style="font-size: 16px solid; margin-left: 10%" >Address</font><br> 
        <textarea  type="text" cols="21" rows="5" id="r2" style="border-radius: 8px solid; padding: 3px 40px;border-color: yellow-red ;font-size: 16px;margin-left: 10%" name="address" >
    	</textarea>
        
    </fieldset><br>
	<a href="index.html" class="a1" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Back &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a>
	<input type="submit" value="      Continue      "  class="a2" > 
	
	</form>


   
    
    
</html>