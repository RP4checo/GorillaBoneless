package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import Controlador.ControladorProducto;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DeleteProductoServlet", urlPatterns = {"/DeleteProductoServlet"})
public class DeleteProductoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String idProductoStr = request.getParameter("id_producto");
        int idProducto = 0;
        if (idProductoStr != null) {
            idProducto = Integer.parseInt(idProductoStr);
        }

        ControladorProducto cp = new ControladorProducto();
        cp.deleteProducto(idProducto);
        cp.cerrarConexion();

        response.sendRedirect("crud.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}