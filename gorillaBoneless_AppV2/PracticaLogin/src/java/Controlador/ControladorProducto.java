/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Controlador.Conexion;
import Modelo.Articulo;
import Modelo.ModeloProducto;
import Modelo.Producto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;

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
            stmt.setString(2, producto.getImg_producto());
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
            stmt.setString(2, producto.getImg_producto());
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
                sb.append("<td>").append("<img src='" + rs.getString("img_producto") + "' width='100' height='100'>").append("</td>");
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

    public List<Producto> getProductosByCategoria(int categoria) {
        List<Producto> productos = new ArrayList<>();

        try {
            String query = "SELECT * FROM productos WHERE categoria = ?";
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setInt(1, categoria);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id_producto");
                String nombre = rs.getString("nombre");
                String img_producto = rs.getString("img_producto");
                double precio = rs.getDouble("precio");
                Producto producto = new Producto(id, nombre, img_producto, precio, categoria);
                productos.add(producto);
            }

            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return productos;
    }

    public String getProductosByCategoriaHTML(int categoria) {
        ModeloProducto mp = new ModeloProducto();
        List<Producto> productos = getProductosByCategoria(categoria);
        StringBuilder htmlCode = new StringBuilder();

        for (Producto producto : productos) {
            htmlCode.append("<div class=\"col-sm-4\">\n");
            htmlCode.append("    <div class=\"product-image-wrapper\">\n");
            htmlCode.append("        <div class=\"single-products\">\n");
            htmlCode.append("            <div class=\"productinfo text-center\">\n");
            htmlCode.append("                <img class=\"img-fluid\" height=\"250\" width=\"250\" src=\"").append(producto.getImg_producto()).append("\" alt=\"\" />\n");
            htmlCode.append("                <h2>$").append(producto.getPrecio()).append("</h2>\n");
            htmlCode.append("                <p>").append(producto.getNombre()).append("</p>\n");
            htmlCode.append("                <a href=\"product-details.jsp?id=").append(producto.getId()).append("\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver detalles</a>\n");
            htmlCode.append("                   </span>\n");
            htmlCode.append("                </a>\n");
            htmlCode.append("            </div>\n");
            htmlCode.append("            <div class=\"product-overlay\">\n");
            htmlCode.append("                <div class=\"overlay-content\">\n");
            htmlCode.append("                </div>\n");
            htmlCode.append("            </div>\n");
            htmlCode.append("        </div>\n");
            htmlCode.append("    </div>\n");
            htmlCode.append("</div>");
        }

        return htmlCode.toString();
    }

    public void eliminarProductoCarrito(HttpSession sesion, int idProducto) {
        ArrayList<Articulo> articulos = (ArrayList<Articulo>) sesion.getAttribute("carrito");
        if (articulos != null) {
            for (int i = 0; i < articulos.size(); i++) {
                if (articulos.get(i).getIdProducto() == idProducto) {
                    articulos.remove(i);
                    break;
                }
            }
            sesion.setAttribute("carrito", articulos);
        }
    }

}
