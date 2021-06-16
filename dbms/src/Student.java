

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Student
 */
@WebServlet("/Student")
public class Student extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Student() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		  String username = request.getParameter("username");
		  String password = request.getParameter("password");
		  String address = request.getParameter("address");
		  String email = request.getParameter("email");
		  String contact =request.getParameter("contact");
		
		//  String contact = request.getParameter("contact");
		  
		  if (name.isEmpty() || address.isEmpty() || username.isEmpty() || password.isEmpty() ||  email.isEmpty() ||  contact.isEmpty()) {
			   RequestDispatcher rd = request.getRequestDispatcher("StudentForm.jsp");
	//		   out.println("<font color=red>Please fill all the fields</font>");
			   rd.include(request, response);
			  } 
		  
		  else {
			   // inserting data into mysql database 
			   // create a test database and student table before running this to create table
			   //create table student(name varchar(100), userName varchar(100), pass varchar(100), addr varchar(100), age int, qual varchar(100), percent varchar(100), year varchar(100));
			   try {
				   
			    Class.forName("com.mysql.cj.jdbc.Driver");
			    // loads mysql driver
			 
			    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mess_management", "root", "ketki2/1/99"); 
			    
			    String query = "insert into student(stud_name, stud_username, stud_pass, stud_ph, stud_email, stud_add)" + "values(?,?,?,?,?,?)";

			   PreparedStatement ps = con.prepareStatement(query); // generates sql query
			    
			    ps.setString(1, name);
			    ps.setString(2, username);
			    ps.setString(3, password);
			    ps.setString(4, contact);
			    ps.setString(5, email);
			    ps.setString(6, address);
			    ps.executeUpdate(); // execute it on test database
			  
			   System.out.print("Ruchika");
					
			    request.getRequestDispatcher("Home.jsp").forward(request,response);
			  //  response.sendRedirect("Student_Dash.jsp");
			 
			    ps.close();
			    con.close();
			  //  rs.close();
			    //c.close();
			    
				response.sendRedirect("StudentForm.jsp");
				return;
			    
			   } catch (ClassNotFoundException | SQLException e) {
			    // TODO Auto-generated catch block
			    e.printStackTrace();
			   }
			   RequestDispatcher rd = request.getRequestDispatcher("StudentDash.jsp");
			   rd.forward(request, response);
			  }
		
	}

}
