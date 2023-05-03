<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession objSesion = request.getSession(false);
    String usuario = (String) objSesion.getAttribute("usuario");
    if (usuario.equals("")) {
        response.sendRedirect("index.jsp");
    }
%>
<%@page import="Controlador.ControladorProducto"%>
<%@page import="Modelo.Producto"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    Producto producto = new ControladorProducto().getProducto(id);
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Product Details | E-Shopper</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    </head><!--/head-->

    <body>
        <nav class="navbar navbar-expand-sm bg-primary navbar-dark">
            <!-- Brand/logo -->
            <a class="navbar-brand" href="#">Sistema JSP</a>

            <!-- Links -->
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Productos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Cerrar sesión</a>
                </li>

            </ul>
        </nav>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-9 padding-right">
                    <div class="view-product">
                        <img src="<%=producto.getImg()%>" alt="" width="230" height="230"/>
                        <h2><%=producto.getNombre()%></h2>
                        <h4>Web ID: <%=producto.getId()%></h4>
                        <!--<img src="images/rating.jpg" alt="" width="250" height="100"/>-->
                        <form action="agregarproducto" method="post">
                            <span>
                                <span>Precio $<%=producto.getPrecio()%></span><br>
                                <label>Cantidad:</label>
                                <input type="hidden" value="<%=producto.getId()%>" name="idproducto">
                                <input type="text" value="1" id="txt-cantidad" name="cantidad"/><br>
                                <button type="submit" class="btn btn-fefault cart">
                                    <i class="fa fa-shopping-cart"></i>
                                    Añadir al carrito
                                </button>
                            </span>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>