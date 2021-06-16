<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {margin:0;
overflow:hidden;
  background-color:black;}

.navbar {
  overflow: hidden;
  background-color: #333;
  position: fixed;
  top: 0;
  width: 100%;
  height:10%;
}

.navbar a {
  float: right;
  display: block;
  color: #f2f2f2;
  text-align: center;
  font-weight:bold;
  padding: 20px 16px;
  text-decoration: none;
  font-size: 17px;
}
input#logout{
float: right;
  display: block;
  color: #f2f2f2;
  text-align: center;
  font-weight:bold;
  padding: 20px 16px;
  text-decoration: none;
  font-size: 17px;
}
input#logout:hover{
background: #ddd;
  color: black;
  height:55%;
}
.navbar a:hover {
  background: #ddd;
  color: black;
  height:55%;
}

.main {
  padding: 16px;
  margin-top: 30px;
  height: 1500px; /* Used in this example to enable scrolling */
}

ul {
    list-style-type: none;
    padding: 30px;
     background: light-grey;
    padding: 30px;
  margin:80px;


  }

  ul li {  
     background: black;
     border:solid white;
     border-radius:20px;
    margin: 10px;
   color:white;
   font-weight:bold;
   
    padding: 20px;
     }
      ul li:hover {  
      font-size:20px;
      font-weight:bold;
      color:white;
      background-color:rgba(255,255,255,0.1);
      transition: all 2ms;
    font-size-adjust: 20px;
     }
  .button {
  background-color: orange;
  border: none;
  border-radius:25px;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  font-weight: bold;
  margin-top:100px;
  cursor: pointer;
  width:80%;

}
#stud{margin-top:150px;
margin-right:10px;}
.button:hover{
background-color:white;
color: orange;
border: solid orange;
}
@font-face {
  font-family: myFont;
  src: url(lobster.otf);
}
</style>
</head>
<body>
/*
<%--
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-validat");
if(session.getAttribute("username")==null)
{
	response.sendRedirect("Home.jsp");
}
%>
--%>



<div class="navbar">
<img class="logo" src="logo-white.png" style="float:left;  
  
  padding: 5px;
  width: 50px;">
  <p style="float:left; color:white; font-size:20px;font-family:myFont">Magic-O-Meal</p>
  <form action="Logout"><input type="submit" id="logout" value="Home"></form> 
 
 
</div>

<div class="main">
<div class="split left" style="float:left; width:80%;">
    <div class="centered">
     <ul>
    <li>Click on Student if you are a student else click on Mess</li>
    <li>Create an account and get yourself registered on the platform</li>
    <li>Explore the best mess near you according to your requirements </li>
    <li>Choose the subscription plan that best fits your needs</li>
    <li>Pay the fees and get avail of the facility of daily attendance and exploring the mess through our platform</li>
  </ul>
    </div>
  </div>

  <div class="split right" style="float:right; width:20%;" >
    <div class="centered">
      
  <form class="form"  action="RegStud" method="post"><button class="button" id="stud">Student</button></form>
  <br>
  
  <form class="form" action="RegMess" method="post"><button class="button">Mess</button></form>
    </div>
  </div>
  
</div>

</body>
</html>
