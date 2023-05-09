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

@WebServlet(name = "EditProductoServlet", urlPatterns = {"/EditProductoServlet"})
public class EditProductoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id_producto = Integer.parseInt(request.getParameter("id_producto"));

        ControladorProducto controladorProducto = new ControladorProducto();
        Producto producto = controladorProducto.getProductoById(id_producto);
        controladorProducto.cerrarConexion();

        request.setAttribute("producto", producto);
        request.getRequestDispatcher("EditProducto.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Implementaremos este método más adelante
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
