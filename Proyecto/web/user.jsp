<%@page import="java.sql.*"%>
<%@page import="Controler.Consultas"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link href="recursos/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="librerias/fontawesome-free-5.13.1-web/css/all.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="recursos/css/estilos.css"/>
        <link icon="stylesheet" href="recursos/img/logo.png"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        
        <nav class="navbar navbar-dark bg-dark">
            <a style="color: white" ></span>Bienvenido</a>
            <div class="dropdown">
             <ul class="nav justify-content-end">
  <li class="nav-item">
    <a class="nav-link active" href="listar.jsp"><i class="fas fa-bars"></i>LISTAR PRODUCTOS</a>
  </li>
    <li class="nav-item">
    <a class="nav-link" href="index.jsp"><i class="fas fa-sign-out-alt"></i></i>CERRAR SESIÓN</a>
  </li>
</ul>
</nav>
                <a style="color: white" href="index.jsp" class="nav-link dropdown-toggle" data-toggle="dropdown">Cerrar Sesión</a>
                <div class="dropdown-menu text-center">
                    <a><img src="recursos/img/user1.jpg" height="80" width="80"></a><br>
                    <a>${usuario}</a>
                    <a>${correo}</a>
                    <div class="dropdown-divider"></div>
                    <a href="index.jsp"class="dropdown-item">Salir</a>
                </div>
            </div>
                    </ul>
        </nav>
        
        <div class="container mt-4">
            <h1>Bienvenido <strong>Usuario: ${usuario}</strong></h1>
            
        </div>
        
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>
