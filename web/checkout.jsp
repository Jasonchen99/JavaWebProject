﻿<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <h1>Checkout page</h1>
                    <ul class="breadcrumb">
                        <li><a href="">Home</a></li>
                        <li class="active">Checkout page</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
 
<!-- PAGE SECTION START -->
<div class="page-section section pt-120 pb-80">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="customer-login mb-40">
                    <!-- LOGIN START -->
                    <h3>Returning customer? <a data-toggle="collapse" href="">Click here to login</a></h3>
                    <div id="checkout-login" class="checkout-login collapse fix">
                        <div class="checkout-login-wrapper mt-30">
                            <p>Quisque gravida turpis sit amet nulla posuere lacinia. Cras sed est sit amet ipsum luctus.</p>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <form action="#">
                                    <div class="fix mb-20">
                                        <label>Username or email <span class="required">*</span></label>
                                        <input type="text">
                                    </div>
                                    <div class="fix mb-20">
                                        <label>Password  <span class="required">*</span></label>
                                        <input type="text">
                                    </div>
                                    <div class="fix mb-20">
                                        <input type="submit" value="Login">
                                        <label class="remember-me-box">
                                            <input type="checkbox">
                                            Remember me 
                                        </label>
                                    </div>
                                    <a href="">Lost your password?</a>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- LOGIN END -->						
                </div>
            </div>	
            <div class="checkout-form">						
                    <div class="col-lg-6 col-md-6 mb-40">
                        <form action="#">
                            <h3>Billing Details</h3>
                            <div class="row">
                                <div class="col-xs-12 mb-30">
                                    <label for="b_country">Country <span class="required">*</span></label>
                                    <select id="b_country">
                                      <option value="1">Select a country
                                      <option value="2">bangladesh
                                      <option value="3">Algeria
                                      <option value="4">Afghanistan
                                      <option value="5">Ghana
                                      <option value="6">Albania
                                      <option value="7">Bahrain
                                      <option value="8">Colombia
                                      <option value="9">Dominican Republic
                                    </select>
                                </div>
                                <div class="col-sm-6 col-xs-12 mb-30">
                                    <label for="b_f_name">First Name <span class="required">*</span></label>										
                                    <input id="b_f_name" type="text">
                                </div>
                                <div class="col-sm-6 col-xs-12 mb-30">
                                    <label for="b_l_name">Last Name <span class="required">*</span></label>									
                                    <input id="b_l_name" type="text">
                                </div>
                                <div class="col-xs-12 mb-30">
                                    <label for="b_c_name">Company Name</label>									
                                    <input id="b_c_name" type="text">
                                </div>
                                <div class="col-xs-12 mb-30">
                                    <label>Address <span class="required">*</span></label>
                                    <input type="text" placeholder="Street address">
                                </div>
                                <div class="col-xs-12 mb-30">
                                    <input type="text" placeholder="Apartment, suite, unit etc. (optional)">
                                </div>
                                <div class="col-xs-12 mb-30">
                                    <label for="b_city">Town / City <span class="required">*</span></label>
                                    <input id="b_city" type="text" placeholder="Town / City">
                                </div>
                                <div class="col-sm-6 col-xs-12 mb-30">
                                    <label>State / County <span class="required">*</span></label>										
                                    <input type="text">
                                </div>
                                <div class="col-sm-6 col-xs-12 mb-30">
                                    <label for="b_zip">Postcode / Zip <span class="required">*</span></label>										
                                    <input id="b_zip" type="text" placeholder="Postcode / Zip">
                                </div>
                                <div class="col-sm-6 col-xs-12 mb-30">
                                    <label for="b_email">Email Address <span class="required">*</span></label>										
                                    <input id="b_email" type="email">
                                </div>
                                <div class="col-sm-6 col-xs-12 mb-30">
                                    <label for="b_phone">Phone  <span class="required">*</span></label>										
                                    <input id="b_phone" type="text" placeholder="Phone Number">
                                </div>
                                <div class="col-xs-12 mb-30">
                                    <input id="b_c_account" type="checkbox" data-target="createp_account">
                                    <label for="b_c_account">Create an account?</label>
                                    <div class="collapse mt-20" data-collapse="createp_account">
                                        <p>Create an account by entering the information below. If you are a returning customer please login at the top of the page.</p>
                                        <label for="b_a_password">Account password  <span class="required">*</span></label>
                                        <input id="b_a_password" type="password" placeholder="Password">	
                                    </div>
                                </div>								
                            </div>
                            <h3>
                                <input id="ship_form" type="checkbox" data-target="shipping_form">
                                <label for="ship_form">Ship to a different address?</label>
                            </h3>
                            <div class="collapse row" data-collapse="shipping_form">
                                <div class="col-xs-12 mb-30">
                                    <label for="s_country">Country <span class="required">*</span></label>
                                    <select id="s_country">
                                      <option value="1">Select a country
                                      <option value="2">bangladesh
                                      <option value="3">Algeria
                                      <option value="4">Afghanistan
                                      <option value="5">Ghana
                                      <option value="6">Albania
                                      <option value="7">Bahrain
                                      <option value="8">Colombia
                                      <option value="9">Dominican Republic
                                    </select> 
                                </div>
                                <div class="col-sm-6 col-xs-12 mb-30">
                                    <label for="s_f_name">First Name <span class="required">*</span></label>										
                                    <input id="s_f_name" type="text">
                                </div>
                                <div class="col-sm-6 col-xs-12 mb-30">
                                    <label for="s_l_name">Last Name <span class="required">*</span></label>										
                                    <input id="s_l_name" type="text">
                                </div>
                                <div class="col-xs-12 mb-30">
                                    <label for="s_c_name">Company Name</label>
                                    <input id="s_c_name" type="text">
                                </div>
                                <div class="col-xs-12 mb-30">
                                    <label>Address <span class="required">*</span></label>
                                    <input type="text" placeholder="Street address">
                                </div>
                                <div class="col-xs-12 mb-30">									
                                    <input type="text" placeholder="Apartment, suite, unit etc. (optional)">
                                </div>
                                <div class="col-xs-12 mb-30">
                                    <label for="s_city">Town / City <span class="required">*</span></label>
                                    <input id="s_city" type="text" placeholder="Town / City">
                                </div>
                                <div class="col-sm-6 col-xs-12 mb-30">
                                    <label class="s_county">State / County <span class="required">*</span></label>										
                                    <input id="s_county" type="text">
                                </div>
                                <div class="col-sm-6 col-xs-12 mb-30">
                                    <label for="s_zip">Postcode / Zip <span class="required">*</span></label>										
                                    <input id="s_zip" type="text" placeholder="Postcode / Zip">
                                </div>
                                <div class="col-sm-6 col-xs-12 mb-30">
                                    <label for="s_email">Email Address <span class="required">*</span></label>										
                                    <input id="s_email" type="email">
                                </div>
                                <div class="col-sm-6 col-xs-12 mb-30">
                                    <label for="s_phone">Phone  <span class="required">*</span></label>										
                                    <input id="s_phone" type="text" placeholder="Phone Number">
                                </div>								
                            </div>
                            <div class="order-notes">
                                <label for="order_note">Order Notes</label>
                                <textarea id="order_note" placeholder="Notes about your order, e.g. special notes for delivery."></textarea>								
                            </div>
                        </form>											
                    </div>
                    <div class="col-lg-6 col-md-6 col-xs-12 mb-40">
                        <div class="coupon-form mb-30">
                            <h3>coupon code</h3>
                            <p>Enter your coupon code if you have one</p>
                            <form action="#">
                                <input type="text" placeholder="Coupon code">
                                <input type="submit" value="Apply">
                            </form>
                        </div>
                        <div class="order-wrapper">
                            <h3>Your order</h3>
                            <div class="order-table table-responsive mb-30">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="product-name">Product</th>
                                            <th class="product-total">Total</th>
                                        </tr>							
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="product-name">
                                                Vestibulum suscipit <strong class="product-qty"> × 1</strong>
                                            </td>
                                            <td class="product-total">
                                                <span class="amount">$165.00</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="product-name">
                                                Vestibulum dictum magna	<strong class="product-qty"> × 1</strong>
                                            </td>
                                            <td class="product-total">
                                                <span class="amount">$50.00</span>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>Cart Subtotal</th>
                                            <td>$215.00</td>
                                        </tr>
                                        <tr>
                                            <th>Order Total</th>
                                            <td><strong>$215.00</strong>
                                            </td>
                                        </tr>								
                                    </tfoot>
                                </table>
                            </div>
                            <div class="payment-method">
                                <div class="panel-group" id="accordion">
                                    <div class="panel panel-default">
                                        <div class="panel-heading" id="headingOne">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="">
                                                Direct Bank Transfer
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseOne" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                                <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won’t be shipped until the funds have cleared in our account.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading" id="headingTwo">
                                            <h4 class="panel-title">
                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="">
                                                Cheque Payment
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                            <div class="panel-body">
                                                <p>Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading" id="headingThree">
                                            <h4 class="panel-title">
                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="">
                                                PayPal
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <p>Pay via PayPal; you can pay with your credit card if you don’t have a PayPal account.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="order-button">
                                    <input type="submit" value="Place order">
                                </div>
                            </div>
                        </div>
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
