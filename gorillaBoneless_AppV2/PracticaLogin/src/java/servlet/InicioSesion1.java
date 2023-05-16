package servlet;

import Controlador.Consultas;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class InicioSesion1 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("pass");

        Consultas sql = new Consultas();
        int categoria = sql.autenticacion(usuario, clave);
        if (categoria != -1) {
            HttpSession objSesion = request.getSession(true);
            objSesion.setAttribute("usuario", usuario);
            objSesion.setAttribute("categoria", categoria);
            if (categoria == 1) {
                response.sendRedirect("carrito.jsp");
            } else if (categoria == 0) {
                response.sendRedirect("crud.jsp");
            } else {
                response.setContentType("text/html;charset=UTF-8");
                response.getWriter().println("<h1>Usuario no encontrado</h1>");
            }
        } else {
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().println("<h1>Usuario no encontrado</h1>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
