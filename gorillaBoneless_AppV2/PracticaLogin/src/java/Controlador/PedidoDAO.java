/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Modelo.Pedido;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PedidoDAO {

    private Connection conexion;

    public PedidoDAO() {
        Conexion miConexion = new Conexion();
        conexion = miConexion.getConexion();
    }

    public void guardarPedido(Pedido pedido) {
        try {
            String sql = "INSERT INTO pedidos (nombre, correo, nombre_cliente, apellido_cliente, direccion1, direccion2, fecha, total, productos, metodo_pago) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conexion.prepareStatement(sql);
            statement.setString(1, pedido.getNombre());
            statement.setString(2, pedido.getCorreo());
            statement.setString(3, pedido.getNombreCliente());
            statement.setString(4, pedido.getApellidoCliente());
            statement.setString(5, pedido.getDireccion1());
            statement.setString(6, pedido.getDireccion2());
            statement.setDate(7, new java.sql.Date(pedido.getFecha().getTime()));
            statement.setDouble(8, pedido.getTotal());
            statement.setString(9, pedido.obtenerNombresProductos());
            statement.setString(10, pedido.getMetodoPago());
            statement.executeUpdate();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
