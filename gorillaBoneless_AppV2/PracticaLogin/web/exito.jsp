<%@page import="Modelo.Articulo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Producto"%>
<%@page import="Modelo.Pedido"%>
<%@page import="Modelo.Carrito"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.ControladorProducto" %>
<%
    HttpSession sesion = request.getSession(false);
    ArrayList<Articulo> articulos = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");
    HttpSession objSesion = request.getSession(false);
    String usuario = (String) objSesion.getAttribute("usuario");
    if (usuario.equals("")) {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Gorillaz Boneless | Administración</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link rel="icon" type="image/jpg" href="img/gorillaBoneless.png" />

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&family=Pacifico&display=swap"
            rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

    </head>

    <body>

        <div class="container-xxl bg-white p-0">

            <!-- Spinner Start -->
            <div id="spinner"
                 class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
                <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                    <span class="sr-only">Cargando...</span>
                </div>
            </div>
            <!-- Spinner End -->


            <!-- Navbar & Hero Start -->
            <div class="container-xxl position-relative p-0">
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark px-4 px-lg-5 py-3 py-lg-0">
                    <a href="" class="navbar-brand p-0">
                        <h1 id="logo" class="text-primary m-0"><i class="logo"><img src="img/gorillaBoneless.png"
                                                                                    alt="Logo"></i>Gorillaz Boneless</h1>
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                        <span class="fa fa-bars"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <div class="navbar-nav ms-auto py-0 pe-4">
                            <a href="#" class="nav-item nav-link"><span class="material-symbols-outlined">
                                    settings
                                </span>
                            </a>
                            <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                    shopping_cart
                                </span>
                            </a>
                            <div class="nav-item nav-link">
                                <% out.println(usuario);%> 
                            </div>
                        </div>
                        <a href="carrito.jsp" class="btn btn-primary py-2 px-4">Cerrar Sesión</a>
                    </div>
                </nav>

                <div class="container-xxl py-5 bg-dark hero-header mb-5">
                    <div class="container text-center my-5 pt-5 pb-4">
                        <h1 class="display-3 text-white mb-3 animated slideInDown">Tu orden ha sido enviada</h1>
                        <h4 class="display-9 text-white mb-3 animated slideInRight">Recógela o contáctanos para más información</h4>  
                    </div>
                </div>
            </div>
            <!-- Navbar & Hero End -->
            <h2>¡Tu pedido ha sido procesado exitosamente!</h2>

            <h3>Resumen del pedido:</h3>

            <%
                Pedido pedido = (Pedido) session.getAttribute("pedido");
                if (pedido != null) {
            %>

            <p><strong>Nombre del pedido:</strong> <%= pedido.getNombre()%></p>
            <p><strong>Correo:</strong> <%= pedido.getCorreo()%></p>
            <p><strong>Nombre del cliente:</strong> <%= pedido.getNombreCliente()%></p>
            <p><strong>Apellido del cliente:</strong> <%= pedido.getApellidoCliente()%></p>
            <p><strong>Dirección 1:</strong> <%= pedido.getDireccion1()%></p>
            <p><strong>Dirección 2:</strong> <%= pedido.getDireccion2()%></p>
            <p><strong>Total:</strong> <%= String.format("%.2f", pedido.getTotal())%></p>
            <p><strong>Productos:</strong> <%= pedido.obtenerNombresProductos()%></p>
            <p><strong>Método de pago:</strong> <%= pedido.getMetodoPago()%></p>

            <%
                } else {
                    // Manejar caso cuando no se encuentra el objeto "pedido" en la sesión
                    // Puede redireccionar a una página de error o mostrar un mensaje de error
                }
            %>
            <!-- Footer Start -->
            <div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
                <div class="container py-5">
                    <div class="row g-5">
                        <div class="col-lg-3 col-md-6">
                            <h4 class="section-title ff-secondary text-start text-primary fw-normal mb-4">¿Quiénes somos?</h4>
                            <a class="btn btn-link" href="about.jsp">Nosotros</a>
                            <a class="btn btn-link" href="contact.jsp">Contáctanos</a>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <h4 class="section-title ff-secondary text-start text-primary fw-normal mb-4">Contáctanos</h4>
                            <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Plaza Sendero - C. 300 85180, Franja
                                Comercial 300, 85065 Cd Obregón, Son.</p>
                            <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+52 644 140 0210</p>
                            <p class="mb-2"><i class="fa fa-envelope me-3"></i>jorgvillagrana@hotmail.com </p>
                            <div class="d-flex pt-2">
                                <a class="btn btn-outline-light btn-social" href="https://www.instagram.com/gorillazbonelessoficial/" target="_blank"><i class="fab fa-instagram"></i></a>
                                <a class="btn btn-outline-light btn-social" href="https://www.facebook.com/profile.php?id=100040057070626" target="_blank"><i class="fab fa-facebook-f"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <h4 class="section-title ff-secondary text-start text-primary fw-normal mb-4">Horarios</h4>
                            <h5 class="text-light fw-normal">Lunes - Sábado</h5>
                            <p>10AM - 09PM</p>
                            <h5 class="text-light fw-normal">Domingo</h5>
                            <p>10AM - 05PM</p>
                        </div>  
                        <div class="col-lg-3 col-md-6">
                            <h4><img id="logo-footer" src="img/gorillaBoneless.png" alt="lgo"></h4>
                        </div>                   
                    </div>
                </div>
                <div class="container">
                    <div class="copyright">
                        <div class="row">
                            <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                                &copy; <a class="border-bottom" href="https://www.facebook.com/profile.php?id=100040057070626" target="_blank">Gorillaz Boneless</a>, Todos los derechos reservados.
                            </div>
                            <div class="col-md-6 text-center text-md-end">
                                <div class="footer-menu">
                                    <a href="index.jsp">Inicio</a>
                                    <a href="contact.jsp">Ayuda</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer End -->


            <!-- Back to Top -->
            <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


            <!-- JavaScript Libraries -->

            <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
            <script src="lib/wow/wow.min.js"></script>
            <script src="lib/easing/easing.min.js"></script>
            <script src="lib/waypoints/waypoints.min.js"></script>
            <script src="lib/counterup/counterup.min.js"></script>
            <script src="lib/owlcarousel/owl.carousel.min.js"></script>
            <script src="lib/tempusdominus/js/moment.min.js"></script>
            <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
            <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
            <!-- Template Javascript -->
            <script src="js/main.js"></script>
    </body>

</html>
