

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class transaction
 */
@WebServlet("/transaction")
public class transaction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public transaction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

HttpSession session1 = request.getSession();
int mess_id=Integer.parseInt(session1.getAttribute("mess_id").toString());
HttpSession session2 = request.getSession();
int student_id=Integer.parseInt(session2.getAttribute("id").toString());

try {
	   
    Class.forName("com.mysql.cj.jdbc.Driver");
    // loads mysql driver
 
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mess_management", "root", "ketki2/1/99"); 
    
    String query = "insert into transactions(student_id, messid)" + "values(?,?)";

   PreparedStatement ps = con.prepareStatement(query); // generates sql query
    
    ps.setInt(1, student_id);
    ps.setInt(2, mess_id);
    
    ps.executeUpdate(); // execute it on test database
  
    String q="update student set mess=? where stud_id=?";

    PreparedStatement p = con.prepareStatement(q); // generates sql query
    p.setInt(1, mess_id);
     p.setInt(2, student_id);
    
     
     p.executeUpdate(); // execute it on test database
     System.out.print("Done");
     
    HttpSession session4 = request.getSession();
 	int count=Integer.parseInt(session4.getAttribute("count").toString());
    String que = "insert into attendance(student_id, messid, count)" + "values(?,?,?)";

    PreparedStatement t = con.prepareStatement(que); // generates sql query
     
     t.setInt(1, student_id);
     t.setInt(2, mess_id);
     t.setInt(3, count);
     t.executeUpdate(); // execute it on test database
   

	  Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from student where  stud_id='"+student_id+"'");
	
	
	

	if (rs.next()) {
		
		
		String username=rs.getString("stud_username");
		String name=rs.getString("stud_name");
		String id=rs.getString("stud_id");
		String phn=rs.getString("stud_ph");
		String email=rs.getString("stud_email");
		String add=rs.getString("stud_add");
		String mess=rs.getString("mess");
		   
		
		request.setAttribute("username", username);
		request.setAttribute("name", name);
		request.setAttribute("id", id);
		request.setAttribute("phn", phn);
		request.setAttribute("email", email);
		request.setAttribute("add", add);
		request.setAttribute("mess",mess);
		
		
		
		
		request.getRequestDispatcher("StudentDash.jsp").forward(request,response);
		System.out.println("Hi from studentDash.jsp");
		return;

		
		
		
	}
    
	//response.sendRedirect("StudentDash.jsp");
	return;
    
   } catch (ClassNotFoundException | SQLException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
   }
	}

}
