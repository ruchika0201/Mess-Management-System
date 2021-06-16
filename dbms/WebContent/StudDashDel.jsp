<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
html
{
	overflow:scroll;
} 
  section#left{
    width : 20%;
    float : left;
    background-color: black;
    }

  section#right{
    background-color: black;
    }


body {margin:0;
overflow:hidden;
}
#button-blue{
		font-family: 'Montserrat', Arial, Helvetica, sans-serif;
		float:left;
		width: 20%;

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
		width:20%;
		padding-top:20px;
		padding-bottom:20px;
		
	}
	.submit{
		display: inline-block;
		width:50%;
		padding-left:18px;

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
.main {
  padding: 16px;
  margin-top: 30px;
  height: 1500px; /* Used in this example to enable scrolling */
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
      <td  height=50><a href="StudentDash.jsp"><font size="5" style="color:white">MY PROFILE</font></a></td>
    </tr>
    <tr>
      <td height=50><a href="exploremess.jsp"><font size="5" style="color:white">EXPLORE MESS</a></td>
    </tr>
    <tr>
      <td height=50><a href="StudAttendance.jsp"><font size="5" style="color:white">ATTENDANCE</a></td>
    </tr>
    <tr>
      <td height=50><a href="StudPayment.jsp"><font size="5" style="color:white">PAYMENT</a></td>
    </tr>
    <tr>
      <td height=50><a href="EditStud.jsp"><font size="5" style="color:white">EDIT ACCOUNT</a></td>
    </tr>
     <tr>
      <td id="rcorners2" bgcolor="yellow" height=50><a href="StudDashDel.jsp"><font size="5" style="color:black">DELETE ACCOUNT</a></td>
    </tr>
    </table>
  </section>
<section id="right">
  <br><br><br><br><br><br><br>
    <p><center><font size="6" style="color:white">DELETE STUDENT ACCOUNT</center></p>
   <p><font size="6" style="color:white">Are you sure, you want to delete the account?</font></p>
  <div class="submit">
					<form class="form" id="form" action="StudentDashDel" method="post">	<input type="submit" value="Yes" id="button-blue"/></form>
						<form class="form" id="form" action="StudentDash.jsp" method="post">	<input type="submit" value="No" id="button-blue"/> </form> 	
					
						</div>
  <br><br>
  
    
    
</section>
</body>
</html>
