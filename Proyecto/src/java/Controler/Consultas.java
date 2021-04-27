package Controler;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Consultas extends Conexion {

    public boolean autenticacion(String usuario, String contraseña, String rol) {
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String consulta = "select * from registrar where usuario = ? and contra = ? and rol = ?";
            pst = getConnection().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, contraseña);
            pst.setString(3, rol);
            rs = pst.executeQuery();

            if (rs.absolute(1)) {
                return true;
            }

        } catch (Exception e) {
            System.err.println("Error" + e);
        } finally {
            try {
                if (getConnection() != null) {
                    getConnection().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (Exception e) {
                System.err.println("Error" + e);

            }
        }

        return false;
    }

    public boolean registrar(String usuario, String contra, String correo, String nombre, String apellido, String rol) {

        PreparedStatement pst = null;

        try {
            String consulta = "insert into registrar (usuario, contra, correo, nombre, apellido, rol) values(?,?,?,?,?,?)";
            pst = getConnection().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, contra);
            pst.setString(3, correo);
            pst.setString(4, nombre);
            pst.setString(5, apellido);
            pst.setString(6, rol);

            if (pst.executeUpdate() == 1) {
                return true;
            }

        } catch (Exception ex) {
            System.err.println("Error" +ex);
        } finally {
            try {
                if (getConnection() != null) {
                    getConnection().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (Exception e) {
                System.err.println("Error" +e);

            }
        }
        return false;
    }

    public static void main(String [] args){
        Consultas co = new Consultas();
        System.out.println(co.registrar("Andres", "12345", "dani21@gmail.com", "Lolito","Perez","usuario"));
    }
    
    
}
