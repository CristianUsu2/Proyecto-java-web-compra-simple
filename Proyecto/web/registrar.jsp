<%@page import="java.io.OutputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="Modelo.producto1"%>
<%@page import="Conexion.Conexion"%>
<%@ page trimDirectiveWhitespaces="true" %>


<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Administrador</title>
        <link href="recursos/css1/bootstrap.min.css" rel="stylesheet">
        <link href="recursos/css1/estilos.css" rel="stylesheet">
        <link href="recursos/css2/styles.css" rel="stylesheet">
        <link href="librerias/fontawesome-free-5.13.1-web/css/all.min.css" rel="stylesheet" type="text/css"/>

        <script src="http://cdn.ckeditor.com/4.6.1/standard/ckeditor.js"></script>
    </head>
    <body>
    <%
                    //CONECTANOD A LA BASE DE DATOS:
                    Connection con;
                    String url = "jdbc:mysql://localhost:3306/carrito";
                    String Driver = "com.mysql.jdbc.Driver";
                    String user = "root";
                    String clave = "";
                    Class.forName(Driver);
                    con = DriverManager.getConnection(url, user, clave);
                    PreparedStatement ps;
                    //Emnpezamos Listando los Datos de la Tabla Usuario
                    Statement smt;
                    ResultSet rs;
                    smt = con.createStatement();
                    rs = smt.executeQuery("select * from producto");
                    //Creamo la Tabla:     
                %>
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
                    <img src="recursos/img/admin.png" width="50" alt="5" height="50">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="">Bienvenido ${nombre}</a></li>
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



        <section id="main">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="list-group">
                            <a href="admin.jsp" class="list-group-item active color-principal">
                                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Panel de Control
                            </a>
                            <a href="registrar.jsp" class="list-group-item"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Registrar Productos<span class="badge">90</span></a>
                            <a href="alta.jsp" class="list-group-item"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Alta de productos<span class="badge">90</span></a>
                            <a href="baja.jsp" class="list-group-item"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Baja de productos<span class="badge">90</span></a>
                        </div>

                    </div>


                    <div class="col-md-9">
                        <div class="panel panel-default">
                            <div class="panel-heading main-color-bg">
                                <h3 class="panel-title">Vista Rápida</h3>
                            </div>
                            <div class="panel-body">
                                <div class="col-md-3">
                                    <div class="well dash-box">
                                        <h2><span class="glyphicon glyphicon-user" aria-hidden="true"></span> 45,508</h2>
                                        <h4>Usuarios</h4>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="well dash-box">
                                        <h2><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> 25,420</h2>
                                        <h4>Registros</h4>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="well dash-box">
                                        <h2><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> 97,893</h2>
                                        <h4>Ventas</h4>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="well dash-box">
                                        <h2><span class="glyphicon glyphicon-stats" aria-hidden="true"></span> 15,336</h2>
                                        <h4>Visitantes</h4>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Registrar Productos</h3>
                </div>

           
                <div class="container" buscar>            
                    <button  style="margin-top: 80px" type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal">Agregar Productos</button>
                    <div style="padding-left: 800px">     
                        <form class="form">
                            <input  class="form-control" type="text" name="txtbuscar" placeholder="Buscar Producto">
                            <input class="btn btn"type="submit" value="Buscar">

                        </form>

                    </div>
                </div>  

                <br>
                <div class="container">               
                    <!--<a  class="btn btn-success" href="Agregar.jsp">Nuevo Registro</a> Esto es Cuando se Crea un nuevo Archivo Agregar.jsp -->         
                    <table class="table table-bordered"  id="tablaDatos">
                        <thead>
                            <tr>
                                <th class="text-center">Id</th>
                                <th>Nombres</th>
                                <th class="text-center">Foto</th>
                                <th class="text-center">Descripción</th>
                                <th class="text-center">Precio</th>
                                <th class="text-center">Stock</th>
                                <th class="text-center">Acciones</th>

                            </tr>
                        </thead>
                        <tbody id="tbodys">
                            <%   
                                
                                while (rs.next()) {
                            %>
                            <% 
                            /* Blob img =null;
                                byte [] imgbytes = null;
                                
                              img =rs.getBlob(1);
                              imgbytes = img.getBytes(1,(int) img.length());
                              response.setContentType("image/gif");
                              OutputStream k = response.getOutputStream();
                             */                           
                             %>
                            <tr>
                                <td class="text-center"><%= rs.getInt("idProducto")%></td>
                                <td class="text-center"><%= rs.getString("Nombres")%></td>
                                <td class="text-center"><img src="ControladorIMG1?id=<%= rs.getInt("idProducto")%>" width="200" height="180"></td>
                                <td class="text-center"><%= rs.getString("Descripcion")%></td>
                                <td class="text-center"><%= rs.getDouble("Precio")%></td>
                                <td class="text-center"><%= rs.getInt("Stock")%></td>

                                <td class="text-center">

                                    <!-- <input type="hidden" value="<//%= rs.getInt("Id_Usuario")%>" id="Editar"/>
                                    <input type="submit" class="btn btn-warning" data-toggle="modal" data-target="#myModal1" value="Editar"/>  -->
                                    <a href="editarp.jsp?id=<%= rs.getInt("idProducto")%>" class="btn btn-primary" >Editar</a>
                                    <a onclick="eliminar()" href="Delete.jsp?id=<%= rs.getInt("idProducto")%>" class="btn btn-danger">Eliminar</a>
                                </td>
                            </tr>
                            <%}%>
                    
                    </table>
                </div>        
                <div class="container">          
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="document" style="z-index: 9999; width: 450px">
                            <div class="modal-content">
                                <div class="modal-header">                            
                                    <h4 class="modal-title" id="myModalLabel" >Agregar Producto</h4>
                                </div>
                                <div class="modal-body">
                                    <form action="" method="post">
                                        <label>Nombre:</label> 
                                        <input type="text" name="txtNom" class="form-control" required/><br>
                                        <label>Foto:</label> 
                                        <input type="text" name="txtNom" class="form-control" required/><br>

                                        <label>Descripción:</label> 
                                        <input type="text" name="txtUsuario" class="form-control" required/>          
                                        <label>Precio:</label> 
                                        <input type="text" name="txtPass" class="form-control" required/>     
                                        <label>Stock:</label> 
                                        <input type="text" name="txtCorreo" class="form-control" required/>     

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>                            
                                            <input onclick="agregar()" type="submit" value="Guardar" class="btn btn-primary"/>
                                        </div>
                                    </form>
                                </div>
                            </div>                    
                        </div>
                    </div>

                </div>        
            </div>
        </section>

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
                                <script src="recursos/js1/jquery-3.1.1.min.js"></script>   
                                <script src="recursos/js/alertas.js" type="text/javascript"></script>
                                <script src="librerias/sweetalert2@9.js" type="text/javascript"></script>
                                <script src="recursos/js1/main.js"></script>
                                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
                                <script src="recursos/js2/bootstrap.min.js"></script>
                                </body>
                                </html>