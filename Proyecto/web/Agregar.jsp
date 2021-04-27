
<%@page import="java.awt.TrayIcon.MessageType"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>  
        <div class="container">
            <h1>Agregar Registro</h1>
            <hr>
            <form action="" method="post" class="form-control" style="width: 500px; height: 400px">
                Nombre:
                <input type="text" name="txtNom" class="form-control"/><br>
                  Apellido:
                <input type="text" name="txtApellido" class="form-control"/><br>
                Usuario:
                <input type="text" name="txtUsuario" class="form-control"/>
                       Contraseña:
                <input type="password" name="txtPass" class="form-control"/>
                       Correo:
                <input type="text" name="txtCorreo" class="form-control"/>
                     Rol:
                <input type="text" name="txtRol" class="form-control"/><br>
                <br>
                <input type="submit" value="Guardar" class="btn btn-primary btn-lg"/>
                <a href="admin.jsp">Regresar</a>
            </form>
        </div>


    </body>
</html>
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
    String nombre, usuario, contra, correo;
    nombre = request.getParameter("txtNom");
    usuario = request.getParameter("txtUsuario");
    contra = request.getParameter("txtContra");
    correo = request.getParameter("txtCorreo");

    if (nombre != null && usuario != null && contra !=null && correo !=null) {
        ps = con.prepareStatement("insert into registrar(nombre, apellido, rol usuario, contra, correo)values('" + nombre + "','"  + usuario + "','" + contra + "','" + correo + "')");
        ps.executeUpdate();
        JOptionPane.showMessageDialog(null, "Se Agrego Correctamete");
        response.sendRedirect("admin.jsp");

    }


%>