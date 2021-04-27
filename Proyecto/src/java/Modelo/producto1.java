package Modelo;

import Conexion.Conexion;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class producto1 {

private int idProducto ;
private String Nombres;
private Blob Foto;
private String Descripcion;
private double Precio;
private int Stock;
Connection db;

    public producto1() {
    
       Conexion con = new Conexion();
       this.db = con.getconexion();
    }

public ResultSet Listar(){
    ResultSet rs=null;
    String sql = "SELECT * FROM producto WHERE idProducto=?";
    
    try {
        PreparedStatement ps = this.db.prepareStatement(sql);
        ps.setInt(1, this.idProducto);
        rs = ps.executeQuery();
    } catch (SQLException ex) {
        Logger.getLogger(producto1.class.getName()).log(Level.SEVERE, null, ex);
    }
    
    return rs;
}

}

   

