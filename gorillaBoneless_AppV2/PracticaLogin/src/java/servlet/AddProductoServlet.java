/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import Controlador.ControladorProducto;
import Modelo.Producto;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AddProductoServlet", urlPatterns = {"/AddProductoServlet"})
public class AddProductoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String img_producto = request.getParameter("img_producto");
        String precioStr = request.getParameter("precio");
        double precio = 0.0;
        if (precioStr != null) {
            precio = Double.parseDouble(precioStr);
        }
        String categoriaStr = request.getParameter("categoria");
        int categoria = 0;
        if (categoriaStr != null) {
            categoria = Integer.parseInt(categoriaStr);
        }

        Producto producto = new Producto();
        producto.setNombre(nombre);
        producto.setImg_producto(img_producto);
        producto.setPrecio(precio);
        producto.setCategoria(categoria);

        ControladorProducto cp = new ControladorProducto();
        cp.addProducto(producto);

        response.sendRedirect("crud.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
