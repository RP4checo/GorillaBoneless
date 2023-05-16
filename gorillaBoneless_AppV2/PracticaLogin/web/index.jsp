<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Gorillaz Boneless</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link rel="icon" type="image/jpg" href="img/gorillaBoneless.png"/>

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
                            <a href="index.jsp" class="nav-item nav-link active">Inicio</a>
                            <a href="about.jsp" class="nav-item nav-link">Nosotros</a>
                            <a href="service.jsp" class="nav-item nav-link">Servicios</a>
                            <a href="menu.jsp" class="nav-item nav-link">Menú</a>
                            <a href="contact.jsp" class="nav-item nav-link">Contáctanos</a>
                        </div>
                        <a href="login.jsp" class="btn btn-primary py-2 px-4">Iniciar Sesión</a>
                    </div>
                </nav>

                <div class="container-xxl py-5 bg-dark hero-header mb-5">
                    <div class="container my-5 py-5">
                        <div class="row align-items-center g-5">
                            <div class="col-lg-6 text-center text-lg-start">
                                <h1 class="display-3 text-white animated slideInLeft">Disfrute de nuestra<br>deliciosa
                                    comida</h1><br>
                                <p class="text-white animated slideInLeft mb-4 pb-2">¡Bienvenido a Gorilla Boneless, el
                                    paraíso de los amantes de la comida! ¿Te gusta la comida crujiente, sabrosa y con sabor
                                    a gloria? Si la respuesta es sí, entonces has venido al lugar correcto. </p>
                            </div>
                            <div class="col-lg-6 text-center text-lg-end overflow-hidden">
                                <img class="img-fluid" src="img/boneless_bandeja.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Navbar & Hero End -->


            <!-- Service Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="row g-4">
                        <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="service-item rounded pt-3">
                                <div class="p-4">
                                    <i class="fa fa-3x fa-user-tie text-primary mb-4"></i>
                                    <h5>Cocineros de calidad</h5>
                                    <p>Chefs con +10 años de experiencia</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
                            <div class="service-item rounded pt-3">
                                <div class="p-4">
                                    <i class="fa fa-3x fa-utensils text-primary mb-4"></i>
                                    <h5>Comida de Calidad</h5>
                                    <p>Alimentos frescos y bien preparados</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
                            <div class="service-item rounded pt-3">
                                <div class="p-4">
                                    <i class="fa fa-3x fa-cart-plus text-primary mb-4"></i>
                                    <h5>Ordena Online</h5>
                                    <p>Servicio de pedidos por internet</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
                            <div class="service-item rounded pt-3">
                                <div class="p-4">
                                    <i class="fa fa-3x fa-headset text-primary mb-4"></i>
                                    <h5>Excelente Atención al Cliente</h5>
                                    <p>Trato amable y servicial al cliente</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Service End -->


            <!-- About Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="row g-5 align-items-center">
                        <div class="col-lg-6">
                            <div class="row g-3">
                                <div class="col-6 text-start">
                                    <img id="img-muestra" class="img-fluid rounded w-100 wow zoomIn" data-wow-delay="0.1s"
                                         src="img/about-1.jpg">
                                </div>
                                <div class="col-6 text-start"><br>
                                    <img id="img-muestra" class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.3s"
                                         src="img/about-2.jpg" style="margin-top: 25%;">
                                </div>
                                <div class="col-6 text-end">
                                    <img id="img-muestra" class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.5s"
                                         src="img/about-3.jpg">
                                </div>
                                <div class="col-6 text-end">
                                    <img id="img-muestra" class="img-fluid rounded w-100 wow zoomIn" data-wow-delay="0.7s"
                                         src="img/about-4.jpg">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <h5 class="section-title ff-secondary text-start text-primary fw-normal">Nosotros</h5>
                            <h1 class="mb-4">Bienvenido a Gorillaz Boneless</h1>
                            <p class="mb-4">El restaurante perfecto para los amantes de la comida sabrosa y contundente.
                                Aquí encontrarás una variedad de deliciosos platillos, desde nuestro famoso boneless hasta
                                nuestras jugosas hamburguesas, pasando por nuestras irresistibles alitas y papas fritas
                                crujientes.</p>
                            <p class="mb-4">Además, podrás disfrutar de un buen café y nuestros dedos de queso derretido,
                                que son la perfecta combinación para compartir con tus amigos y familiares. En Gorillaz
                                Boneless, sabemos cómo satisfacer a los paladares más exigentes, por eso te invitamos a
                                venir y deleitarte con nuestras opciones de menú de calidad y sabor inigualable.</p>
                            <div class="row g-4 mb-4">
                                <div class="col-sm-6">
                                    <div class="d-flex align-items-center border-start border-5 border-primary px-3">
                                        <h1 class="flex-shrink-0 display-5 text-primary mb-0" data-toggle="counter-up">3
                                        </h1>
                                        <div class="ps-4">
                                            <p class="mb-0">Años de</p>
                                            <h6 class="text-uppercase mb-0">Experiencia</h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="d-flex align-items-center border-start border-5 border-primary px-3">
                                        <h1 class="flex-shrink-0 display-5 text-primary mb-0" data-toggle="counter-up">30
                                        </h1>
                                        <div class="ps-4">
                                            <p class="mb-0">Platillos</p>
                                            <h6 class="text-uppercase mb-0">Inigualables</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <a class="btn btn-primary py-3 px-5 mt-2" href="">Leer mas</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- About End -->


            <!-- Menu Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                        <h5 class="section-title ff-secondary text-center text-primary fw-normal">Menú de Platillos</h5>
                        <h1 class="mb-5">Más Populares</h1>
                    </div>
                    <div class="tab-class text-center wow fadeInUp" data-wow-delay="0.1s">
                        <ul class="nav nav-pills d-inline-flex justify-content-center border-bottom mb-5">
                            <li class="nav-item">
                                <a class="d-flex align-items-center text-start mx-3 ms-0 pb-3 active" data-bs-toggle="pill"
                                   href="#tab-1">
                                    <i class="fa fa-coffee fa-2x text-primary"></i>
                                    <div class="ps-3">
                                        <small class="text-body">Delicioso</small>
                                        <h6 class="mt-n1 mb-0">Café</h6>
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="d-flex align-items-center text-start mx-3 pb-3" data-bs-toggle="pill"
                                   href="#tab-2">
                                    <i class="fa fa-hamburger fa-2x text-primary"></i>
                                    <div class="ps-3">
                                        <small class="text-body">Especialidad de</small>
                                        <h6 class="mt-n1 mb-0">Comidas</h6>
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="d-flex align-items-center text-start mx-3 me-0 pb-3" data-bs-toggle="pill"
                                   href="#tab-3">
                                    <i class="fa fa-utensils fa-2x text-primary"></i>
                                    <div class="ps-3">
                                        <small class="text-body">Increibles</small>
                                        <h6 class="mt-n1 mb-0">Servicios</h6>
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
                                                    <span>Chicken Burger</span>
                                                    <span class="text-primary">$115</span>
                                                </h5>
                                                <small class="fst-italic">Descripción</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="d-flex align-items-center">
                                            <img class="flex-shrink-0 img-fluid rounded" src="img/menu-2.jpg" alt=""
                                                 style="width: 80px;">
                                            <div class="w-100 d-flex flex-column text-start ps-4">
                                                <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                    <span>Chicken Burger</span>
                                                    <span class="text-primary">$115</span>
                                                </h5>
                                                <small class="fst-italic">Descripción</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="d-flex align-items-center">
                                            <img class="flex-shrink-0 img-fluid rounded" src="img/menu-3.jpg" alt=""
                                                 style="width: 80px;">
                                            <div class="w-100 d-flex flex-column text-start ps-4">
                                                <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                    <span>Chicken Burger</span>
                                                    <span class="text-primary">$115</span>
                                                </h5>
                                                <small class="fst-italic">Descripción</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="d-flex align-items-center">
                                            <img class="flex-shrink-0 img-fluid rounded" src="img/menu-4.jpg" alt=""
                                                 style="width: 80px;">
                                            <div class="w-100 d-flex flex-column text-start ps-4">
                                                <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                    <span>Chicken Burger</span>
                                                    <span class="text-primary">$115</span>
                                                </h5>
                                                <small class="fst-italic">Descripción</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="d-flex align-items-center">
                                            <img class="flex-shrink-0 img-fluid rounded" src="img/menu-5.jpg" alt=""
                                                 style="width: 80px;">
                                            <div class="w-100 d-flex flex-column text-start ps-4">
                                                <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                    <span>Chicken Burger</span>
                                                    <span class="text-primary">$115</span>
                                                </h5>
                                                <small class="fst-italic">Descripción</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="d-flex align-items-center">
                                            <img class="flex-shrink-0 img-fluid rounded" src="img/menu-6.jpg" alt=""
                                                 style="width: 80px;">
                                            <div class="w-100 d-flex flex-column text-start ps-4">
                                                <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                    <span>Chicken Burger</span>
                                                    <span class="text-primary">$115</span>
                                                </h5>
                                                <small class="fst-italic">Descripción</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="d-flex align-items-center">
                                            <img class="flex-shrink-0 img-fluid rounded" src="img/menu-7.jpg" alt=""
                                                 style="width: 80px;">
                                            <div class="w-100 d-flex flex-column text-start ps-4">
                                                <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                    <span>Chicken Burger</span>
                                                    <span class="text-primary">$115</span>
                                                </h5>
                                                <small class="fst-italic">Descripción</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="d-flex align-items-center">
                                            <img class="flex-shrink-0 img-fluid rounded" src="img/menu-8.jpg" alt=""
                                                 style="width: 80px;">
                                            <div class="w-100 d-flex flex-column text-start ps-4">
                                                <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                    <span>Chicken Burger</span>
                                                    <span class="text-primary">$115</span>
                                                </h5>
                                                <small class="fst-italic">Descripción</small>
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
                                                    <span>Chicken Burger</span>
                                                    <span class="text-primary">$115</span>
                                                </h5>
                                                <small class="fst-italic">Descripción</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="d-flex align-items-center">
                                            <img class="flex-shrink-0 img-fluid rounded" src="img/menu-2.jpg" alt=""
                                                 style="width: 80px;">
                                            <div class="w-100 d-flex flex-column text-start ps-4">
                                                <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                    <span>Chicken Burger</span>
                                                    <span class="text-primary">$115</span>
                                                </h5>
                                                <small class="fst-italic">Descripción</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="d-flex align-items-center">
                                            <img class="flex-shrink-0 img-fluid rounded" src="img/menu-3.jpg" alt=""
                                                 style="width: 80px;">
                                            <div class="w-100 d-flex flex-column text-start ps-4">
                                                <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                    <span>Chicken Burger</span>
                                                    <span class="text-primary">$115</span>
                                                </h5>
                                                <small class="fst-italic">Descripción</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="d-flex align-items-center">
                                            <img class="flex-shrink-0 img-fluid rounded" src="img/menu-4.jpg" alt=""
                                                 style="width: 80px;">
                                            <div class="w-100 d-flex flex-column text-start ps-4">
                                                <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                    <span>Chicken Burger</span>
                                                    <span class="text-primary">$115</span>
                                                </h5>
                                                <small class="fst-italic">Descripción</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="d-flex align-items-center">
                                            <img class="flex-shrink-0 img-fluid rounded" src="img/menu-5.jpg" alt=""
                                                 style="width: 80px;">
                                            <div class="w-100 d-flex flex-column text-start ps-4">
                                                <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                    <span>Chicken Burger</span>
                                                    <span class="text-primary">$115</span>
                                                </h5>
                                                <small class="fst-italic">Descripción</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="d-flex align-items-center">
                                            <img class="flex-shrink-0 img-fluid rounded" src="img/menu-6.jpg" alt=""
                                                 style="width: 80px;">
                                            <div class="w-100 d-flex flex-column text-start ps-4">
                                                <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                    <span>Chicken Burger</span>
                                                    <span class="text-primary">$115</span>
                                                </h5>
                                                <small class="fst-italic">Descripción</small>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="d-flex align-items-center">
                                            <img class="flex-shrink-0 img-fluid rounded" src="img/menu-7.jpg" alt=""
                                                 style="width: 80px;">
                                            <div class="w-100 d-flex flex-column text-start ps-4">
                                                <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                    <span>Chicken Burger</span>
                                                    <span class="text-primary">$115</span>
                                                </h5>
                                                <small class="fst-italic">Descripción</small>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="d-flex align-items-center">
                                            <img class="flex-shrink-0 img-fluid rounded" src="img/menu-8.jpg" alt=""
                                                 style="width: 80px;">
                                            <div class="w-100 d-flex flex-column text-start ps-4">
                                                <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                    <span>Chicken Burger</span>
                                                    <span class="text-primary">$115</span>
                                                </h5>
                                                <small class="fst-italic">Descripción</small>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Menu End -->

            <!-- Testimonial Start -->
            <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
                <div class="container">
                    <div class="text-center">
                        <h5 class="section-title ff-secondary text-center text-primary fw-normal">Testimonios</h5>
                        <h1 class="mb-5">¡Nuestros Clientes Dicen!</h1>
                    </div>
                    <div class="owl-carousel testimonial-carousel">
                        <div class="testimonial-item bg-transparent border rounded p-4">
                            <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                            <p>Las alitas y boneless son lo máximo, sabor y cantidad perfecta.
                            </p>
                            <div class="d-flex align-items-center">
                                <img class="img-fluid flex-shrink-0 rounded-circle" src="img/testimonial-1.jpg"
                                     style="width: 50px; height: 50px;">
                                <div class="ps-3">
                                    <h5 class="mb-1">Rosa</h5>
                                </div>
                            </div>
                        </div>
                        <div class="testimonial-item bg-transparent border rounded p-4">
                            <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                            <p>Las hamburguesas son jugosas y el pan es suave, definitivamente volveré.
                            </p>
                            <div class="d-flex align-items-center">
                                <img class="img-fluid flex-shrink-0 rounded-circle" src="img/testimonial-2.jpg"
                                     style="width: 50px; height: 50px;">
                                <div class="ps-3">
                                    <h5 class="mb-1">Emiliano</h5>
                                </div>
                            </div>
                        </div>
                        <div class="testimonial-item bg-transparent border rounded p-4">
                            <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                            <p>Los dedos de queso son una delicia y el café es el acompañante ideal.
                            </p>
                            <div class="d-flex align-items-center">
                                <img class="img-fluid flex-shrink-0 rounded-circle" src="img/testimonial-3.jpg"
                                     style="width: 50px; height: 50px;">
                                <div class="ps-3">
                                    <h5 class="mb-1">Fernando</h5>
                                </div>
                            </div>
                        </div>
                        <div class="testimonial-item bg-transparent border rounded p-4">
                            <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                            <p>Las papas son una locura, súper crujientes y sabrosas, me encantaron.</p>
                            <div class="d-flex align-items-center">
                                <img class="img-fluid flex-shrink-0 rounded-circle" src="img/testimonial-4.jpg"
                                     style="width: 50px; height: 50px;">
                                <div class="ps-3">
                                    <h5 class="mb-1">Susana</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Testimonial End -->


            <!-- Footer Start -->
            <div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
                <div id="container-footer" class="container py-5">
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