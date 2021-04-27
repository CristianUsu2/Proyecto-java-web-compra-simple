package Modelo;

import Conexion.Conexion;
import java.io.InputStream;
import java.sql.Connection;

    public class Carrito {
    int item;
    int idProducto;
    String nombres;
    String descripcion;
    double precioCompra;
     InputStream foto;
    int cantidad;
   double subTotal;
    Connection db;
    
    public Carrito() {
       Conexion con = new Conexion();
       this.db = con.getconexion();
    }
    public Carrito(int item, int idProducto, String nombres, String descripcion, double precioCompra,  InputStream foto, int cantidad, double subTotal) {
        this.item = item;
        this.idProducto = idProducto;
        this.nombres = nombres;
        this.descripcion = descripcion;
        this.precioCompra = precioCompra;
        this.foto = foto;
        this.cantidad = cantidad;
        this.subTotal = subTotal;
              Conexion con = new Conexion();
       this.db = con.getconexion();
    }

    public int getItem() {
        return item;
    }

    public void setItem(int item) {
        this.item = item;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getPrecioCompra() {
        return precioCompra;
    }

    public void setPrecioCompra(double precioCompra) {
        this.precioCompra = precioCompra;
    }
    
      public double getFoto() {
        return precioCompra;
    }

    public void setFoto(InputStream foto) {
        this.foto = foto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }

    
}

    

