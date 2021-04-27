<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Inicio de Sesi�n</title>
        <link rel="stylesheet" href="recursos/css/estilo.css">
        <script src="recursos/js/main.js"></script>
    </head>
    <body>
        <div class="contenedor-form">
            <div class="toggle">
                <span> Crear Cuenta</span>
            </div>

            <div class="formulario">
                <h2>Iniciar Sesi�n</h2>
                <form action="usuario" id="forminicio">
                    <input type="text" placeholder="Usuario" required name="usuario" id="txtusuario">
                    <input type="password" placeholder="Contrase�a" required name="password" id="txtpass">
                    <input type="submit" value="Iniciar Sesi�n" id="btniniciar">
                </form>
            </div>

            <div class="formulario"  id="registrar">
                <h2>Crea tu Cuenta</h2>
                <form method="post"action="registros">
                    <input type="text" placeholder="Usuario" required name="usuario">

                    <input type="password" placeholder="Contrase�a" required name="contrase�a">

                    <input type="email" placeholder="Correo Electronico" required name ="correo">

                    <input type="text" placeholder="Nombre" required name="nombre">

                    <input type="text" placeholder="Apellido" required name="apellido">

                    <input type="text" placeholder="Rol" required name="rol">


                    <input onclick="registro()" type="submit" value="Registrar" class="btn btn-success">
                </form>
            </div>
        </div>

        <script src="recursos/js1/jquery-3.1.1.min.js"></script>   
        <script src="recursos/js/alertas.js" type="text/javascript"></script>
                <script src="librerias/sweetalert2@9.js" type="text/javascript"></script>
        <script src="recursos/js1/main.js"></script>
    </body>
</html>