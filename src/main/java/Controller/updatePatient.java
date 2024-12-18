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
 * Servlet implementation class updatePatient
 */
@WebServlet("/updatePatient")
public class updatePatient extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 PrintWriter out = response.getWriter();
	        
	        String fname = request.getParameter("fname");
	        String lname = request.getParameter("lname");
	        String gender = request.getParameter("gender");
	        String phone = request.getParameter("Mobile");
	        String city = request.getParameter("City");
	        String email = request.getParameter("email");
	        String age = request.getParameter("age");
	        String address = request.getParameter("address");

	        try {
	            Connection con = DatabaseConnection.initializeDatabase();
	            PreparedStatement pst = con.prepareStatement("update patient set fname = ? , lname = ? , gender = ? , city = ? , email = ? , age = ? , address = ?  where mobile = '" + phone + "' ");
	            pst.setString(1, fname);
	            pst.setString(2, lname);
	            pst.setString(3, gender);
	            pst.setString(4, city);
	            pst.setString(5, email);
	            pst.setString(6, age);
	            pst.setString(7, address);

	            int i = pst.executeUpdate();
	            if (i > 0) {
	            	out.println("<script type=\"text/javascript\">");
	            	out.println("alert('Update Successfully..!');");
	            	out.println("window.location.href = \"AdminHome.jsp\";");
	            	out.println("</script>");
	                //RequestDispatcher rd = request.getRequestDispatcher("AdminHome.jsp");
	                //rd.forward(request, response);
	            } else {
	            	out.println("<script type=\"text/javascript\">");
	            	out.println("alert('Failed..! Try Again Later...');");
	            	out.println("window.location.href = \"updatePatient.jsp\";");
	            	out.println("</script>");
	                //RequestDispatcher rd = request.getRequestDispatcher("updatePatient.jsp");
	                //rd.forward(request, response);
	            }
	            con.close();
	        } catch (Exception e) {

	        }
	}

}
