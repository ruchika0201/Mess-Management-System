<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<meta charset="ISO-8859-1">
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
<title>Student Attendance</title>
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
      <td height=50><a href="StudentDash.jsp"><font size="5" style="color:white">MY PROFILE</font></a></td>
    </tr>
    <tr>
      <td height=50><a href="exploremess.jsp"><font size="5" style="color:white">EXPLORE MESS</a></td>
    </tr>
    <tr>
      <td height=50><a href="StudAttendance.jsp"><font size="5" style="color:white">ATTENDANCE</a></td>
    </tr>
    <tr>
      <td id="rcorners2" bgcolor="yellow" height=50><a href="StudPayment.jsp"><font size="5" style="color:black">PAYMENT</a></td>
    </tr>
    <!--  <tr>
      <td height=50><a href="EditStud.jsp"><font size="5" style="color:white">EDIT ACCOUNT</a></td>
    </tr> -->
   
    <tr>
      <td height=50><a href="StudDashDel.jsp"><font size="5" style="color:white">DELETE ACCOUNT</a></td>
    </tr>
    </table>
  </section>
<section id="right">
  <br><br><br><br><br><br><br>
        <p><center><font size="6" style="color:white">STUDENT ATTENDANCE</center></p><br>
   <p><font size="6" style="color:white">Welcome to My Attendance</font></p>
   <table border=1>

<tr>
	<td><font style="color:white">MESS NAME</font></td>
	<td><font style="color:white">MESS TYPE</font></td>
	<td><font style="color:white">TIMESTAMP</font></td>
	
	</tr>
<% 

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
    // loads mysql driver
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mess_management", "root", "ketki2/1/99"); 
    HttpSession session2 = request.getSession();
    int student_id=Integer.parseInt(session2.getAttribute("id").toString());
    HttpSession session3 = request.getSession();
   
	PreparedStatement st =con.prepareStatement("select * from transactions where student_id like ?");
	st.setInt(1, student_id);
	
	
	ResultSet rs = st.executeQuery();
	
	while(rs.next())
	{		
			String str="";
			String str1="";
			int  messid=rs.getInt("messid");
			String timestamp=rs.getString("time");
			PreparedStatement t =con.prepareStatement("select * from mess where mess_id=?");
			t.setInt(1,  messid);
			ResultSet w = t.executeQuery();
			if(w.next())
			{
				str=w.getString("mess_name");
				str1=w.getString("mess_type");
				
			}
	
%>

	
	
	<tr>
	<td><font style="color:white"><%=str %></td>
	<td><font style="color:white"><%=str1 %></td>
	<td><font style="color:white"><%=timestamp %></td>
	
	</tr>
	

<%
	}
	
	
	}
	catch (Exception e) {
	    // TODO Auto-generated catch block
	    e.printStackTrace();
	   }
	   


%>
</table>
  </section>
</body>
</html>