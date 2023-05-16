<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.ControladorProducto" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Modelo.Producto" %>
<%@ page import="Controlador.ControladorProducto" %>
<%
    ControladorProducto cp = new ControladorProducto();
%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <script>
            function editarProducto(id_producto, nombre, img_producto, precio, categoria) {
                document.getElementById("id_producto").value = id_producto;
                document.getElementById("nombre_edit").value = nombre;
                document.getElementById("img_producto_edit").value = img_producto;
                document.getElementById("precio_edit").value = precio;
                document.getElementById("categoria_edit").value = categoria;

                document.getElementById("editProductoForm").style.display = "block";
            }

            function ocultarFormulario() {
                document.getElementById("editProductoForm").style.display = "none";
            }
        </script>

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
                                </span></a>
                        </div>
                        <a href="login.jsp" class="btn btn-primary py-2 px-4">Cerrar Sesión</a>
                    </div>
                </nav>

                <div class="container-xxl py-5 bg-dark hero-header mb-5">
                    <div class="container text-center my-5 pt-5 pb-4">
                        <h1 class="display-3 text-white mb-3 animated slideInDown">Administración</h1>
                    </div>
                </div>
            </div>
            <!-- Navbar & Hero End -->
            

            <!-- Crud start -->
            <div class="container-lg">
                <div class="table-responsive">
                    <div class="table-wrapper">
                        <div class="table-title">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2>Productos</h2>
                                </div>
                            </div>
                        </div>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Código</th>
                                    <th>Nombre</th>
                                    <th>Imagen</th>
                                    <th>Precio</th>
                                    <th>Categoría</th>
                                    <th>Editar</th>
                                    <th>Eliminar</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%=cp.getProductosTabla()%>
                            </tbody>
                        </table>

                    </div>
                </div>

                <div class="container-lg">
                    <h3 class="mt-5">Agregar Producto</h3>
                    <form action="AddProductoServlet" method="post" class="mt-4">
                        <div class="form-group">
                            <input type="text" name="nombre" placeholder="Nombre del producto" required class="form-control">
                        </div>
                        <br>
                        <div class="form-group">
                            <input type="text" name="img_producto" placeholder="URL de la imagen" required class="form-control">
                        </div>
                        <br>
                        <div class="form-group">
                            <input type="number" step="0.01" name="precio" placeholder="Precio" required class="form-control">
                        </div>
                        <br>
                        <div class="form-group">
                            <select name="categoria" required class="form-control">
                                <option value="">Selecciona una categoría</option>
                                <option value="1">Comida</option>
                                <option value="2">Bebida</option>
                                <option value="3">Postre</option>
                            </select>
                        </div>
                        <br>
                        <button type="submit" class="btn btn-primary">Guardar producto</button>
                        <br>
                    </form>
                </div>

                <div class="container-lg" id="editProductoForm" style="display:none;">
                    <h3 class="mt-5">Editar Producto</h3>
                    <form action="UpdateProductoServlet" method="post" class="mt-4">
                        <input type="hidden" name="id_producto" id="id_producto">
                        <div class="form-group">
                            <input type="text" name="nombre" id="nombre_edit" placeholder="Nombre del producto" required class="form-control">
                        </div>
                        <br>
                        <div class="form-group">
                            <input type="text" name="img_producto" id="img_producto_edit" placeholder="URL de la imagen" required class="form-control">
                        </div>
                        <br>
                        <div class="form-group">
                            <input type="number" step="0.01" name="precio" id="precio_edit" placeholder="Precio" required class="form-control">
                        </div>
                        <br>
                        <div class="form-group">
                            <select name="categoria" id="categoria_edit" required class="form-control">
                                <option value="">Selecciona una categoría</option>
                                <option value="1">Comida</option>
                                <option value="2">Bebida</option>
                                <option value="3">Postre</option>
                            </select>
                        </div>
                        <br>
                        <button type="submit" class="btn btn-primary">Guardar cambios</button>
                        <button type="button" class="btn btn-secondary" onclick="ocultarFormulario()">Cancelar</button>
                    </form>
                </div>


                <!-- Footer Start -->
                <div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
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
            </div>

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