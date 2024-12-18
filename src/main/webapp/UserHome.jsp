<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
 
<meta charset="UTF-8">
<title>User Home</title>

       <style>
            body {
            background-image: url("img/Medical.jpg");
            background-color: #cccccc;
        }
        </style>
        
</head>
<body>

   <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
       <a href="#" class="navbar-brand"> <img src="img/2855.jpeg"  height="30" width="100" alt="HospitalManagementSystem">
       </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse " id="navbarNavDropdown">
      <ul class="navbar-nav mr-auto ">
        <li class="nav-item-active ">
          <a class="nav-link active " aria-current="page" href="Index.jsp">HOME </a>
        </li>
       
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            PATIENT
          </a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="addpatient.jsp">ADD PATIENT</a>
            <a class="dropdown-item" href="listPatient.jsp">PATIENT LIST</a>
            
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            BILLING
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">ADD BILL</a></li>
            <li><a class="dropdown-item" href="#">VIEW BILL</a></li>
          
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
        
        
    

</body>
</html>