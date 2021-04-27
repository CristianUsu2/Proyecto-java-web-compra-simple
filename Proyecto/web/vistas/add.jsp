
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link href="../recursos/css2/bootstrap.min.css" rel="stylesheet">
                <link href="../recursos/css1/estilos.css" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <h1>Agregar Persona</h1>
                <form action="Controlador">
                    USUARIO:<br>
                    <input class="form-control" type="text" name="txtUser"><br>
                    Nombre: <br>
                    <input class="form-control" type="text" name="txtNom"><br>
                    Contraseña: <br>
                    <input class="form-control" type="text" name="txtpass"><br>
                    Correo: <br>
                    <input class="form-control" type="text" name="txtCorreo"><br>
                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                    <a href="listar.jsp">Regresar</a>
                </form>
            </div>

        </div>
    </body>
</html>
