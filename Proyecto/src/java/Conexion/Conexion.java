package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Conexion {
      private String driver="jdbc:mysql";
   private String host="localhost";
   private String name="carrito";
   private String db_user="root";
   private String db_contra="";
   private int db_port=3306;

    public Connection getconexion(){
       Connection con=null;
       try {
           String str_con=this.driver+"://"+this.host+":"+this.db_port+"/"+this.name+"?useServerPrepStmts=true";
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection(str_con,db_user,db_contra);
       } catch (ClassNotFoundException ex) {
           Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
       } catch (SQLException ex) {
           Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
       }
       
       return con;
    }
}