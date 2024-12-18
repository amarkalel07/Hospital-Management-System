package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.DatabaseConnection;

/**
 * Servlet implementation class UserRegister
 */
@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 PrintWriter out = response.getWriter();
	        try {
	            Connection con = DatabaseConnection.initializeDatabase();
	            
	            String user = null;
	            String pass= null;
	           

	            user = request.getParameter("Username");
	            pass = request.getParameter("password");
	            String repassp = request.getParameter("repassword");

	            PreparedStatement pst = con.prepareStatement("insert into login values(?,?)");
	            pst.setString(1, user);
	            pst.setString(2, pass);
	            int i = pst.executeUpdate();
	            if (i > 0) {
	                out.println("<script type=\"text/javascript\">");
	                out.println("alert('Register Successfully..!');");
	                out.println("window.location.href = \"Index.jsp\";");
	                out.println("</script>");
	                //RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
	                //rd.forward(request, response);
	            } else {
	                out.println("<script type=\"text/javascript\">");
	                out.println("alert('Register Failed');");
	                out.println("window.location.href = \"userRegister.jsp\";");
	                out.println("</script>");
	                //RequestDispatcher rd = request.getRequestDispatcher("userRegister.jsp");
	                //rd.forward(request, response);
	            }

	        } catch (Exception e) {

	        }

	}

}
