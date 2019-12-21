<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
<head><title>Flights booking site</title></head>
<style>
.f1{
    margin-right: 33%;
    border-radius: 4px;
    margin-left: 32%;
    background-color: rgb(187, 219, 233);
}
.inp1{
    border-radius: 4px;
    padding: 8px 100px;
    border-color: yellow;
    font-size: 10px bold;
    background-image: relative-linear-gradient(rgba(12, 248, 12, 0.5),rgba(235, 5, 5, 0.5));
}
.inp2{
    border-radius: 4px;
    padding: 8px 100px;
    border-color: yellow;
    font-size: 10px bold;
    background-image: relative-linear-gradient(rgba(12, 248, 12, 0.5),rgba(235, 5, 5, 0.5));
}
.inp3{

    margin-left: 10%;  
}
.inp5{
    border-radius: 4px;
    background-color:rgb(196, 140, 19);
    padding: 12px 13.7%;
    margin-left: 35%;
}
</style>
   <head>
      <style>
        .a1{
          padding : .7% ;
          font-size: 20px ;
          border-radius : 20px ;
          text-decoration: none;
          border: 1px solid black;
          background-color : #FCA ;
          margin-left : 41% ;
          margin-top : 10% ;
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
          margin-left : 20% ;
          margin-top : 0% ;
        }
        .a2:hover {
            background-color :rgb(255, 184, 255) ;
        }
        <input type="submit"  value = "          Continue          " class="a2"  >
      </style>
    </head>
 
    <img src="/air/aeroplanelogo1.jpg" style="margin-left: 40%;margin-top:1%"  >
    <!-- <body bgcolor="#FFEECC"  > -->
    <fieldset class= "f1" >
    <div style="margin-left:7%">
    <form action="Login" method="post" >
        <b><font style="font-size: 30px">Login</font></b>
        <h4>Enter your Username</h4>
        <input type="text" class="inp1"  name="uname" ><br><br>
        <h4>Enter your password</h4>
        <input type="password" class="inp2" name="pass" ><br><br>
        <input type="submit"  value = "          Continue          " class="a2"  >
    </form>   
    </div>
    </fieldset><br>
    
    <div style="margin-left: 29%">------------------------------------- New to this Site ? ------------------------------------</div> 
    
    <div style="margin-top:1%;">
	<a href="signup.jsp" class="a1" value=""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Register now &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a>
	</div>	

    <br><br>
    <!-- <div style="background-image: linear-gradient(rgba(0,0,0,0.5),rgba(255,255,255,1))">saket vajpai</div> -->
    <br><br>

</body>
</html>