﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <a href="index.jsp"><img src="img/logo.png" alt="main logo"></a>
                </div>
                <!-- header-search & total-cart -->
                <div class="float-right">
                    <div class="header-option-btns float-right">
                        <!-- header-search -->
                        <div class="header-search float-left">
                            <button class="search-toggle" data-toggle="dropdown"><i class="pe-7s-search"></i></button>
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
                                        <li><a href="login.jsp">Log in</a></li>
                                        <li><a href="register.jsp">Register</a></li>
                                        <li><a href="">My Account</a></li>
                                        <li><a href="wishlist.html">Wish list</a></li>
                                        <li><a href="checkout.jsp">Checkout</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!-- Header Cart -->
                        <div class="header-cart float-left">
                            <!-- Cart Toggle -->
                            <a class="cart-toggle" href="" data-toggle="dropdown">
                                <i class="pe-7s-cart"></i>
                                <span>2</span>
                            </a>
                            <!-- Mini Cart Brief -->
                            <div class="mini-cart-brief dropdown-menu text-left">
                                <!-- Cart Products -->
                                <div class="all-cart-product clearfix">
                                    <div class="single-cart clearfix">
                                        <div class="cart-image">
                                            <a href="product-details.jsp"><img src="img/product/cart-1.jpg" alt=""></a>
                                        </div>
                                        <div class="cart-info">
                                            <h5><a href="product-details.jsp">Le Parc Minotti Chair</a></h5>
                                            <p>1 x £9.00</p>
                                            <a href="" class="cart-delete" title="Remove this item"><i class="pe-7s-trash"></i></a>
                                        </div>
                                    </div>
                                    <div class="single-cart clearfix">
                                        <div class="cart-image">
                                            <a href="product-details.jsp"><img src="img/product/cart-2.jpg" alt=""></a>
                                        </div>
                                        <div class="cart-info">
                                            <h5><a href="product-details.jsp">DSR Eiffel chair</a></h5>
                                            <p>1 x £9.00</p>
                                            <a href="" class="cart-delete" title="Remove this item"><i class="pe-7s-trash"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Cart Total -->
                                <div class="cart-totals">
                                    <h5>Total <span>£12.00</span></h5>
                                </div>
                                <!-- Cart Button -->
                                <div class="cart-bottom  clearfix">
                                    <a href="checkout.jsp">Check out</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <nav class="main-menu menu-right float-right">
                        <ul>
                            <li><a href="index.jsp">Home</a>
                                <ul class="sub-menu">
                                    <li><a href="index.jsp">Home one</a></li>
                                    <li><a href="index-2.html">Home two</a></li>
                                    <li><a href="index-3.html">Home three</a></li>
                                </ul>
                            </li>
                            <li class="active"><a href="">shop</a>
                                <ul class="sub-menu">
                                    <li class="active"><a href="">shop</a></li>
                                    <li><a href="product-details.jsp">product details</a></li>
                                </ul>
                            </li>
                            <li><a href="">Pages</a>
                                <ul class="sub-menu">
                                    <li><a href="cart.jsp">cart</a></li>
                                    <li><a href="checkout.jsp">checkout</a></li>
                                    <li><a href="login.jsp">login</a></li>
                                    <li><a href="register.jsp">register</a></li>
                                    <li><a href="wishlist.html">wishlist</a></li>
                                </ul>
                            </li>
                            <li><a href="blog.html">Blog</a>
                                <ul class="sub-menu">
                                    <li><a href="blog.html">blog</a></li>
                                    <li><a href="blog-details.html">blog details</a></li>
                                </ul>
                            </li>
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

<!-- PAGE BANNER SECTION -->
<div class="page-banner-section section">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="page-banner-content">
                    <h1>shop category</h1>
                    <ul class="breadcrumb">
                        <li><a href="">Home</a></li>
                        <li class="active">shop</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END PAGE BANNER SECTION -->
    
<!-- PAGE SECTION START -->
<div class="page-section section pt-120 pb-120">
    <div class="container">
       
        <div class="row">
            <!-- Isotop Product Filter -->
            <div class="isotope-product-filter col-xs-8">
                <button class="active" data-filter="*">all</button>
                <button data-filter=".chair">chair</button>
                <button data-filter=".ptable">table</button>
                <button data-filter=".home-decor">home decor</button>
                <button data-filter=".lighting">lighting</button>
            </div>
            <!-- Product Filter Toggle -->
            <div class="col-xs-4">
                <button class="product-filter-toggle">filter</button>
            </div>
        </div>
        
        <!-- Product Filter Wrapper -->
        <div class="row">
            <div class="col-xs-12">
                <div class="product-filter-wrapper">
                    <!-- Product Filter -->
                    <div class="product-filter col-md-3 col-sm-6 col-xs-12 mb-30">
                        <h5>Sort by</h5>
                        <ul class="sort-by">
                            <li><a href="">Default</a></li>
                            <li><a href="">Popularity</a></li>
                            <li><a href="">Average rating</a></li>
                            <li><a href="">Newness</a></li>
                            <li><a href="">Price: Low to High</a></li>
                            <li><a href="">Price: High to Low</a></li>
                        </ul>
                    </div>
                    <!-- Product Filter -->
                    <div class="product-filter col-md-3 col-sm-6 col-xs-12 mb-30">
                        <h5>color filters</h5>
                        <ul class="color-filter">
                            <li><a href=""><i style="background-color: #000000;"></i>Black</a></li>
                            <li><a href=""><i style="background-color: #663300;"></i>Brown</a></li>
                            <li><a href=""><i style="background-color: #FF6801;"></i>Orange</a></li>
                            <li><a href=""><i style="background-color: #ff0000;"></i>red</a></li>
                            <li><a href=""><i style="background-color: #FFEE00;"></i>Yellow</a></li>
                        </ul>
                    </div>
                    <!-- Product Filter -->
                    <div class="product-filter col-md-3 col-sm-6 col-xs-12 mb-30">
                        <h5>product tags</h5>
                        <div class="product-tags">
                            <a href="">New</a>,
                            <a href="">brand</a>,
                            <a href="">black</a>,
                            <a href="">white</a>,
                            <a href="">chire</a>,
                            <a href="">table</a>,
                            <a href="">Lorem</a>,
                            <a href="">ipsum</a>,
                            <a href="">dolor</a>,
                            <a href="">sit</a>,
                            <a href="">amet</a>
                        </div>
                    </div>
                    <!-- Product Filter -->
                    <div class="product-filter col-md-3 col-sm-6 col-xs-12 mb-30">
                        <h5>Filter by price</h5>
                        <div id="price-range"></div>
                        <div class="price-values">
                            <span>Price:</span>
                            <input type="text" class="price-amount">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="isotope-grid row">
            <!-- product-item product-item-2 start -->
            <div class="isotope-item chair home-decor col-lg-3 col-md-4 col-sm-6 col-xs-12 mb-50">
                <div class="product-item product-item-2 text-center">
                    <!-- Product Image -->
                    <div class="product-img">
                        <!-- Image -->
                        <a class="image" href="product-details.jsp"><img src="img/product/18.jpg" alt=""></a>
                        <!-- Action Button -->
                        <div class="action-btn-2">
                            <a href="" title="Add to Cart"><i class="pe-7s-cart"></i></a>
                            <a href="" data-toggle="modal" data-target="#quickViewModal" title="Quick View"><i class="pe-7s-look"></i></a>
                            <a class="wishlist" href="" title="Wishlist"><i class="pe-7s-like"></i></a>
                        </div>
                    </div>
                    <!-- Portfolio Info -->
                    <div class="product-info">
                        <!-- Title -->
                        <h5 class="title"><a href="product-details.jsp">Leather weekend Bag</a></h5>
                        <!-- Price -->
                        <div class="price-ratting fix">
                            <span class="price"><span class="new">€169.00</span></span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- product-item product-item-2 end -->
            <!-- product-item product-item-2 start -->
            <div class="isotope-item ptable col-lg-3 col-md-4 col-sm-6 col-xs-12 mb-50">
                <div class="product-item product-item-2 text-center">
                    <!-- Product Image -->
                    <div class="product-img">
                        <!-- Image -->
                        <a class="image" href="product-details.jsp"><img src="img/product/19.jpg" alt=""></a>
                        <!-- Action Button -->
                        <div class="action-btn-2">
                            <a href="" title="Add to Cart"><i class="pe-7s-cart"></i></a>
                            <a href="" data-toggle="modal" data-target="#quickViewModal" title="Quick View"><i class="pe-7s-look"></i></a>
                            <a class="wishlist" href="" title="Wishlist"><i class="pe-7s-like"></i></a>
                        </div>
                    </div>
                    <!-- Portfolio Info -->
                    <div class="product-info">
                        <!-- Title -->
                        <h5 class="title"><a href="product-details.jsp">High Tops</a></h5>
                        <!-- Price -->
                        <div class="price-ratting fix">
                            <span class="price"><span class="new">€137.00</span><span class="old">€115.00</span></span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- product-item product-item-2 end -->
            <!-- product-item product-item-2 start -->
            <div class="isotope-item lighting col-lg-3 col-md-4 col-sm-6 col-xs-12 mb-50">
                <div class="product-item product-item-2 text-center">
                    <!-- Product Image -->
                    <div class="product-img">
                        <!-- Image -->
                        <a class="image" href="product-details.jsp"><img src="img/product/20.jpg" alt=""></a>
                        <!-- Action Button -->
                        <div class="action-btn-2">
                            <a href="" title="Add to Cart"><i class="pe-7s-cart"></i></a>
                            <a href="" data-toggle="modal" data-target="#quickViewModal" title="Quick View"><i class="pe-7s-look"></i></a>
                            <a class="wishlist" href="" title="Wishlist"><i class="pe-7s-like"></i></a>
                        </div>
                    </div>
                    <!-- Portfolio Info -->
                    <div class="product-info">
                        <!-- Title -->
                        <h5 class="title"><a href="product-details.jsp">Chelsea boots</a></h5>
                        <!-- Price -->
                        <div class="price-ratting fix">
                            <span class="price"><span class="new">€245.00</span></span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- product-item product-item-2 end -->
            <!-- product-item product-item-2 start -->
            <div class="isotope-item chair lighting col-lg-3 col-md-4 col-sm-6 col-xs-12 mb-50">
                <div class="product-item product-item-2 text-center">
                    <!-- Product Image -->
                    <div class="product-img">
                        <!-- Image -->
                        <a class="image" href="product-details.jsp"><img src="img/product/22.jpg" alt=""></a>
                        <!-- Action Button -->
                        <div class="action-btn-2">
                            <a href="" title="Add to Cart"><i class="pe-7s-cart"></i></a>
                            <a href="" data-toggle="modal" data-target="#quickViewModal" title="Quick View"><i class="pe-7s-look"></i></a>
                            <a class="wishlist" href="" title="Wishlist"><i class="pe-7s-like"></i></a>
                        </div>
                    </div>
                    <!-- Portfolio Info -->
                    <div class="product-info">
                        <!-- Title -->
                        <h5 class="title"><a href="product-details.jsp">Leather Belt</a></h5>
                        <!-- Price -->
                        <div class="price-ratting fix">
                            <span class="price"><span class="new">€245.00</span></span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- product-item product-item-2 end -->
            <!-- product-item product-item-2 start -->
            <div class="isotope-item chair col-lg-3 col-md-4 col-sm-6 col-xs-12 mb-50">
                <div class="product-item product-item-2 text-center">
                    <!-- Product Image -->
                    <div class="product-img">
                        <!-- Image -->
                        <a class="image" href="product-details.jsp"><img src="img/product/23.jpg" alt=""></a>
                        <!-- Action Button -->
                        <div class="action-btn-2">
                            <a href="" title="Add to Cart"><i class="pe-7s-cart"></i></a>
                            <a href="" data-toggle="modal" data-target="#quickViewModal" title="Quick View"><i class="pe-7s-look"></i></a>
                            <a class="wishlist" href="" title="Wishlist"><i class="pe-7s-like"></i></a>
                        </div>
                    </div>
                    <!-- Portfolio Info -->
                    <div class="product-info">
                        <!-- Title -->
                        <h5 class="title"><a href="product-details.jsp">Textured Tie</a></h5>
                        <!-- Price -->
                        <div class="price-ratting fix">
                            <span class="price"><span class="new">€137.00</span><span class="old">€115.00</span></span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- product-item product-item-2 end -->
            <!-- product-item product-item-2 start -->
            <div class="isotope-item ptable home-decor col-lg-3 col-md-4 col-sm-6 col-xs-12 mb-50">
                <div class="product-item product-item-2 text-center">
                    <!-- Product Image -->
                    <div class="product-img">
                        <!-- Image -->
                        <a class="image" href="product-details.jsp"><img src="img/product/21.jpg" alt=""></a>
                        <!-- Action Button -->
                        <div class="action-btn-2">
                            <a href="" title="Add to Cart"><i class="pe-7s-cart"></i></a>
                            <a href="" data-toggle="modal" data-target="#quickViewModal" title="Quick View"><i class="pe-7s-look"></i></a>
                            <a class="wishlist" href="" title="Wishlist"><i class="pe-7s-like"></i></a>
                        </div>
                    </div>
                    <!-- Portfolio Info -->
                    <div class="product-info">
                        <!-- Title -->
                        <h5 class="title"><a href="product-details.jsp">Chelsea boots</a></h5>
                        <!-- Price -->
                        <div class="price-ratting fix">
                            <span class="price"><span class="new">€185.00</span><span class="old">€125..00</span></span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- product-item product-item-2 end -->
            <!-- product-item product-item-2 start -->
            <div class="isotope-item ptable col-lg-3 col-md-4 col-sm-6 col-xs-12 mb-50">
                <div class="product-item product-item-2 text-center">
                    <!-- Product Image -->
                    <div class="product-img">
                        <!-- Image -->
                        <a class="image" href="product-details.jsp"><img src="img/product/24.jpg" alt=""></a>
                        <!-- Action Button -->
                        <div class="action-btn-2">
                            <a href="" title="Add to Cart"><i class="pe-7s-cart"></i></a>
                            <a href="" data-toggle="modal" data-target="#quickViewModal" title="Quick View"><i class="pe-7s-look"></i></a>
                            <a class="wishlist" href="" title="Wishlist"><i class="pe-7s-like"></i></a>
                        </div>
                    </div>
                    <!-- Portfolio Info -->
                    <div class="product-info">
                        <!-- Title -->
                        <h5 class="title"><a href="product-details.jsp">Satin Bow Tie</a></h5>
                        <!-- Price -->
                        <div class="price-ratting fix">
                            <span class="price"><span class="new">€169.00</span></span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- product-item product-item-2 end -->
            <!-- product-item product-item-2 start -->
            <div class="isotope-item home-decor lighting col-lg-3 col-md-4 col-sm-6 col-xs-12 mb-50">
                <div class="product-item product-item-2 text-center">
                    <!-- Product Image -->
                    <div class="product-img">
                        <!-- Image -->
                        <a class="image" href="product-details.jsp"><img src="img/product/25.jpg" alt=""></a>
                        <!-- Action Button -->
                        <div class="action-btn-2">
                            <a href="" title="Add to Cart"><i class="pe-7s-cart"></i></a>
                            <a href="" data-toggle="modal" data-target="#quickViewModal" title="Quick View"><i class="pe-7s-look"></i></a>
                            <a class="wishlist" href="" title="Wishlist"><i class="pe-7s-like"></i></a>
                        </div>
                    </div>
                    <!-- Portfolio Info -->
                    <div class="product-info">
                        <!-- Title -->
                        <h5 class="title"><a href="product-details.jsp">Chelsea-style Boots</a></h5>
                        <!-- Price -->
                        <div class="price-ratting fix">
                            <span class="price"><span class="new">€185.00</span><span class="old">€125..00</span></span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- product-item product-item-2 end -->
        </div>
            
        <div class="row">
            <div class="text-center col-xs-12 mt-30">
                <a href="" class="btn load-more-product">load more</a>
            </div>
        </div>
    </div>
</div>
<!-- PAGE SECTION END -->

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
                            <img src="img/product/19.jpg" alt="">
                        </div>
                        <div class="pro-large-img tab-pane" id="pro-large-img-2">
                            <img src="img/product/18.jpg" alt="">
                        </div>
                        <div class="pro-large-img tab-pane" id="pro-large-img-3">
                            <img src="img/product/20.jpg" alt="">
                        </div>
                        <div class="pro-large-img tab-pane" id="pro-large-img-4">
                            <img src="img/product/22.jpg" alt="">					
                        </div>
                        <div class="pro-large-img tab-pane" id="pro-large-img-5">
                            <img src="img/product/23.jpg" alt="">
                        </div>
                    </div>
                    <!-- QuickView Product Thumbnail Slider -->
                    <div class="pro-thumb-img-slider">
                        <div><a href="" data-toggle="tab"><img src="img/product/19.jpg" alt=""></a></div>
                        <div><a href="" data-toggle="tab"><img src="img/product/18.jpg" alt=""></a></div>
                        <div><a href="" data-toggle="tab"><img src="img/product/20.jpg" alt=""></a></div>
                        <div><a href="" data-toggle="tab"><img src="img/product/22.jpg" alt=""></a></div>
                        <div><a href="" data-toggle="tab"><img src="img/product/23.jpg" alt=""></a></div>
                    </div>
                </div>
                <!-- QuickView Product Details -->
                <div class="col-md-7 col-sm-6 col-xs-12 mb-40">
                    <div class="product-details section">
                        <!-- Title -->
                        <h1 class="title">High Tops</h1>
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
                            <p>There are many variations of passages of Lorem Ipsum avaable, b majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. make an ami jani na.</p>
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
                            <button class="active" style="background-color: #51bd99;"><i class="fa fa-check"></i></button>
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
				<p>There are many variations of passages of Lor available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable</p>
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
				<form action="http://devitems.us11.list-manage.com/subscribe/post?u=6bbb9b6f5827bd842d9640c82&amp;id=05d85f18ef" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="sunscribe-form validate" target="_blank" novalidate="">
                    <div id="mc_embed_signup_scroll">
                        <label for="mce-EMAIL" class="hidden">Subscribe to our mailing list</label>
                        <input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="Email Address" required="">
                        <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                        <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_6bbb9b6f5827bd842d9640c82_05d85f18ef" tabindex="-1" value=""></div>
                        <div class="clear"><input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button"></div>
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
