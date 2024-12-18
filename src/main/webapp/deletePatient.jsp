<%@page import="Database.DatabaseConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta charset="UTF-8">
        <title>Delete Patient</title>
   </head>
<body>

     <%
            String mob = request.getParameter("mob");
            Connection con = null;
            Statement stmt = null;
            con = DatabaseConnection.initializeDatabase();
            stmt = (Statement) con.createStatement();
            String query = "delete from  patient " + "where mobile = '"+mob+"'";
            stmt.executeUpdate(query);
            con.close();
            RequestDispatcher rd = request.getRequestDispatcher("AdminHome.jsp");
            rd.forward(request, response);
        %>

</body>
</html>