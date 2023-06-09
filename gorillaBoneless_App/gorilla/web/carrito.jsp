<%@page import="Controlador.ControladorProducto"%>
<%@page import="Modelo.Producto"%>
<%@page import="Modelo.Articulo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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

                    </div>
                    <a href="login.jsp" class="btn btn-primary py-2 px-4">Cerrar Sesión</a>
                </div>
            </nav>

            <div class="container-xxl py-5 bg-dark hero-header mb-5">
                <div class="container text-center my-5 pt-5 pb-4">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">¿Aún no ordenas?</h1>
                    <h4 class="display-9 text-white mb-3 animated slideInRight">Desliza y conoce nuestras especialidades</h4>
                </div>
            </div>
        </div>
        <!-- Navbar & Hero End -->

       <!-- Menu Start -->
       <div id="menu-cart" class="container-xxl py-5">
        <div id="menu-cart" class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h5 class="section-title ff-secondary text-center text-primary fw-normal">Menú de Platillos</h5>
                <h1 class="mb-5">¡ Ordena & disfruta !</h1>
            </div>
            <div class="tab-class text-center wow fadeInUp" data-wow-delay="0.1s">
                <ul class="nav nav-pills d-inline-flex justify-content-center border-bottom mb-5">
                    <li class="nav-item">
                        <a class="d-flex align-items-center text-start mx-3 ms-0 pb-3 active" data-bs-toggle="pill"
                            href="#tab-1">
                            <i class="fa fa-hamburger fa-2x text-primary"></i>
                            <div class="ps-3">
                                <small class="text-body">Especialidad en</small>
                                <h6 class="mt-n1 mb-0">Hamburgesas</h6>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="d-flex align-items-center text-start mx-3 pb-3" data-bs-toggle="pill"
                            href="#tab-2">
                            <i class="fa fa-beer fa-2x text-primary"></i>
                            <div class="ps-3">
                                <small class="text-body">Gran cantidad de</small>
                                <h6 class="mt-n1 mb-0">Bebidas</h6>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="d-flex align-items-center text-start mx-3 me-0 pb-3" data-bs-toggle="pill"
                            href="#tab-3">
                            <i class="fa fa-utensils fa-2x text-primary"></i>
                            <div class="ps-3">
                                <small class="text-body">Deliciosos</small>
                                <h6 class="mt-n1 mb-0">Postres</h6>
                            </div>
                        </a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div id="tab-1" class="tab-pane fade show p-0 active">
                        <div class="row g-4">
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-1.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Montana's Burger</span>
                                            <span class="text-primary">$195</span>
                                        </h5>
                                        <small class="fst-italic">Doble carne de sirloin, doble tocineta, gratinado mozzarella,
                                            acompañada de papas gajos, ranch, BBQ y queso cheddar.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-2.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>LarryBurguer</span>
                                            <span class="text-primary">$160</span>
                                        </h5>
                                        <small class="fst-italic">Rellena de boneless a elegir, gratinada, cubierta de aguacate,
                                            acompañada de papas a la francesa, ranch y catsup.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-3.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Mr. Gorillaz</span>
                                            <span class="text-primary">$170</span>
                                        </h5>
                                        <small class="fst-italic">1 pza. de sirloin, tocineta, gratinada,
                                            2 aros de cebolla, cubierta de aguacate, acompañada de papas a la francesa, ranch y catsup.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-4.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Manchester</span>
                                            <span class="text-primary">$175</span>
                                        </h5>
                                        <small class="fst-italic">Doble carne de sirloin bañada en queso cheddar, americano, acompañada 
                                            de papas a la francesa bañadas en tocino y queso cheddar, ranch y catsup.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-5.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Big bang</span>
                                            <span class="text-primary">$180</span>
                                        </h5>
                                        <small class="fst-italic">Doble carne de sirloin, tocineta, gratinado mozzarella, acompañada de papas 
                                            en gajos, ranch y queso cheddar.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-6.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Chicken Crunchy</span>
                                            <span class="text-primary">$160</span>
                                        </h5>
                                        <small class="fst-italic">Exquisita burguer con crujientes tenders de pollo, acompañada de papas gajos, 
                                            aguacate especial, ranch y BBQ.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-7.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Goriboneless</span>
                                            <span class="text-primary">$150</span>
                                        </h5>
                                        <small class="fst-italic">Cortes de pollo empanizados y guisados en tu salsa favorita, acompañados de papas 
                                            a la francesa, vegetales y ranch.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-8.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Gorisalad'z</span>
                                            <span class="text-primary">$180</span>
                                        </h5>
                                        <small class="fst-italic">Cama de verduras cubierta de bonelessa elegir o exquisito pollo a la plancha, acompañada 
                                            de crutones, ranch y aguacate.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-9.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Gorinacho'z</span>
                                            <span class="text-primary">$165</span>
                                        </h5>
                                        <small class="fst-italic">Crujientes nachos bañados en caliente queso cheddar, por encima boneless a elegir, 
                                            acompañados de ranch y aguacate.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-10.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Gorilla'z cheese</span>
                                            <span class="text-primary">$180</span>
                                        </h5>
                                        <small class="fst-italic">Quesadilla jumbo (queso mozzarella) rellena de boneless a elegir, acompañadas de 
                                            papas a la francesa, ranch y aguacate.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>

                    <div id="tab-2" class="tab-pane fade show p-0">
                        <div class="row g-4">
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-1.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Montana's Burger</span>
                                            <span class="text-primary">$195</span>
                                        </h5>
                                        <small class="fst-italic">Doble carne de sirloin, doble tocineta, gratinado mozzarella,
                                            acompañada de papas gajos, ranch, BBQ y queso cheddar.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-2.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>LarryBurguer</span>
                                            <span class="text-primary">$160</span>
                                        </h5>
                                        <small class="fst-italic">Rellena de boneless a elegir, gratinada, cubierta de aguacate,
                                            acompañada de papas a la francesa, ranch y catsup.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-3.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Mr. Gorillaz</span>
                                            <span class="text-primary">$170</span>
                                        </h5>
                                        <small class="fst-italic">1 pza. de sirloin, tocineta, gratinada,
                                            2 aros de cebolla, cubierta de aguacate, acompañada de papas a la francesa, ranch y catsup.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-4.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Manchester</span>
                                            <span class="text-primary">$175</span>
                                        </h5>
                                        <small class="fst-italic">Doble carne de sirloin bañada en queso cheddar, americano, acompañada 
                                            de papas a la francesa bañadas en tocino y queso cheddar, ranch y catsup.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-5.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Big bang</span>
                                            <span class="text-primary">$180</span>
                                        </h5>
                                        <small class="fst-italic">Doble carne de sirloin, tocineta, gratinado mozzarella, acompañada de papas 
                                            en gajos, ranch y queso cheddar.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-6.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Chicken Crunchy</span>
                                            <span class="text-primary">$160</span>
                                        </h5>
                                        <small class="fst-italic">Exquisita burguer con crujientes tenders de pollo, acompañada de papas gajos, 
                                            aguacate especial, ranch y BBQ.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-7.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Goriboneless</span>
                                            <span class="text-primary">$150</span>
                                        </h5>
                                        <small class="fst-italic">Cortes de pollo empanizados y guisados en tu salsa favorita, acompañados de papas 
                                            a la francesa, vegetales y ranch.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-8.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Gorisalad'z</span>
                                            <span class="text-primary">$180</span>
                                        </h5>
                                        <small class="fst-italic">Cama de verduras cubierta de bonelessa elegir o exquisito pollo a la plancha, acompañada 
                                            de crutones, ranch y aguacate.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-9.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Gorinacho'z</span>
                                            <span class="text-primary">$165</span>
                                        </h5>
                                        <small class="fst-italic">Crujientes nachos bañados en caliente queso cheddar, por encima boneless a elegir, 
                                            acompañados de ranch y aguacate.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-10.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Gorilla'z cheese</span>
                                            <span class="text-primary">$180</span>
                                        </h5>
                                        <small class="fst-italic">Quesadilla jumbo (queso mozzarella) rellena de boneless a elegir, acompañadas de 
                                            papas a la francesa, ranch y aguacate.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    
                    <div id="tab-3" class="tab-pane fade show p-0">
                        <div class="row g-4">
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-1.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Montana's Burger</span>
                                            <span class="text-primary">$195</span>
                                        </h5>
                                        <small class="fst-italic">Doble carne de sirloin, doble tocineta, gratinado mozzarella,
                                            acompañada de papas gajos, ranch, BBQ y queso cheddar.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-2.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>LarryBurguer</span>
                                            <span class="text-primary">$160</span>
                                        </h5>
                                        <small class="fst-italic">Rellena de boneless a elegir, gratinada, cubierta de aguacate,
                                            acompañada de papas a la francesa, ranch y catsup.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-3.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Mr. Gorillaz</span>
                                            <span class="text-primary">$170</span>
                                        </h5>
                                        <small class="fst-italic">1 pza. de sirloin, tocineta, gratinada,
                                            2 aros de cebolla, cubierta de aguacate, acompañada de papas a la francesa, ranch y catsup.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-4.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Manchester</span>
                                            <span class="text-primary">$175</span>
                                        </h5>
                                        <small class="fst-italic">Doble carne de sirloin bañada en queso cheddar, americano, acompañada 
                                            de papas a la francesa bañadas en tocino y queso cheddar, ranch y catsup.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-5.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Big bang</span>
                                            <span class="text-primary">$180</span>
                                        </h5>
                                        <small class="fst-italic">Doble carne de sirloin, tocineta, gratinado mozzarella, acompañada de papas 
                                            en gajos, ranch y queso cheddar.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-6.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Chicken Crunchy</span>
                                            <span class="text-primary">$160</span>
                                        </h5>
                                        <small class="fst-italic">Exquisita burguer con crujientes tenders de pollo, acompañada de papas gajos, 
                                            aguacate especial, ranch y BBQ.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-7.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Goriboneless</span>
                                            <span class="text-primary">$150</span>
                                        </h5>
                                        <small class="fst-italic">Cortes de pollo empanizados y guisados en tu salsa favorita, acompañados de papas 
                                            a la francesa, vegetales y ranch.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-8.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Gorisalad'z</span>
                                            <span class="text-primary">$180</span>
                                        </h5>
                                        <small class="fst-italic">Cama de verduras cubierta de bonelessa elegir o exquisito pollo a la plancha, acompañada 
                                            de crutones, ranch y aguacate.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-9.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Gorinacho'z</span>
                                            <span class="text-primary">$165</span>
                                        </h5>
                                        <small class="fst-italic">Crujientes nachos bañados en caliente queso cheddar, por encima boneless a elegir, 
                                            acompañados de ranch y aguacate.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid rounded" src="img/menu-10.jpg" alt=""
                                        style="width: 80px;">
                                    <div class="w-100 d-flex flex-column text-start ps-4">
                                        <h5 class="d-flex justify-content-between border-bottom pb-2">
                                            <span>Gorilla'z cheese</span>
                                            <span class="text-primary">$180</span>
                                        </h5>
                                        <small class="fst-italic">Quesadilla jumbo (queso mozzarella) rellena de boneless a elegir, acompañadas de 
                                            papas a la francesa, ranch y aguacate.
                                        </small>
                                    </div>
                                    <div class="w-1000 d-flex flex-column text-start ps-4">
                                        <a href="carrito.jsp" class="nav-item nav-link"><span class="material-symbols-outlined">
                                        add_shopping_cart
                                        </span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <h4 class="text-black mb-3 animated slideInLeft">-----------------------------------------------------------------------------------------------------------------------------------------------------------------</h4><br><br>
    
    <!-- Menu End -->


    <!-- cart Start -->



    <!-- cart End -->
        <!-- Footer Start -->
        <div id="menu-cart" class="container-fluid">
            <h1 id="tu-orden" class="mb-5">Tu orden</h1>
            <div class="row">
                <div id="menu-cart2" class="col-sm-8">
                    <div class="table-responsive cart_info" id="cart-container">
                        <table class="table table-condensed" id="shop-table">
                            <thead>
                                <tr class="cart_menu">
                                    <td class="image">Productos</td>
                                    <td class="description"></td>
                                    <td class="price">Precio</td>
                                    <td class="quantity">Cantidad</td>
                                    <td class="total">Total</td>
                                    <td></td>
                                </tr>
                            </thead>
                            <tbody>
                                <!--
                                <%
                                    ControladorProducto cp = new ControladorProducto();
                                    double total = 0;
                                    if (articulos != null) {
                                        for (Articulo a : articulos) {
                                            Producto producto = cp.getProducto(a.getIdProducto());
                                            total += a.getCantidad() * producto.getPrecio();
                                %>
                                -->    
                                <tr>
                                    <td class="cart_product">
                                        <a href=""><img id="monkey-logo" src="img/gorillaBoneless.png" alt=""></a>
                                    </td>
                                    <td class="cart_description">
                                        <p><a href=""><!--<%=producto.getNombre()%>-->Monkey Logo</a></p>
                                        
                                    </td>
                                    <td class="cart_price">
                                        <p><!--$<%=producto.getPrecio()%>-->$50</p>
                                    </td>
                                    <td class="cart_quantity">
                                        <div class="cart_quantity_button">
                                            <a class="cart_quantity_up" href="#"> + </a>
                                            <input class="cart_quantity_input" type="text" name="quantity" value="2" autocomplete="off" size="2">
                                            <a class="cart_quantity_down" href="#"> ~ </a>
                                        </div>
                                    </td>
                                    <td class="cart_total">
                                        <p class="cart_total_price"><!--$<%= Math.round(producto.getPrecio() * a.getCantidad() * 100.0) / 100.0%>-->$100</p>
                                    </td>
                                    <td class="cart delete"> 
                                        <span id="idarticulo" style="display:none;"><!--<%= producto.getId()%> --></span> 
                                        <a class="cart_quantity_delete" href="" id="deleteitem"><i>X</i></a> 
                                    </td>
                                    <!--
                                    <%      }
                                        }
                                    %>
                                    -->
                            </tbody>
                        </table>
                        <!--
                        <% if (articulos == null) {%>  -->
                        <h4>No hay articulos en el carrito de compras</h4>
                        <!--<% }%> -->
                    </div><a href="javascript:window.history.go(-2);">Seguir Comprando</a>
                </div>
                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-header bg-primary text-white">Carrito</div>
                        <div class="card-body">
                            <table id="cart-table">
                                <tr>
                                    <td>Sub-total <span id="txt-subtotal"></td>
                                    <td><!--$ <%= Math.round(total * 100.0) / 100.0%>-->$100</span></td>
                                </tr>
                                <tr>
                                    <td>IVA<span></td>
                                    <td>$ 0.0</span></td>
                                </tr>
                                <tr>
                                    <td>Total</td>
                                    <td><span id="txt-total"><!--$ <%= Math.round(total * 100.0) / 100.0%>-->$100</span></td>
                                </tr>
                            </table>
                        </div>
                        <div id="" class="nav-item nav-link">
                            <div>
                                <a id="comprar-te" href="carrito.jsp" >
                                    <i class="fa fa-shopping-cart"> Comprar</i>
                                </a>
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