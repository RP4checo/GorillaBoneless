package Controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Omar López Chávez
 */
public class Consultas extends Conexion {
    
    public Consultas(){
        
    }
    
public boolean aunteticacion(String usuario, String clave) {
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT * FROM usuarios WHERE nombre=? AND pass=?";
            System.out.println("Consulta: " + consulta);
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, clave);
            rs = pst.executeQuery();

            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (getConexion() != null) {
                    getConexion().close();
                }
            } catch (Exception e) {
                System.out.println("Error al cerrar recursos: " + e);
            }
        }
        return false;
    }
    
    public boolean registrar(String usuario, String clave){
        PreparedStatement pst = null;
        try {
            String consulta = "insert into usuarios (nombre, pass) values(?,?)";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, clave);
            if(pst.executeUpdate() == 1){
                return true;
            }
        }catch(Exception e){
            System.out.println("Error en " + e);
        }finally {
            try {
                if(getConexion() != null) getConexion().close();
                if(pst != null) pst.close();
            }catch(Exception e) {
                System.out.println("Error en " + e);
            }
        }
        return false;
    }
    
    public boolean obtenerProductos(){
        PreparedStatement pst = null;
        try {
            String consulta = "SELECT * FROM productos";
            pst = getConexion().prepareStatement(consulta);
            if(pst.executeUpdate() == 1){
                return true;
            }
        }catch(Exception e){
            System.out.println("Error en " + e);
        }finally {
            try {
                if(getConexion() != null) getConexion().close();
                if(pst != null) pst.close();
            }catch(Exception e) {
                System.out.println("Error en " + e);
            }
        }
        return false;
    }
    
    
}
