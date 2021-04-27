<%@include file="dise/header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="recursos/css/esti.css" rel="stylesheet" type="text/css"/>


        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
           <a class="navbar-brand"><i class="fas fa-laptop" ></i>Tienda Informática</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Controlador2?accion=home"><i class="fas fa-home"></i>INICIO <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link " href="Controlador2?accion=Carrito"><i class="fas fa-shopping-cart">(<label style="color: darkorange">${contador}</label>)</i>Carrito</a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link" href="login.jsp"><i class="fas fa-sign-in-alt"></i>INICIAR SESIÓN</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Buscar Producto" aria-label="search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fas fa-search"></i>Buscar</button>
                </form>
            </div>
        </nav>
                    <style>
                        .card{
                            margin-top: 20px;
                            margin-bottom: 30px;
                        }
                    </style>
<div class="container mt-4">
            <div class="row">
                <c:forEach var="p" items="${productos}">
                     <div class="col-sm-4">
                    <div class="card">
                        <div class="card-header">
                            <label>${p.getNombres()}</label>
                        </div>
                        <div class="card-body">
                            <i>${p.getPrecio()}</i>
                            <img src="ControladorIMG1?id=${p.getId()}" width="200" height="180">
                        </div>
                        <div class="card-footer text-center"
                            <label>${p.getDescripcion()}</label>
                            <div>
                                <a href="Controlador2?accion=AgregarCarrito&id=${p.getId()}" class="btn btn-outline-info"><i class="fas fa-cart-plus"></i>Agregar a Carrito</a>
                                <a href="Controlador2?accion=Comprar&id=${p.getId()}" class="btn btn-danger"><i class="fab fa-shopify"></i>Comprar</a>
                            </div>
                        </div>
                    </div>
                                    </div>
                           
                </c:forEach>
               
            
            </div>
        </div>
          
  

<%@include file="dise/footer.jsp" %>

<footer>
    <div class="main-content">
        <div class="left box">
            <h2>
                Conocenos</h2>
            <div class="content">
                <p>
                     Con valor agregado de Calidad y Servicio al cliente como principal objetivo. Obtienes Precios Bajos Online con productos de altísima calidad en todo nuestro portafolio: Compuesto por, Portátiles, Computadores, Pc de escritorio, Pc Gamer, All in One, Computador empresarial, Disco Duro en Esta Sólido (SSD), Accesorios Gamer, Teclados, Mouse para juegos Impresoras, Scanner, Celulares baratos, Proyectores y consumibles. Envíos a toda Colombia.
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
                    <span class="text">Avenida Colombia, Medellín</span>
                </div>
                <div class="phone">
                    <span class="fas fa-phone-alt"></span>
                    <span class="text">+57 3053495723</span>
                </div>
                <div class="email">
                    <span class="fas fa-envelope"></span>
                    <span class="text">tiendainformatica@gmail.com</span>
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