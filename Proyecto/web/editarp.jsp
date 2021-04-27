
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
            ps = con.prepareStatement("select * from producto where idProducto=" + id);
            rs = ps.executeQuery();
            while (rs.next()) {
        %>
        <div class="container">
            <h1>Modificar Producto</h1>
            <hr>
            <form action="" method="post" class="form-control" style="width: 600px; height: 600px" enctype="multipart/form-data">
                ID:
                <input type="text" readonly="" class="form-control" value="<%= rs.getInt("idProducto")%>"/>
                Nombre del producto:
                <input type="text" name="nnombre" class="form-control" value="<%= rs.getString("Nombres")%>"/>
                   Foto:
                <input type="text" name="nnombre" class="form-control" value="<%= rs.getString("Foto")%>"/>
                
                Descripcion:
                <input type="text" name="ndescripcion" class="form-control" value="<%= rs.getString("Descripcion")%>"/><br>
                Precio:
                <input type="text" name="nprecio"  class="form-control" value="<%= rs.getString("Precio")%>"/>
                Stock:
                <input type="text" name="nstock" class="form-control" value="<%= rs.getString("Stock")%>"/>
                            
                <br>
          
                <%}%>
                
                       
                <input type="submit" value="Guardar" class="btn btn-primary btn-lg"/>

                <a onclick="editar()" href="admin.jsp">Regresar</a>
            </form>

        </div>
                                          <script src="recursos/js1/jquery-3.1.1.min.js"></script>   
        <script src="recursos/js/alertas.js" type="text/javascript"></script>
                <script src="librerias/sweetalert2@9.js" type="text/javascript"></script>
        <script src="recursos/js1/main.js"></script>
    </body>
</html>
<%
    String nuevafoto, nuevadescrip, precio,nuevonombre;
    double nueprecio;
    int nuevostock;
    nuevonombre =request.getParameter("nnombre");
    nuevafoto = request.getParameter("nfoto");
    nuevadescrip = request.getParameter("ndescripcion");
    precio =request.getParameter("nstock");
    nueprecio=Double.parseDouble(precio);
    nuevostock=Integer.parseInt(request.getParameter("nstock"));
    if (nuevonombre != null && nuevadescrip != null && nueprecio !=0 && nuevostock !=0) {
        ps = con.prepareStatement("update producto set Nombres='" + nuevonombre + "', Foto='" +nuevafoto+ "', Descripcion='" + nuevadescrip + "',Precio='" + nueprecio + "', Stock='" + nuevostock + "' where idProducto=" + id);
        ps.executeUpdate();
        response.sendRedirect("admin.jsp");
    }


%>
