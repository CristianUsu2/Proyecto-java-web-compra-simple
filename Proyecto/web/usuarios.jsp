<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Administrador</title>
        <link href="recursos/css1/bootstrap.min.css" rel="stylesheet">
        <link href="recursos/css1/estilos.css" rel="stylesheet">


    </head>
    <body>

        <nav class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="registrar.jsp">Registrar Productos</a></li>
                        <li><a href="paginas.html">Generar Ventas</a></li>
                        <li><a href="entradas.html">Sumar Cantidades</a></li>
                        <li><a href="entradas.html">Restar Cantidades</a></li>
                        <li><a href="Controlador?accion=usuarios">Usuarios Registrados</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="">Bienvenido, ${usuario}</a></li>
                        <li><a href="index.jsp">Salir</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <header id="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-10">
                        <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Centro de Servicios</h1>
                    </div>
                </div>
            </div>
        </header>

        <br>
        <a cladiv class="container">
         <a class="btn btn-success btn-lg" href="Controlador?accion=listar">Listar Persona</a>
        </div>

        <footer>
            <div class="main-content">
                <div class="left box">
                    <h2>
                        Conocenos</h2>
                    <div class="content">
                        <p>
                            CodinNepal is a YouTube channel where you can learn web designing, web development, ui/ux designing, html css tutorial, hover animation and effects, javascript and jquery tutorial and related so on.</p>
                        <div class="social">
                            <a href="https://facebook.com/coding.np"><span class="fab fa-facebook-f"></span></a>
                            <a href="#"><span class="fab fa-twitter"></span></a>
                            <a href="https://instagram.com/coding.np"><span class="fab fa-instagram"></span></a>
                            <a href="https://youtube.com/c/codingnepal"><span class="fab fa-youtube"></span></a>
                        </div>
                    </div>

                </div>
                <div class="center box">
                    <h2>
                        Nuestra Ubicación</h2>
                    <div class="content">
                        <div class="place">
                            <span class="fas fa-map-marker-alt"></span>
                            <span class="text">Birendranagar, Surkhet</span>
                        </div>
                        <div class="phone">
                            <span class="fas fa-phone-alt"></span>
                            <span class="text">+089-765432100</span>
                        </div>
                        <div class="email">
                            <span class="fas fa-envelope"></span>
                            <span class="text">abc@example.com</span>
                        </div>
                        <br>
                    </div>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.9206176295443!2d-75.56793468590661!3d6.274168227753894!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e4428dc7ee03bb9%3A0xe13cbeea0a632ccb!2sCl.%2079%20%2354b-34%2C%20Medell%C3%ADn%2C%20Antioquia!5e0!3m2!1ses-419!2sco!4v1591910384437!5m2!1ses-419!2sco" width="400" height="300" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
                <div class="right box">
                    <h2>
                        Contacto</h2>
                    <div class="content">
                        <form action="#">
                            <div class="email">
                                <div class="text">
                                    Correo</div>
                                <input type="email" required>
                            </div>
                            <div class="msg">
                                <div class="text">
                                    Mensaje </div>
                                <textarea rows="2" cols="25" required></textarea>
                                <changeit id=".msgForm" rows="2" cols="25" required></changeit> <!-- replace this changeit name to textarea -->

                                <br />
                                <div class="btn">
                                    <button type="submit">ENVIAR</button>
                                </div>
                                <div class="bottom">
                                    <center>
                                        <span class="credit">Tienda Informática Medellín | </span>
                                        <span class="far fa-copyright"></span> 2020 Todos los derechos reservados.
                                    </center>
                                </div>
                                </footer>

                                <script>
                                    CKEDITOR.replace('editor1');
                                </script>
                                <script src="http://cdn.ckeditor.com/4.6.1/standard/ckeditor.js"></script>
                                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
                                <script src="recursos/js2/bootstrap.min.js"></script>
                                </body>
                                </html>