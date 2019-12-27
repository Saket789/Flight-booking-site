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
              <form action="Logout" >
				<input type="Submit" value="Logout" class="w3-bar-item w3-button" >
			  </form>
            </div>
    </div>
    
 <head>
 	<title>Flights booking site</title>
    <style>
    .a2{
          padding : .7% ;
          font-size: 20px ;
          border-radius : 20px ;
          text-decoration: none;
          border: 1px solid black;
          background-color : #FAA ;
          margin-left : 42% ;
          margin-top : 10% ;
        }
        .a2:hover {
            background-color :rgb(255, 184, 255) ;
        }
      </style>
    </head>


<head>
    <title>Contact Us</title>
    <STYLE>
        body {margin:0px; padding: 0px; background: #f1f1f1;
        font-family: Arial, Helvetica, sans-serif; background: url('contactbg.jpg') }
        .container1 {
            width:300px;
            height: 430px;
            background: #FFF;
            border-radius: 6px;
            position: absolute;
            top : 20%;
            left : 20%;
            transform : transition(-50%,-50%);
            box-shadow : 0px 1px 10px 1px #000; 
            overflow : hidden;
           /* display: inline-block; */
        }
        .container2 {
            width:300px;
            height: 430px;
            background: #FFF;
            border-radius: 6px;
            position: absolute;
            top:20%;
            left:60%;
            transform:transition(-50%,-50%);
            box-shadow: 0px 1px 10px 1px #000; 
            overflow: hidden;
        }
       .lower-container {  
       height:280px;
        background:coral;  padding: 20px; padding-top: 75px; background: #FFF;
        }
        .upper-container {
        height:150px;
            background:#7F00FF; 
            }
            .image-container img { height:150px; width:150px; border-radius: 50%; transform: translate(75px,80px); border:5px solid white;}
            .lower-container center a { text-decoration: none; background: #7F00FF; opacity: .7; border-radius: 15px; color: white; padding:10px; transition: .3s all ease-in; }
            .lower-container center a:hover{ background: white; border:2px solid #7F00FF; color:#7F00FF; }

            .lower-container1 {  height:280px;
        background:coral;  padding: 20px; padding-top: 75px; background: #FFF;}
        .upper-container1 {height:150px;
            background:#7F00FF; }
            .image-container1 img { height:150px; width:150px; border-radius: 50%; transform: translate(75px,80px); border:5px solid white;}
            .lower-container1 center a { text-decoration: none; background: #7F00FF; opacity: .7; border-radius: 15px; color: white; padding:10px; transition: .3s all ease-in; }
            .lower-container1 center a:hover{ background: white; border:2px solid #7F00FF; color:#7F00FF; }

        
    </STYLE>
</head>





<body>
    <div class="container1">
        <div class="upper-container">
            <div class="image-container">
                <img src="Saketphoto3.jpg">

            </div>
            
         </div>
        <div class="lower-container">
            <h2 style="box-sizing:border-box;text-align:center; line-height: .5;">Saket Vajpai</h2>
            <h3 style="box-sizing:border-box;text-align:center; line-height: .5; font-weight: bold; color:#7F00FF; opacity:.6;">	</h3>
            <H4 style="text-align: center; margin-bottom:10px;">B.Tech,CSE From NIT PATNA</H4>
           <P style="text-align: center; margin-bottom:22px;" >Contact No.- 8386973792</P> 
           <center> <A style="margin:8px;" href="https://www.facebook.com/saketbajpai">View Full Profile</A></center>
        
        </div>

    </div>
    <div class="container2">
            <div class="upper-container1">
                    <div class="image-container">
                        <img src="lllolollllll.jpg">
        
                    </div>
                    
                 </div>
                <div class="lower-container1">
                    <h2 style="box-sizing:border-box;text-align:center; line-height: .5;">Abishek Kumar</h2>
                    <h3 style="box-sizing:border-box;text-align:center; line-height: .5; font-weight: bold; color:#7F00FF; opacity:.6;"></h3>
                    <H4 style="text-align: center; margin-bottom:10px;">B.Tech,CSE From NIT PATNA</H4>
                   <P style="text-align: center; margin-bottom:22px;" >Contact No.- 8003177248</P> 
                   <center> <A style="margin:8px;" href="#">View Full Profile</A></center>

    </div>

    
   
    
    
   
    
</body>
</html>



