
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="recursos/css2/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
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
            //Emnpezamos Listando los Datos de la Tabla Usuario pero de la fila seleccionada
            PreparedStatement ps;
            ResultSet rs;
            int id = Integer.parseInt(request.getParameter("id"));
            ps = con.prepareStatement("select * from registrar where id=" + id);
            rs = ps.executeQuery();
            while (rs.next()) {
        %>
        <div class="container">
            <h1>Modificar Usuario</h1>
            <hr>
            <form action="" method="post" class="form-control" style="width: 600px; height: 600px">
                ID:
                <input type="text" readonly="" class="form-control" value="<%= rs.getInt("Id")%>"/>
                Nombre:
                <input type="text" name="txtNom" class="form-control" value="<%= rs.getString("nombre")%>"/><br>
                Apellido:
                <input type="text" name="txtApellido" class="form-control" value="<%= rs.getString("apellido")%>"/><br>
                Usuario:
                <input type="text" name="txtUsuario" class="form-control" value="<%= rs.getString("usuario")%>"/>
                Contraseña:
                <input type="password" name="txtPass" class="form-control" value="<%= rs.getString("contra")%>"/>
                Correo:
                <input type="text" name="txtCorreo" class="form-control" value="<%= rs.getString("correo")%>"/>
                Rol:
                <input type="text" name="txtRol" class="form-control" value="<%= rs.getString("rol")%>"/>
                <br>
                <input type="submit" value="Guardar" class="btn btn-primary btn-lg"/>

                <a onclick="editar()" href="admin.jsp">Regresar</a>
            </form>
            <%}%>
        </div>
                                          <script src="recursos/js1/jquery-3.1.1.min.js"></script>   
        <script src="recursos/js/alertas.js" type="text/javascript"></script>
                <script src="librerias/sweetalert2@9.js" type="text/javascript"></script>
        <script src="recursos/js1/main.js"></script>
    </body>
</html>
<%
    String nombre, usuario, contra, correo, apellido, rol;
    nombre = request.getParameter("txtNom");
    apellido = request.getParameter("txtApellido");
    usuario = request.getParameter("txtUsuario");
    contra = request.getParameter("txtPass");
    correo = request.getParameter("txtCorreo");
    rol = request.getParameter("txtRol");

    if (nombre != null && usuario != null && contra != null && correo != null) {
        ps = con.prepareStatement("update registrar set nombre='" + nombre + "', apellido='" + apellido +  "', rol='" + rol + "', usuario='" + usuario + "', contra='" + contra + "', correo='" + correo + "' where id=" + id);
        ps.executeUpdate();
        response.sendRedirect("admin.jsp");
    }


%>
