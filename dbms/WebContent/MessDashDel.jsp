<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

html 
{
 overflow : scroll;
}
  section#left{
    width : 20%;
    float : left;
    background-color: black;
    }

  section#right{
    background-color: black;
	width:80%;
	float: right;
    }


body {margin:0;
overflow:hidden;
}

#rcorners2 {
  border-radius: 25px;
  background: yellow;
  padding: 15px; 
  width: 100px;
  height: 40px;  
}

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
@font-face {
  font-family: myFont;
  src: url(lobster.otf);
}
#button-blue{
		font-family: 'Montserrat', Arial, Helvetica, sans-serif;
		float:left;
		width: 40%;

		border-radius:25px;
		border: none;
		cursor:pointer;
		background-color: #008000;
		color:white;
		font-size:24px;
		padding-top:20px;
		padding-bottom:20px;
		-webkit-transition: all 0.3s;
		-moz-transition: all 0.3s;
		transition: all 0.3s;
	  margin-top:25px;
	  margin-left:10px;
	  font-weight:500;

	}
 
	#button-blue:hover{
		background-color: #fbfbfb;

		color: #008000;
		width:40%;
		padding-top:20px;
		padding-bottom:20px;
		
	}
	.submit{
		display: inline-block;
		width:100%;
		padding-left:18px;

	}
</style>
</head>
<body style="background-color:black">

<div class="navbar">
<img class="logo" src="logo-white.png" style="float:left;  
  
  padding: 5px;
  width: 50px;">
  <p style="float:left; color:white; font-size:20px;font-family:myFont">Magic-O-Meal</p>
  <form action="Logout"><input type="submit" id="logout" value="Home"></form> 
 
 
</div>

<section id="left"> 
  <table>
    <br><br><br><br><br><br><br><br><br><br>
    <tr>
      <td  height=50><a href="MessDash.jsp"><font size="5" style="color:white">MY PROFILE<br><br></font></a></td>
    </tr>
     <br>
   <!--  <tr>
   
      <td height=50><a href="stud_info.jsp"><font size="5" style="color:white">STUDENT'S ATTENDANCE<br><br></a></td>
    </tr> -->
     <br>
    <tr>
      <td height=50><a href="List.jsp"><font size="5" style="color:white">LIST OF STUDENTS</a></td>
    </tr>
    <br>
    <tr>
      <td id="rcorners2" bgcolor="yellow" height=50><a href="MessDashDel.jsp"><font size="5" style="color:black">DELETE ACCOUNT</a></td>
    </tr>
    </table>
  </section>
<section id="right">
  <br><br><br><br><br><br><br>
    <p><center><font size="6" style="color:white">DELETE ACCOUNT</center></p>
 <!-- <img src="logo-white.png" align="" height="80" width="80"> --> 
  <br><br><br>
  <p><font size="6" style="color:white">Are you sure, you want to delete the account?</font></p>
  <div class="submit">
					<form class="form" id="form" action="MessDashDel" method="post">	<input type="submit" value="Yes" id="button-blue"/></form>
						<form class="form" id="form" action="MessDash.jsp" method="post">	<input type="submit" value="No" id="button-blue"/> </form> 	
					
						</div>
</section>
</body>
</html>