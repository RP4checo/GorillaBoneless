/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import Controlador.PedidoDAO;
import Controlador.ControladorProducto;
import Modelo.Articulo;
import Modelo.Pedido;
import Modelo.Producto;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class GuardarPedidoServlet extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    HttpSession sesion = request.getSession(false);
    ArrayList<Articulo> articulos = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");
    String nombrePedido = request.getParameter("pedido-nombre");
    String correo = request.getParameter("pedido-correo");
    String nombreCliente = request.getParameter("pedido-nombre");
    String apellidoCliente = request.getParameter("pedido-apellido");
    String direccion1 = request.getParameter("direccion1");
    String direccion2 = request.getParameter("direccion2");
    String metodoPago = request.getParameter("metodo-pago"); // Obtener el método de pago seleccionado

    if (articulos != null && !nombrePedido.isEmpty() && !correo.isEmpty() && !nombreCliente.isEmpty() && !apellidoCliente.isEmpty() && !direccion1.isEmpty()) {
        Pedido pedido = new Pedido(nombrePedido, correo, nombreCliente, apellidoCliente, direccion1, direccion2);

        ControladorProducto cp = new ControladorProducto();
        double total = 0;
        for (Articulo a : articulos) {
            Producto producto = cp.getProductoById(a.getIdProducto());
            double subtotal = a.getCantidad() * producto.getPrecio();
            total += subtotal;
            pedido.agregarProducto(producto.getNombre());
        }

        pedido.setTotal(total);
        pedido.setMetodoPago(metodoPago); // Asignar el método de pago al objeto Pedido

        PedidoDAO pedidoDAO = new PedidoDAO();
        pedidoDAO.guardarPedido(pedido);

        // Limpiar el carrito
        sesion.removeAttribute("carrito");
        // Después de guardar el pedido en la base de datos
sesion.setAttribute("pedido", pedido);


        // Redireccionar a una página de éxito o mostrar un mensaje de éxito
        response.sendRedirect("exito.jsp");
    } else {
        // Si hay algún campo faltante o el carrito está vacío, redireccionar a la página de error
        response.sendRedirect("error.jsp");
    }
}
}