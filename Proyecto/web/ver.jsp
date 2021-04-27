<%@include file="diseños/header.jsp" %>

<%@include file="diseños/nav.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <script src="https://kit.fontawesome.com/a81368914c.js"></script>
        <link href="recursos/css/stylee.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
      <div class="container">
        <div class="card">
            <div class="shoeBackground">
                <div class="gradients">
                    <div class="gradient second" color="blue"></div>
                    <div class="gradient" color="red"></div>
                    <div class="gradient" color="green"></div>
                    <div class="gradient" color="orange"></div>
                    <div class="gradient" color="black"></div>
                </div>
                <h1 class="nike">nike</h1>
                <img src="img/logo.png" alt="" class="logo">
                <a href="#" class="share"><i class="fas fa-share-alt"></i></a>

                <img src="img/blue.png" alt="" class="shoe show" color="blue">
                <img src="img/red.png" alt="" class="shoe" color="red">
                <img src="img/green.png" alt="" class="shoe" color="green">
                <img src="img/orange.png" alt="" class="shoe" color="orange">
                <img src="img/black.png" alt="" class="shoe" color="black">

            </div>
            <div class="info">
                <div class="shoeName">
                    <div>
                        <h1 class="big">Nike Zoom KD 12</h1>
                        <span class="new">new</span>
                    </div>
                    <h3 class="small">Keyrun Development</h3>
                </div>
                <div class="description">
                    <h3 class="title">Product Info</h3>
                    <p class="text">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's.</p>
                </div>
                <div class="color-container">
                    <h3 class="title">Color</h3>
                    <div class="colors">
                        <span class="color active" primary="#2175f5" color="blue"></span>
                        <span class="color" primary="#f84848" color="red"></span>
                        <span class="color" primary="#29b864" color="green"></span>
                        <span class="color" primary="#ff5521" color="orange"></span>
                        <span class="color" primary="#444" color="black"></span>
                    </div>
                </div>
                <div class="size-container">
                    <h3 class="title">size</h3>
                    <div class="sizes">
                        <span class="size">7</span>
                        <span class="size">8</span>
                        <span class="size active">9</span>
                        <span class="size">10</span>
                        <span class="size">11</span>
                    </div>
                </div>
                <div class="buy-price">
                    <a href="#" class="buy"><i class="fas fa-shopping-cart"></i>Add to card</a>
                    <div class="price">
                        <i class="fas fa-dollar-sign"></i>
                        <h1>189.99</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <%@include file="diseños/footer.jsp" %>

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
    <script src="recursos/js/app.js"></script>
</body>
</html>