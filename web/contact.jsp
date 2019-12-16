<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                            <li><a href="myorder.jsp">My Order</a></li>
                                            <li><a href="checkout.jsp">Checkout</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <nav class="main-menu menu-right float-right">
                            <ul>
                                <li><a href="index.jsp">Home</a></li>
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
                    <h1>contact us</h1>
                    <ul class="breadcrumb">
                        <li><a href="">Home</a></li>
                        <li class="active">contact us</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END PAGE BANNER SECTION -->
    
<!-- PAGE SECTION -->
<div class="page-section section pt-120 pb-90">
    <div class="container">
        <div class="row mb-40">
            <!-- Contact Map -->
            <div class="contact-map col-md-6 col-xs-12 mb-40">
                <div id="map"></div>
            </div>
            <!-- Contact Form -->
            <div class="contact-form col-md-6 col-xs-12 mb-40">
                <h3>Send Your Massage</h3>
                <form id="contact-form" action="mail.php" method="post">
                    <div class="row">
                        <div class="col-sm-6 col-xs-12 mb-20"><input type="text" name="name" placeholder="Your name"></div>
                        <div class="col-sm-6 col-xs-12 mb-20"><input type="text" name="email" placeholder="Your email"></div>
                        <div class="col-xs-12 mb-20"><textarea name="message" placeholder="Your message"></textarea></div>
                        <div class="col-xs-12"><input type="submit" value="SUBMIT"></div>
                    </div>
                </form>
                <p class="form-messege">
            </div>
        </div>
        <!-- Contact Info -->
		<div class="row">
		    <div class="contact-info col-md-4 text-center mb-30">
		        <a href="">Phone: +88 58 7485 6987 65</a>
		    </div>
		    <div class="contact-info col-md-4 text-center mb-30">
		        <a href="mailto:outside@email.com">Email: outside@email.com</a>
		    </div>
		    <div class="contact-info col-md-4 text-center mb-30">
		        <p>Address: house 09,Road 3,Dhaka</p>
		    </div>
		</div>
    </div>
</div>
<!-- END PAGE SECTION -->

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
				<form action="" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="sunscribe-form validate" target="_blank" novalidate="">
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
<!-- Google Map APi -->
<script src="../../../../maps/api/74ae14f0-244d-46f9-a3ed-24bf132e3be9.js"></script>
<!-- Map Activation -->
<script src="js/map.js"></script>
<!-- Ajax Mail js -->
<script src="js/ajax-mail.js"></script>
<!-- Main js -->
<script src="js/main.js"></script>

</body>

</html>
