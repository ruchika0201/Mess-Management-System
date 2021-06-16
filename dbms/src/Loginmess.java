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
 * Servlet implementation class Login
 */
@WebServlet("/Loginmess")
public class Loginmess extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loginmess() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		// Connect to mysql and verify username password
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		 // loads driver
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/mess_management", "root", "ketki2/1/99"); // gets a new connection
		//System.out.println("hello there.");
		
		String uname=request.getParameter("uname");
		String password=request.getParameter("password");
		
		  Statement st = c.createStatement();
		ResultSet rs = st.executeQuery("select * from mess where mess_username='"+uname+"' and mess_pass='"+password+"'");

		
		
 
		if (rs.next()) {
			
			
			String username=rs.getString("mess_username");
			String name=rs.getString("mess_name");
			String id=rs.getString("mess_id");
			//String phn=rs.getString("mess_ph");
			//String email=rs.getString("mess_email");
			String add=rs.getString("mess_add");
			//String mess=rs.getString("mess");
			   
			
			request.setAttribute("username", username);
			request.setAttribute("name", name);
			request.setAttribute("id", id);
			//request.setAttribute("phn", phn);
			//request.setAttribute("email", email);
			request.setAttribute("add", add);
			//request.setAttribute("mess",mess);
			
			
			HttpSession session1= request.getSession();
			session1.setAttribute("messid", id);
			
			request.getRequestDispatcher("MessDash.jsp").forward(request,response);
			System.out.println("Hi from MessDash.jsp");
			return;
		
			
			
			
		}
		else
		{
			response.sendRedirect("messlog.jsp");
			return;
		}
		

		
		//System.out.println("Hi from home.jsp");
	
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
