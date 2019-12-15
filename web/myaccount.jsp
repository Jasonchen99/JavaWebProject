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
                                            <li><a href="login.jsp">Log in</a></li>
                                            <li><a href="register.jsp">Register</a></li>
                                            <li><a href="myaccount.jsp">My Account</a></li>
                                            <li><a href="myorder.jsp">My Order</a></li>
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
                                                <a href="" class="cart-delete" title="Remove this item"><i
                                                        class="pe-7s-trash"></i></a>
                                            </div>
                                        </div>
                                        <div class="single-cart clearfix">
                                            <div class="cart-image">
                                                <a href="product-details.jsp"><img src="img/product/cart-2.jpg" alt=""></a>
                                            </div>
                                            <div class="cart-info">
                                                <h5><a href="product-details.jsp">DSR Eiffel chair</a></h5>
                                                <p>1 x £9.00</p>
                                                <a href="" class="cart-delete" title="Remove this item"><i
                                                        class="pe-7s-trash"></i></a>
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
                                <li><a href="index.jsp">Home</a></li>
                                <li><a href="shop.jsp">Shop</a></li>
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

<!-- PAGE BANNER SECTION -->
<div class="page-banner-section section">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="page-banner-content">
                    <h1>My Account</h1>
                    <ul class="breadcrumb">
                        <li><a href="">Home</a></li>
                        <li class="active">Register page</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- PAGE SECTION START -->
<div class="page-section section pt-120 pb-120">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2 col-xs-12">
                <div class="login-reg-form">
                    <form action="RegisterServlet" method="post">
                        <div class="row">
                            <div class="col-sm-6 col-xs-12 mb-20">
                                <label for="r_f_name">UserName</label>
                                <input id="r_f_name" name="username" value="${sessionScope.SESSION_user.username}" type="text">
                            </div>
                            <div class="col-sm-6 col-xs-12 mb-20">
                                <label for="r_l_name">ID</label>
                                <input id="r_l_name" name="uid" type="text" value="${sessionScope.SESSION_user.uid}" readonly="readonly">
                            </div>
                            <div class="col-sm-6 col-xs-12 mb-20">
                                <label for="r_email">Email Address</label>										
                                <input id="r_email" name="email" type="email" value="${sessionScope.SESSION_user.email}">
                            </div>
                            <div class="col-sm-6 col-xs-12 mb-20">
                                <label for="r_phone">Phone </label>										
                                <input id="r_phone" name="pnum"  type="text" value="${sessionScope.SESSION_user.pnum}">
                            </div>
                            <div class="col-xs-12 mb-20">
                                <label class="" for="r_password">Account password</label>
                                <input id="r_password" name="password" value="${sessionScope.SESSION_user.password}" type="password">
                            </div>
                            <div class="col-xs-12 mb-20">
                                <label class="" for="r_c_password">Confirm password</label>
                                <input id="r_c_password" type="password">
                            </div>
                            <div class="col-xs-12">
                                <input value="register" type="submit">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- PAGE SECTION END --> 

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
