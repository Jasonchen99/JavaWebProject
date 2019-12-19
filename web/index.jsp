<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html">

    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Outside - Minimalist Ecommerce HTML Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.css">

    <!-- All CSS Files -->
    <!-- Bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Icon Font -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/pe-icon-7-stroke.css">
    <!-- Plugins css file -->
    <link rel="stylesheet" href="css/plugins.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="css/responsive.css">

    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>

</head>

<body>


<!-- Body main wrapper start -->
<div class="wrapper">

    <!-- START HEADER SECTION -->
    <header class="header-section section sticker">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <!-- logo -->
                    <div class="header-logo float-left">
                        <a href=""><img src="img/logo.png" alt="main logo"></a>
                    </div>
                    <!-- header-search & total-cart -->
                    <div class="float-right">
                        <div class="header-option-btns float-right">
                            <!-- header-search -->
                            <div class="header-search float-left">
                                <button class="search-toggle" data-toggle="dropdown"><i class="pe-7s-search"></i>
                                </button>
                                <div class="dropdown-menu header-search-form">
                                    <form action="#">
                                        <input type="text" placeholder="Search">
                                        <button><i class="fa fa-long-arrow-right"></i></button>
                                    </form>
                                </div>
                            </div>
                            <!-- header Account -->
                            <div class="header-account float-left">
                                <ul>
                                    <li><a href="" data-toggle="dropdown"><i class="pe-7s-config"></i></a>
                                        <ul class="dropdown-menu">
                                            <c:if test="${sessionScope.SESSION_user==null}">
                                                <li><a href="login.jsp">Log in</a></li>
                                                <li><a href="register.jsp">Register</a></li>
                                            </c:if>
                                            <li><a href="myaccount.jsp">My Account</a></li>
                                            <li><a href="OrderServlet?method=findMyOrder&pageNumber=1">My Order</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <nav class="main-menu menu-right float-right">
                            <ul>
                                <li><a href="PhoneServlet?method=displayPhone">Home</a></li>
                                <li><a href="cart.jsp">Cart</a></li>
                                <li><a href="contact.jsp">Contact</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="mobile-menu"></div>
                </div>
            </div>
        </div>
    </header>
    <!-- END HEADER SECTION -->

    <!-- START SLIDER SECTION -->
    <div class="home-slider-section section">
        <!-- Home Slider -->
        <div id="home-slider" class="slides">
            <img src="img/slider/1.png" alt="" title="#slider-caption-1">
            <img src="img/slider/2.png" alt="" title="#slider-caption-2">
        </div>
        <!-- Caption 1 -->
        <div id="slider-caption-1" class="nivo-html-caption">
            <div class="container">
                <div class="row">
                    <div class="hero-slider-content col-sm-8 col-xs-12">
                        <h1 style="color: white" class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">Apple
                            iPhone 11 pro</h1>
                        <p style="color: white" class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="1s">There
                            are many variations of
                            passages of Lorem Ipsum available, but the majority have suffered alteration in some form,
                            by injected humour, </p>
                        <a href="product-details.jsp" class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="1.5s">shop
                            now</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Caption 2 -->
        <div id="slider-caption-2" class="nivo-html-caption">
            <div class="container">
                <div class="row">
                    <div class="hero-slider-content col-sm-8 col-xs-12">
                        <h1 style="color: white" class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">
                            HUAWEI Mate30 pro</h1>
                        <p style="color: white" class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="1s">There
                            are many variations of
                            passages of Lorem Ipsum available, but the majority have suffered alteration in some form,
                            by injected humour, </p>
                        <a href="product-details.jsp" class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="1.5s">shop
                            now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END SLIDER SECTION -->

    <!-- PRODUCT SECTION START -->
    <div class="product-section section pt-120 pb-120">
        <div class="container">
            <div class="isotope-grid row">
                <c:forEach items="${sessionScope.SESSION_phoneList}" var="p">
                    <!-- Product Item Start -->
                    <div class="isotope-item chair home-decor col-lg-3 col-md-4 col-sm-6 col-xs-12 mb-50">
                        <div class="product-item text-center">
                            <!-- Product Image -->
                            <div class="product-img">
                                <!-- Image -->
                                <a class="image"
                                   href="PhoneServlet?method=showPhone&brand=${p.brand}&model=${p.model}&pid=${p.pid}&stock=${p.stock}&info=${p.info}&price=${p.price}&image=${p.image}&sales=${p.sales}"><img
                                        src="${p.image}" alt=""></a>
                            </div>
                            <!-- Portfolio Info -->
                            <div class="product-info text-left">
                                <!-- Title -->
                                <h5 class="title"><a href="product-details.jsp">${p.brand} ${p.model}</a></h5>
                                <!-- Price Ratting -->
                                <div class="price-ratting fix">
                                    <span class="price float-left"><span class="new">￥${p.price}</span></span>
                                    <span class="ratting float-right">
                                <i class="fa fa-star active"></i>
                                <i class="fa fa-star active"></i>
                                <i class="fa fa-star active"></i>
                                <i class="fa fa-star active"></i>
                                <i class="fa fa-star active"></i>
                            </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Product Item End -->
                </c:forEach>
            </div>
        </div>
    </div>
    <!-- PRODUCT SECTION END -->

    <!-- QUICK VIEW MODAL START-->
    <div id="quickViewModal" class="modal fade">
        <div class="container">
            <div class="modal-content row">
                <div class="modal-body">
                    <button class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span></button>
                    <!-- QuickView Product Images -->
                    <div class="col-md-5 col-sm-6 col-xs-12 mb-40">
                        <!-- Tab panes -->
                        <div class="tab-content mb-10">
                            <div class="pro-large-img tab-pane active" id="pro-large-img-1">
                                <img src="img/product/2.jpg" alt="">
                            </div>
                            <div class="pro-large-img tab-pane" id="pro-large-img-2">
                                <img src="img/product/1.jpg" alt="">
                            </div>
                            <div class="pro-large-img tab-pane" id="pro-large-img-3">
                                <img src="img/product/3.jpg" alt="">
                            </div>
                            <div class="pro-large-img tab-pane" id="pro-large-img-4">
                                <img src="img/product/4.jpg" alt="">
                            </div>
                            <div class="pro-large-img tab-pane" id="pro-large-img-5">
                                <img src="img/product/5.jpg" alt="">
                            </div>
                        </div>
                        <!-- QuickView Product Thumbnail Slider -->
                        <div class="pro-thumb-img-slider">
                            <div><a href="" data-toggle="tab"><img src="img/product/2.jpg" alt=""></a></div>
                            <div><a href="" data-toggle="tab"><img src="img/product/1.jpg" alt=""></a></div>
                            <div><a href="" data-toggle="tab"><img src="img/product/3.jpg" alt=""></a></div>
                            <div><a href="" data-toggle="tab"><img src="img/product/4.jpg" alt=""></a></div>
                            <div><a href="" data-toggle="tab"><img src="img/product/5.jpg" alt=""></a></div>
                        </div>
                    </div>
                    <!-- QuickView Product Details -->
                    <div class="col-md-7 col-sm-6 col-xs-12 mb-40">
                        <div class="product-details section">
                            <!-- Title -->
                            <h1 class="title">DSR Eiffel chair</h1>
                            <!-- Price Ratting -->
                            <div class="price-ratting section">
                                <!-- Price -->
                                <span class="price float-left"><span class="new">€ 120.00</span></span>
                                <!-- Ratting -->
                                <span class="ratting float-right">
                                <i class="fa fa-star active"></i>
                                <i class="fa fa-star active"></i>
                                <i class="fa fa-star active"></i>
                                <i class="fa fa-star active"></i>
                                <i class="fa fa-star active"></i>
                                <span> (01 Customer Review)</span>
                            </span>
                            </div>
                            <!-- Short Description -->
                            <div class="short-desc section">
                                <h5 class="pd-sub-title">Quick Overview</h5>
                                <p>There are many variations of passages of Lorem Ipsum avaable, b majority have
                                    suffered alteration in some form, by injected humour, or randomised words which
                                    don't look even slightly believable. make an ami jani na.</p>
                            </div>
                            <!-- Product Size -->
                            <div class="product-size section">
                                <h5 class="pd-sub-title">Select Size</h5>
                                <button>s</button>
                                <button class="active">m</button>
                                <button>x</button>
                                <button>xl</button>
                            </div>
                            <!-- Product Color -->
                            <div class="color-list section">
                                <h5 class="pd-sub-title">Select Color</h5>
                                <button class="active" style="background-color: #51bd99;"><i class="fa fa-check"></i>
                                </button>
                                <button style="background-color: #ff7a5f;"><i class="fa fa-check"></i></button>
                                <button style="background-color: #baa6c2;"><i class="fa fa-check"></i></button>
                                <button style="background-color: #414141;"><i class="fa fa-check"></i></button>
                            </div>
                            <!-- Quantity Cart -->
                            <div class="quantity-cart section">
                                <div class="product-quantity">
                                    <input type="text" value="0">
                                </div>
                                <button class="add-to-cart">add to cart</button>
                            </div>
                            <!-- Usefull Link -->
                            <ul class="usefull-link section">
                                <li><a href=""><i class="pe-7s-mail"></i> Email to a Friend</a></li>
                                <li><a href=""><i class="pe-7s-like"></i> Wishlist</a></li>
                                <li><a href=""><i class="pe-7s-print"></i> print</a></li>
                            </ul>
                            <!-- Share -->
                            <div class="share-icons section">
                                <span>share :</span>
                                <a href=""><i class="fa fa-facebook"></i></a>
                                <a href=""><i class="fa fa-twitter"></i></a>
                                <a href=""><i class="fa fa-instagram"></i></a>
                                <a href=""><i class="fa fa-pinterest"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- QUICK VIEW MODAL END-->

    <!-- FOOTER TOP SECTION START -->
    <div class="footer-top-section section pt-100 pb-60">
        <div class="container">
            <div class="row">

                <!-- Footer Widget -->
                <div class="footer-widget col-md-4 col-sm-6 col-xs-12 mb-40">
                    <h5 class="widget-title">ABOUT THE STORE</h5>
                    <p>There are many variations of passages of Lor available, but the majority have suffered alteration
                        in some form, by injected humour, or randomised words which don't look even slightly
                        believable</p>
                </div>

                <!-- Footer Widget -->
                <div class="footer-widget col-md-3 col-sm-6 col-xs-12 mb-40">
                    <h5 class="widget-title">CUSTOMER SERVICE</h5>
                    <ul>
                        <li><a href="">Contact Us</a></li>
                        <li><a href="">Returns & Refunds</a></li>
                        <li><a href="">Terms & Conditions</a></li>
                        <li><a href="">online store</a></li>
                    </ul>
                </div>

                <!-- Footer Widget -->
                <div class="footer-widget col-md-2 col-sm-6 col-xs-12 mb-40">
                    <h5 class="widget-title">PROFILE</h5>
                    <ul>
                        <li><a href="">my Account</a></li>
                        <li><a href="">Checkout</a></li>
                        <li><a href="">help</a></li>
                        <li><a href="">support</a></li>
                    </ul>
                </div>

                <!-- Footer Widget -->
                <div class="footer-widget col-md-3 col-sm-6 col-xs-12 mb-40">
                    <h5 class="widget-title">SIGN UP FOR OUR AWESOME NEWS</h5>
                    <form action="http://devitems.us11.list-manage.com/subscribe/post?u=6bbb9b6f5827bd842d9640c82&amp;id=05d85f18ef"
                          method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form"
                          class="sunscribe-form validate" target="_blank" novalidate="">
                        <div id="mc_embed_signup_scroll">
                            <label for="mce-EMAIL" class="hidden">Subscribe to our mailing list</label>
                            <input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL"
                                   placeholder="Email Address" required="">
                            <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                            <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text"
                                                                                                      name="b_6bbb9b6f5827bd842d9640c82_05d85f18ef"
                                                                                                      tabindex="-1"
                                                                                                      value=""></div>
                            <div class="clear"><input type="submit" value="Subscribe" name="subscribe"
                                                      id="mc-embedded-subscribe" class="button"></div>
                        </div>
                    </form>
                    <div class="footer-social fix">
                        <a href=""><i class="fa fa-facebook"></i></a>
                        <a href=""><i class="fa fa-twitter"></i></a>
                        <a href=""><i class="fa fa-instagram"></i></a>
                        <a href=""><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- FOOTER TOP SECTION END -->

    <!-- FOOTER BOTTOM SECTION START -->
    <div class="footer-bottom-section section">
        <div class="container">
            <div class="row">
                <!-- Copyright -->
                <div class="copyright text-left col-sm-6 col-xs-12">
                    <p>Powered by <a href="javascript:;">HasTech</a></p>
                </div>
                <!-- Payment Method -->
                <div class="footer-menu text-right col-sm-6 col-xs-12">
                    <a href="">Help & Support</a>
                </div>
            </div>
        </div>
    </div>
    <!-- FOOTER BOTTOM SECTION END -->


</div>
<!-- Body main wrapper end -->


<!-- Placed JS at the end of the document so the pages load faster -->

<!-- jQuery latest version -->
<script src="js/vendor/jquery-3.1.1.min.js"></script>
<!-- Bootstrap js -->
<script src="js/bootstrap.min.js"></script>
<!-- Plugins js -->
<script src="js/plugins.js"></script>
<!-- Ajax Mail js -->
<script src="js/ajax-mail.js"></script>
<!-- Main js -->
<script src="js/main.js"></script>

</body>

</html>
