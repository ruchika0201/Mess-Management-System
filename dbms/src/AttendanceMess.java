

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
 * Servlet implementation class AttendanceMess
 */
@WebServlet("/AttendanceMess")
public class AttendanceMess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AttendanceMess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			   
		    Class.forName("com.mysql.cj.jdbc.Driver");
		    // loads mysql driver
		 
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mess_management", "root", "ketki2/1/99"); 
		    
		    HttpSession session2 = request.getSession();
			int student_id=Integer.parseInt(session2.getAttribute("stuid").toString());

			 Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from student where  stud_id='"+student_id+"'");
				
				
				int counter=0;

				if (rs.next()) {
					
					
					String username=rs.getString("stud_username");
					String name=rs.getString("stud_name");
					String id=rs.getString("stud_id");
					String phn=rs.getString("stud_ph");
					String email=rs.getString("stud_email");
					String add=rs.getString("stud_add");
					String mess=rs.getString("mess");
					   counter=rs.getInt("counter");
					   if(counter!=0)
					   {
						   counter--;
					   }
					
					request.setAttribute("username", username);
					request.setAttribute("name", name);
					request.setAttribute("id", id);
					request.setAttribute("phn", phn);
					request.setAttribute("email", email);
					request.setAttribute("add", add);
					request.setAttribute("mess",mess);
					request.setAttribute("counter",counter);
					
					 String q="update student set counter=? where stud_id=?";

						PreparedStatement p = con.prepareStatement(q); // generates sql query
					    p.setInt(1, counter);
					     p.setInt(2, student_id);
					    
					     
					     p.executeUpdate(); // execute it on test database
					
					     String que="update attendance set count=? where student_id=?";

							PreparedStatement pt = con.prepareStatement(que); // generates sql query
						    pt.setInt(1, counter);
						     pt.setInt(2, student_id);
						    
						     
						     pt.executeUpdate(); // execute it on test database
						
					
					request.getRequestDispatcher("List.jsp").forward(request,response);
					//System.out.println("Hi from studentDash.jsp");
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
