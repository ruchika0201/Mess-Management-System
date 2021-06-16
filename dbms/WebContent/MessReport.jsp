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
  <!--<tr>
      <td height=50><a href="AdminDash.jsp"><font size="5" style="color:white">STUDENT REPORT<br><br></font></a></td>
    </tr>  -->  
     <br>
   
    <tr>
      <td id="rcorners2" bgcolor="yellow" height=50><a href="MessReport.jsp"><font size="5" style="color:black">REPORT</a></td>
    </tr>
    <tr>
      <td height=50><a href="DeleteAcct.jsp"><font size="5" style="color:white">DELETE STUDENT ACCOUNT</a></td>
    </tr>
      <br>
    <!-- <tr>
      <td height=50><a href="DeleteMessAcct.jsp"><font size="5" style="color:white">DELETE MESS ACCOUNT</a></td>
    </tr> --> 
      <br>
     <tr>
      <td height=50><a href="StudList.jsp"><font size="5" style="color:white">STUDENT LIST</a></td>
    </tr>
      <br>
    <tr>
      <td height=50><a href="MessList.jsp"><font size="5" style="color:white">MESS LIST</a></td>
    </tr>
    </table>
  </section>
<section id="right">
  <br><br><br><br><br><br><br>
    <p><center><font size="6" style="color:white">REPORT</center></p>
 <!-- <img src="logo-white.png" align="" height="80" width="80"> --> 
  <br><br><br>
<table border="1" cellpadding="10">

<tr>
<td><font style="color:white">MESS ID</font></td>
	<td><font style="color:white">MESS NAME</font></td>
	<td><font style="color:white">TOTAL STUDENTS ENROLLED</font></td>
	
	
	</tr>
	
	<% 

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
    // loads mysql driver
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mess_management", "root", "ketki2/1/99"); 
	
	PreparedStatement st =con.prepareStatement("select * from mess");
	
	ResultSet rs = st.executeQuery();
	
	while(rs.next())
	{		
		int id=rs.getInt("mess_id");
			String name=rs.getString("mess_name");
			String username=rs.getString("mess_username");
			String add=rs.getString("mess_add");
			String mess=rs.getString("mess_type");
			
			float price=rs.getInt("price_plate");
			//String email=rs.getString("email");
			
		/*	PreparedStatement u =con.prepareStatement("select  count(*) as total from student where mess=?");
			u.setInt(1, id);
		
			ResultSet s = u.executeQuery();
			if(s.next())
			{
				int total=s.getInt("total");
			
			*/
			
%>

	
	
	<tr>
	<td><font style="color:white"><%=id %></font></td>
	<td><font style="color:white"><%=name %></font></td>

	
	
	
	</tr>
	

<%

			
	}
	
	
	//HttpSession session1= request.getSession();
		//session1.setAttribute("mess_id", messid);
		
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