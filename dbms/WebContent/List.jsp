<!DOCTYPE html>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.servlet.http.HttpSession" %>
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
		width: 60%;

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
		width:60%;
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
      <td height=50><a href="MessDash.jsp"><font size="5" style="color:white">MY PROFILE<br><br></font></a></td>
     
    </tr>
     
    <!--  <tr>
   
      <td height=50><a href="stud_info.jsp"><font size="5" style="color:white">STUDENT'S ATTENDANCE<br><br></a></td>
    </tr> -->
    
    <tr>
      <td id="rcorners2" bgcolor="yellow" height=50><a href="List.jsp"><font size="5" style="color:black">LIST OF STUDENTS</a></td>
    </tr>
    <tr>
      <td height=50 width=50><a href="MessDashDel.jsp"><font size="5" style="color:white">DELETE ACCOUNT</a></td>
    </tr>
    </table>
  </section>
<section id="right">
  <br><br><br><br><br><br><br>
    <p><center><font size="6" style="color:white">LIST OF STUDENTS</center></p>
 <!-- <img src="logo-white.png" align="" height="80" width="80"> --> 
<form action="AttendanceMess" method="post">
<table border=1>

<tr>
	<td><font style="color:white">STUDENT NAME</font></td>
	<td><font style="color:white">CONTACT</font></td>
	<td><font style="color:white">ADDRESS</font></td>
	<td><font style="color:white">DAYS LEFT</font></td>
	
	</tr>
<% 

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
    // loads mysql driver
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mess_management", "root", "ketki2/1/99"); 
    HttpSession session2 = request.getSession();
    int mess_id=Integer.parseInt(session2.getAttribute("messid").toString());
	
	PreparedStatement st =con.prepareStatement("select * from student where mess like ? order by stud_name asc");
	st.setInt(1, mess_id);
	
	
	ResultSet rs = st.executeQuery();
	int student_id=0, counter=0;
	while(rs.next())
	{		
		 student_id=rs.getInt("stud_id");
			 counter=rs.getInt("counter");
			String name=rs.getString("stud_name");
			String email=rs.getString("stud_email");
			String phn=rs.getString("stud_ph");
			
	
%>

	
	
	<tr>
	
	<td><font style="color:white"><%=name %></font></td>
	<td><font style="color:white"><%=phn %></font></td>
	<td><font style="color:white"><%=email %></font></td>
	<td><font style="color:white"><%=counter %></font></td>
	<td width=32%><input type="submit" id="button-blue" value="Eaten" name="pay"></td>
	</tr>
	

<%
	}
	
	HttpSession session1= request.getSession();
	session1.setAttribute("stuid", student_id);


	}
	catch (Exception e) {
	    // TODO Auto-generated catch block
	    e.printStackTrace();
	   }
	   


%>
</table>
</form>
  <br><br><br>
 
</section>
</body>
</html>