package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.DatabaseConnection;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		 PrintWriter out= response.getWriter();
		 
	        try {
	            String userp = request.getParameter("username");
	            String passp = request.getParameter("password");
	            Connection con = DatabaseConnection.initializeDatabase();
	            
	           

	            String s = "select *from login";
	            Statement st = con.createStatement();
	            ResultSet rs = st.executeQuery(s);
	            String  user = null;
				String pass = null;
				while (rs.next()) {
	                user = rs.getString(1);
	                pass = rs.getString(2);
	            }
	            if (userp.equals(user) && passp.equals(pass)) {
	                out.println("<script type=\"text/javascript\">");
	                out.println("alert('Login Successfully..!');");
	                out.println("window.location.href = \"UserHome.jsp\";");
	                out.println("</script>");
	                //RequestDispatcher rd = request.getRequestDispatcher("UserHome.jsp");
	                //rd.forward(request, response);
	            } else {
	                out.println("<script type=\"text/javascript\">");
	                out.println("alert('Username or Password is Incorrect..!');");
	                out.println("window.location.href = \"Index.jsp\";");
	                out.println("</script>");
	                // RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
	                // rd.include(request, response);
	            }
	        } catch (Exception e) {

	        }
	}

}
