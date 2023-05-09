package servlet;

import Modelo.Producto;
import Controlador.ControladorProducto;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "UpdateProductoServlet", urlPatterns = {"/UpdateProductoServlet"})
public class UpdateProductoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id_producto = Integer.parseInt(request.getParameter("id_producto"));
        String nombre = request.getParameter("nombre");
        String img_producto = request.getParameter("img_producto");
        double precio = Double.parseDouble(request.getParameter("precio"));
        int categoria = Integer.parseInt(request.getParameter("categoria"));

        Producto producto = new Producto(id_producto, nombre, img_producto, precio, categoria);

        ControladorProducto controladorProducto = new ControladorProducto();
        controladorProducto.editProducto(producto);
        controladorProducto.cerrarConexion();

        response.sendRedirect("crud.jsp");
    }
}
