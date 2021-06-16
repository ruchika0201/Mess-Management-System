

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Mess
 */
@WebServlet("/Mess")
public class Mess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mess() {
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
		  String contact = request.getParameter("contact");
		  
		  if (name.isEmpty() || address.isEmpty() || username.isEmpty() || password.isEmpty() ||  email.isEmpty()||  contact.isEmpty()) {
			   RequestDispatcher rd = request.getRequestDispatcher("MessForm.jsp");
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
			    int count=0;
			    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "ketki2/1/99"); 
			    count++;
			    String query = "insert into mess(name, username, password, address, contact, email) values(?,?,?,?,?,?)";

			    PreparedStatement ps = con.prepareStatement(query); // generates sql query
			    ps.setString(1, name);
			    ps.setString(2, username);
			    ps.setString(3, password);
			    ps.setString(4, address);
			    ps.setString(5, contact);
			  //  ps.setInt(6, Integer.parseInt(contact));
			  
			    ps.setString(6, email);
			    

			    ps.executeUpdate(); // execute it on test database
			    System.out.println("successfuly inserted");
			    ps.close();
			    con.close();
			   } catch (ClassNotFoundException | SQLException e) {
			    // TODO Auto-generated catch block
			    e.printStackTrace();
			   }
			   RequestDispatcher rd = request.getRequestDispatcher("MessDash.jsp");
			   rd.forward(request, response);
			  }
			 }
	

}
