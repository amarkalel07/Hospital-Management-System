<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Database.DatabaseConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
 
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

   <style>
            body {
                background-image: url("img/Medical.jpg");
                background-color: #cccccc;
                height: 100%;
            }
            body.modal-open {
                padding-right: 0 !important;
            }

            #sidebar {
                padding-left: 0;
            }
            /*
         * Off Canvas at medium breakpoint
         * --------------------------------------------------
         */

            @media screen and (max-width: 48em) {
                .row-offcanvas {
                    position: relative;
                    -webkit-transition: all 0.25s ease-out;
                    -moz-transition: all 0.25s ease-out;
                    transition: all 0.25s ease-out;
                }
                .row-offcanvas-left .sidebar-offcanvas {
                    left: -33%;
                }
                .row-offcanvas-left.active {
                    left: 33%;
                    margin-left: -6px;
                }
                .sidebar-offcanvas {
                    position: absolute;
                    top: 0;
                    width: 33%;
                    height: 100%;
                }
            }
            /*
         * Off Canvas wider at sm breakpoint
         * --------------------------------------------------
         */

            @media screen and (max-width: 34em) {
                .row-offcanvas-left .sidebar-offcanvas {
                    left: -45%;
                }
                .row-offcanvas-left.active {
                    left: 45%;
                    margin-left: -6px;
                }
                .sidebar-offcanvas {
                    width: 45%;
                }
            }

            .card {
                overflow: hidden;
            }

            .card-block .rotate {
                z-index: 8;
                float: right;
                height: 100%;
            }

            .card-block .rotate i {
                color: rgba(20, 20, 20, 0.15);
                position: absolute;
                left: 0;
                left: auto;
                right: -10px;
                bottom: 0;
                display: block;
                -webkit-transform: rotate(-44deg);
                -moz-transform: rotate(-44deg);
                -o-transform: rotate(-44deg);
                -ms-transform: rotate(-44deg);
                transform: rotate(-44deg);
            }
            a{
                color: white;
                
            }
        </style>
        
<body>

    <%
            Connection con = null;
     %>

    <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
       <a href="#" class="navbar-brand"> <img src="img/2855.jpeg"  height="30" width="100" alt="HospitalManagementSystem">
       </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
    
         <h3>
             <b>Hospital Management System1</b>
           </h3>
      <ul class="navbar-nav ms-auto">
        <li class="nav-item-active " type="button" class="btn btn-success" > 
          <a class="nav-link active"  aria-current="page" href="Index.jsp">HOME </a>
        </li>
       
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            PATIENT
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="addpatient.jsp">ADD PATIENT</a></li>
            <li><a class="dropdown-item" href="adminPatientList.jsp">PATIENT LIST</a></li>
            
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            DOCTOR
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="addDoctor.jsp">ADD DOCTOR</a></li>
            <li><a class="dropdown-item" href="adminDoctorList.jsp">VIEW DOCTOR</a></li>
          
          </ul>
        </li>
        
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            RECEPTIONIST
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="addRecp.jsp">ADD RECEPTIONIST</a></li>
            <li><a class="dropdown-item" href="adminRecpList.jsp">VIEW RECEPTIONIST</a></li>
          
          </ul>
        </li>
        
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            WORKER
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="addWorker.jsp">ADD WORKER</a></li>
            <li><a class="dropdown-item" href="adminWorkerList.jsp">VIEW WORKER</a></li>
          
          </ul>
        </li>
        
      </ul>
    </div>
  </div>
</nav>

           <%
            try {
                con = DatabaseConnection.initializeDatabase();
                Statement st = (Statement) con.createStatement();
                String query = "select count(*) from patient";
                ResultSet rs = st.executeQuery(query);
                while (rs.next()) {
                    int patient = rs.getInt(1);
        %>
        
        
          <div class="row mb-3">
            <div class="col-xl-3 col-lg-6" style="margin-top: 20px; ">
                <div class="card card-inverse card-success">
                    <div class="card-block bg-success">
                        <div class="rotate">
                            <i class="fa fa-user fa-5x"></i>
                        </div>
                        <h6 class="text-uppercase" style="text-align: center; "><a href="adminPatientList.jsp">Patient</a></h6>
                        <h1 class="display-1" style="text-align: center"><%=patient%></h1>
                    </div>
                </div>
            </div>

           <%
                    }
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            <%
                try {
                    con = DatabaseConnection.initializeDatabase();
                    Statement st = (Statement) con.createStatement();
                    String query = "select count(*) from doctor";
                    ResultSet rs = st.executeQuery(query);
                    while (rs.next()) {
                        int doctor = rs.getInt(1);
            %>
            <div class="col-xl-3 col-lg-6" style="margin-top: 20px;">
                <div class="card card-inverse card-danger">
                    <div class="card-block bg-danger">
                        <div class="rotate">
                            <i class="fa fa-user fa-5x"></i>
                        </div>
                        <h6 class="text-uppercase" style="text-align: center"><a href="adminDoctorList.jsp">Doctor</a></h6>
                        <h1 class="display-1" style="text-align: center"><%= doctor%></h1>
                    </div>
                </div>
            </div>
            <%
                    }
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            <%
                try {
                    con = DatabaseConnection.initializeDatabase();
                    Statement st = (Statement) con.createStatement();
                    String query = "select count(*) from recp";
                    ResultSet rs = st.executeQuery(query);
                    while (rs.next()) {
                        int recp = rs.getInt(1);
            %>
            <div class="col-xl-3 col-lg-6" style="margin-top: 20px;">
                <div class="card card-inverse card-info">
                    <div class="card-block bg-info">
                        <div class="rotate">
                            <i class="fa fa-user fa-5x"></i>
                        </div>
                        <h6 class="text-uppercase" style="text-align: center"><a href="adminRecpList.jsp">Receptionist</a></h6>
                        <h1 class="display-1" style="text-align: center"><%= recp%></h1>
                    </div>
                </div>
            </div>
            <%
                    }
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            <%
                try {
                    con = DatabaseConnection.initializeDatabase();
                    Statement st = (Statement) con.createStatement();
                    String query = "select count(*) from worker";
                    ResultSet rs = st.executeQuery(query);
                    while (rs.next()) {
                        int worker = rs.getInt(1);
            %>
            <div class="col-xl-3 col-lg-6" style="margin-top: 20px;">
                <div class="card card-inverse card-warning">
                    <div class="card-block bg-warning">
                        <div class="rotate">
                            <i class="fa fa-user fa-5x"></i>
                        </div>
                        <h6 class="text-uppercase" style="text-align: center"><a href="adminWorkerList.jsp">Worker</a></h6>
                        <h1 class="display-1" style="text-align: center"><%= worker%></h1>
                    </div>
                </div>
            </div>
        </div>
        <%
                }
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>



</body>
</html>