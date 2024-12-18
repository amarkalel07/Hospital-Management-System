package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.DatabaseConnection;

/**
 * Servlet implementation class AddPatient
 */
@WebServlet("/AddPatient")
public class AddPatient extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 PrintWriter out = response.getWriter();
	        try {
	            Date todaysDate = new Date();
	            DateFormat df2 = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");

	            String fname = request.getParameter("fname");
	            String lname = request.getParameter("lname");
	            String gender = request.getParameter("gender");
	            String phone = request.getParameter("Mobile");
	            String city = request.getParameter("City");
	            String email = request.getParameter("email");
	            String age = request.getParameter("age");
	            String address = request.getParameter("address");

	            String DateAndTime = df2.format(todaysDate);

	            Connection con = DatabaseConnection.initializeDatabase();
	            PreparedStatement pst = con.prepareStatement("insert into patient values(?,?,?,?,?,?,?,?,?)");
	            pst.setString(9, phone);
	            pst.setString(1, fname);
	            pst.setString(2, lname);
	            pst.setString(3, gender);
	            pst.setString(4, city);
	            pst.setString(5, email);
	            pst.setString(6, age);
	            pst.setString(7, address);
	            pst.setString(8, DateAndTime);

	            int i = pst.executeUpdate();
	            if (i > 0) {
	                out.println("<script type=\"text/javascript\">");
	                out.println("alert('Login Successfully..!');");
	                out.println("window.location.href = \"UserHome.jsp\";");
	                out.println("</script>");
	                //RequestDispatcher rd = request.getRequestDispatcher("UserHome.jsp");
	                //rd.forward(request, response);
	            } else {
	            	out.println("<script type=\"text/javascript\">");
	            	out.println("alert('Incorrect Data..!');");
	            	out.println("window.location.href = \"addpatient.jsp\";");
	            	out.println("</script>");
	                //RequestDispatcher rd = request.getRequestDispatcher("addpatient.jsp");
	                //rd.forward(request, response);
	            }
	        } catch (SQLException ex) {
	            Logger.getLogger(AddPatient.class.getName()).log(Level.SEVERE, null, ex);
	        } catch (ClassNotFoundException ex) {
	            Logger.getLogger(AddPatient.class.getName()).log(Level.SEVERE, null, ex);
	        }

	        
	}

}
