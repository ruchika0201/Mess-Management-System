

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class StudentDashDel
 */
@WebServlet("/StudentDashDel")
public class StudentDashDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentDashDel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
		    // loads mysql driver
		    
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mess_management", "root", "ketki2/1/99"); 
		
		    HttpSession session1 = request.getSession();
		    int id=Integer.parseInt(session1.getAttribute("id").toString());
			   
			
			
			 //Integer i=Integer.valueOf(id );   
			 String q="delete from student where stud_id=?";

				PreparedStatement p = con.prepareStatement(q); // generates sql query
			    p.setInt(1, id);
			  
			    
			     
			     p.executeUpdate(); // execute it on test database
			     System.out.print("updated");
			
			
			
			
			
			
			     response.sendRedirect("Home.jsp");
			
			
			
			
				
			}
			catch (Exception e) {
			    // TODO Auto-generated catch block
			    e.printStackTrace();
			   }
	}

}
