<%@include file="dise/header.jsp" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="fontawesome-free-5.13.1-web/css/fontawesome.css" rel="stylesheet" type="text/css"/>
        <link href="fontawesome-free-5.13.1-web/fontawesome.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="fontawesome-free-5.13.1-web/css/all.css" rel="stylesheet" type="text/css"/>
        <link href="fontawesome-free-5.13.1-web/css/all.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
           <a class="navbar-brand"><i class="fas fa-laptop" ></i>Tienda Informática</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Controlador2?accion=home"><i class="fas fa-home"></i>Seguir Comprando <span class="sr-only">(current)</span></a>
                    </li>

                     <li class="nav-item">
                        <a class="nav-link" href="login.jsp"><i class="fas fa-sign-in-alt"></i>INICIAR SESIÓN</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Buscar Producto" aria-label="Buscar">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fas fa-search"></i>Buscar</button>
                </form>
            </div>
        </nav>
        <div class="container mt-4">
            <h3>Carrito</h3>
            <br>
            <div class="row">
                <div class="col-sm-8">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ITEM</th>
                                <th>NOMBRES</th>
                                <th>DESCRIPCION</th>
                                <th>PRECIO</th>
                                <th>CANTIDAD</th>
                                <th>SUBTOTAL</th>
                                <th>ACCION</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="car" items="${carrito}">
                            <tr class="text-center">
                                <td>${car.getItem()}</td>
                                <td>${car.getNombres()}</td>
                                <td>${car.getDescripcion()}
                                    <img src="ControladorIMG1?id=${car.getIdProducto()}" width="100" height="100">
                                </td>
                                <td>${car.getPrecioCompra()}</td>
                                <td>${car.getCantidad()}</td>
                                <td>${car.getSubTotal()}</td>
                                <td>
                                    <input type="hidden" id="idp" value="${car.getIdProducto()}">
                                    <a href="#" id="btnDelete"><i class="fas fa-trash-alt"></i></a>
                                </td>
                            </tr>
                        </c:forEach>
                            
                        </tbody>
                    </table>
                </div>
                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-header">
                            <h3>Generar compra</h3>
                        </div>
                         <div class="card-body">
                             <label>Subtotal:</label>
                             <input type="text" value="$.${totalPagar}0" readonly="" class="form-control">
                                <label>Descuento:</label>
                             <input type="text" readonly="" class="form-control">
                                <label>Total a Pagar:</label>
                             <input type="text" value="$.${totalPagar}0" readonly="" class="form-control">
                            </div>
                                             <div class="card-footer">
                         <a class="btn btn-info btn-block"id="pago" id="pago">Realizar Pago</a>
                         <a class="btn btn-danger btn-block" id="compra">Generar Compra</a>
                            </div>
                    </div>

                </div>
            </div>
        </div>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <script src="recursos/js/funciones.js" type="text/javascript"></script>
    </body>
</html>
