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

  section#left{
    width : 20%;
    float : left;
    background-color: black;
    }

  section#right{
  	width : 80%;
    float : right;
    background-color: black;
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

    .dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 10px;
  font-size: 12px;
  border: none;
  cursor: pointer;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
  display: block;
}

.dropdown:hover .dropbtn {
  background-color: #3e8e41;
}

.container {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default checkbox */
.container input {
  
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

/* Create a custom checkbox */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #eee;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.container input:checked ~ .checkmark:after {
  display: block;
}

/* Style the checkmark/indicator */
.container .checkmark:after {
  left: 9px;
  top: 5px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 3px 3px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}
#rcorners2 {
  border-radius: 25px;
  background: yellow;
  padding: 15px; 
  width: 100px;
  height: 40px;  
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
  <form action="Logout"><input type="submit" id="logout" value="Log out"></form> 
 
 
</div>
	<section id="left"> 
 	<table>
    <br><br><br><br><br><br><br><br><br><br>
    <tr>
      <td height=50><a href="StudentDash.jsp"><font size="5" style="color:white">MY PROFILE</font></a></td>
    </tr>
    <tr>
      <td id="rcorners2" bgcolor="yellow" height=50><a href="ExploreTable.jsp"><font size="5" style="color:black">EXPLORE MESS</a></td>
    </tr>
    <tr>
      <td height=50><a href="StudAttendance.jsp"><font size="5" style="color:white">ATTENDANCE</a></td>
    </tr>
    
    <tr>
      <td height=50><a href="StudPayment.jsp"><font size="5" style="color:white">PAYMENT</a></td>
    </tr>
   <!-- <tr>
      <td height=50><a href="EditStud.jsp"><font size="5" style="color:white">EDIT ACCOUNT</a></td>
    </tr> --> 
     <tr>
      <td height=50><a href="StudDashDel.jsp"><font size="5" style="color:white">DELETE ACCOUNT</a></td>
    </tr>
    </table>
	</section>
	<section id="right">
	<br>
	<br>
	<br>
	<br><br><br><br>
	
<table border="1" cellpadding="10">

<tr>
	<td><font style="color:white">MESS NAME</font></td>
	<td><font style="color:white">ADDRESS</font></td>
	<td><font style="color:white">TOTAL PRICE</font></td>
	</tr>
<% 

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
    // loads mysql driver
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mess_management", "root", "ketki2/1/99"); 
	
	String food_type=request.getParameter("food_type");
	
	String food_time=request.getParameter("food_time");
	String subscription=request.getParameter("subscription");
	 
	int n=0;
	if(subscription.equals("3"))
	{
		n=3;
		
	}
	else if(subscription.equals("15"))
	{
		n=15;

	}
	else
	{
		n=30;
		
	}
	HttpSession session2 = request.getSession();
	int student_id=Integer.parseInt(session2.getAttribute("id").toString());
	HttpSession session4= request.getSession();
	session4.setAttribute("count", n);
	 String q="update student set counter=? where stud_id=?";

		PreparedStatement p = con.prepareStatement(q); // generates sql query
	    p.setInt(1, n);
	     p.setInt(2, student_id);
	    
	     
	     p.executeUpdate(); // execute it on test database
	     System.out.print("updated");
	int m=0;
	if(food_time.equals("once"))
	{
		m=1;
	}
	else
	{
		m=2;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	String id=request.getParameter("");
	PreparedStatement st =con.prepareStatement("select * from mess where mess_type like ? order by mess_add asc");
	st.setString(1, food_type);
	//PreparedStatement t =con.prepareStatement("update student set counter=n where mess=mess_id");
	//t.executeUpdate();
	
	ResultSet rs = st.executeQuery();
	double total=0;
	int messid=0;
	while(rs.next())
	{		
			
			String name=rs.getString("mess_name");
			String add=rs.getString("mess_add");
			int price=rs.getInt("price_plate");
		
			messid=rs.getInt("mess_id");
		
		    total=price*m*n*0.9;
			
%>

	
	
	<tr>
	<td><font style="color:white"><%=name %></font></td>
	<td><font style="color:white"><%=add %></font></td>
	<td><font style="color:white"><%=total %></font></td>
	<td style="width:30%"><form id="form2" action="pay" method="post"><input type="submit" id="button-blue" value="pay" name="pay"></form></td>
	</tr>
	

<%
	}
	
	
	HttpSession session1= request.getSession();
		session1.setAttribute("mess_id", messid);
		HttpSession session3= request.getSession();
		session2.setAttribute("total", total);
		
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