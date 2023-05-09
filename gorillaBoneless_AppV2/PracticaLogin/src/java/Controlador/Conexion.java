package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Omar López Chávez
 */
public class Conexion {

    private String USERNAME = "root";
    private String PASSWORD = "";
    private String HOST = "localhost";
    private String PORT = "3306";
    private String DATABASE = "gorilla";
    private String CLASSNAME = "com.mysql.jdbc.Driver";
    private String URL = "jdbc:mysql://" + HOST + ":" + PORT + "/" + DATABASE;
    private Connection con;

    public Conexion() {
        try {
            Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            System.out.println("Conexión establecida correctamente"); // Agregar este mensaje
        } catch (ClassNotFoundException e) {
            System.err.println("Error en: " + e);
        } catch (SQLException e) {
            System.err.println("Error en: " + e);
        }
    }

    public Connection getConexion() {
        return con;
    }
public void cerrarConexion() {
    try {
        con.close();
        System.out.println("Conexión cerrada correctamente"); // Agregar este mensaje
    } catch (SQLException e) {
        System.err.println("Error al cerrar la conexión: " + e);
    }
}
}
    

