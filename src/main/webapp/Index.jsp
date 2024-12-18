<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
  
  
  
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style >

 body {
            background-image: url("img/Medical.jpg");
            background-color: #cccccc;
        }

        .img-rounded {
            height: 100%;
            width: 100%;
        }

        h1 {
            color: white;
            text-align: center;
        }

       #formcontent{
            border-radius:18px;

        }

</style>
<body>

 <nav class="navbar navbar-expand-md navbar-light bg-light">
            <a href="#" class="navbar-brand"> <img src="img/2855.jpeg"
                                                   height="30" width="100" alt="HospitalManagementSystem1">
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse"
                    data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto" style="margin-right: 30px;">
                    <a class="dropdown-item mx-2" href="Index.jsp">Home</a>
                    <a class="dropdown-item mx-2" href="adminLogin.jsp">Admin</a>
                </div>
            </div>
        </nav>
        <div>
            <h1>
                <b>Hospital Management System1</b>
            </h1>
        </div>
        <div class="container mt-3 p-3">
            <div Style="width: 400px" class="bg-white mt-5" id="formcontent">
                <!-- Tabs Titles -->
                <h2 class="text-center">User Login</h2>
                <!-- Icon -->
                <div class="fadeIn first">

                </div>

                <!-- Login Form -->
                
                <form action="<%=request.getContextPath()%>/UserLogin" class="text-center" method="post">
                    <input type="text" id="Username" class="fadeIn second mt-3 text-center" name="username"
                           placeholder="Username"> <br>
                    <input type="password" id="password" class="fadeIn third text-center mt-3" name="password" placeholder="password"> <br>
                    <input
                        type="submit" class="fadeIn fourth mt-3" value="Log In">
                </form>
                

                <!-- Remind Passowrd -->
                <div class="text-center pb-4 mt-3" id="formFooter">
                    <a class="underlineHover " href="userRegister.jsp">Create Account</a>
                </div>

            </div> 
        </div>

</body>
</html>