/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Controlador.Conexion;
import Modelo.Producto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ControladorProducto {

    private Connection connection;
    private Conexion conexion;

    public ControladorProducto() {
        this.conexion = new Conexion();
        this.connection = conexion.getConexion();
    }

    // Agrega un método para cerrar la conexión
    public void cerrarConexion() {
        conexion.cerrarConexion();
    }

    public void addProducto(Producto producto) {
        try {
            String query = "INSERT INTO productos (nombre, img_producto, precio, categoria) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, producto.getNombre());
            stmt.setString(2, producto.getImg());
            stmt.setDouble(3, producto.getPrecio());
            stmt.setInt(4, producto.getCategoria());

            int rowsAffected = stmt.executeUpdate(); // Almacena el número de filas afectadas
            System.out.println("Filas afectadas: " + rowsAffected); // Imprime el número de filas afectadas

            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Producto getProductoById(int id_producto) {
        Producto producto = null;

        try {
            String query = "SELECT * FROM productos WHERE id_producto = ?";
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setInt(1, id_producto);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                int id = rs.getInt("id_producto");
                String nombre = rs.getString("nombre");
                String img_producto = rs.getString("img_producto");
                double precio = rs.getDouble("precio");
                int categoria = rs.getInt("categoria");
                producto = new Producto(id, nombre, img_producto, precio, categoria);
            }

            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return producto;
    }

    public void editProducto(Producto producto) {
        try {
            String query = "UPDATE productos SET nombre = ?, img_producto = ?, precio = ?, categoria = ? WHERE id_producto = ?";
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, producto.getNombre());
            stmt.setString(2, producto.getImg());
            stmt.setDouble(3, producto.getPrecio());
            stmt.setInt(4, producto.getCategoria());
            stmt.setInt(5, producto.getId());

            stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteProducto(int id_producto) {
        try {
            String query = "DELETE FROM productos WHERE id_producto = ?";
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setInt(1, id_producto);

            stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public String getProductosTabla() {
        StringBuilder sb = new StringBuilder();

        try {
            String query = "SELECT * FROM productos";
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                sb.append("<tr>");
                sb.append("<td>").append(rs.getInt("id_producto")).append("</td>");
                sb.append("<td>").append(rs.getString("nombre")).append("</td>");
                sb.append("<td>").append(rs.getString("img_producto")).append("</td>");
                sb.append("<td>").append(rs.getDouble("precio")).append("</td>");
                sb.append("<td>").append(rs.getInt("categoria")).append("</td>");
                sb.append("<td>").append("<button type='button' onclick=\"editarProducto(" + rs.getInt("id_producto") + ", '" + rs.getString("nombre") + "', '" + rs.getString("img_producto") + "', " + rs.getDouble("precio") + ", " + rs.getInt("categoria") + ");\">Editar</button>").append("</td>");

                sb.append("<td>").append("<a href='DeleteProductoServlet?id_producto=" + rs.getInt("id_producto") + "'>Eliminar</a>").append("</td>");
                sb.append("</tr>");
            }

            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return sb.toString();
    }

}
