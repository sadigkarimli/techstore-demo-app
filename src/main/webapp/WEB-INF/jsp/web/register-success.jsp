<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 10/20/19
  Time: 8:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="az">
<head>
    <meta charset="utf-8">
    <title>MStore | Modern Bootstrap E-commerce Template
    </title>
    <!-- SEO Meta Tags-->
    <meta name="description" content="MStore - Modern Bootstrap E-commerce Template">
    <meta name="keywords" content="bootstrap, shop, e-commerce, market, modern, responsive,  business, mobile, bootstrap 4, html5, css3, jquery, js, gallery, slider, touch, creative, clean">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.png">
    <link rel="manifest" href="site.webmanifest">
    <link rel="mask-icon" color="#111" href="safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#111">
    <meta name="theme-color" content="#ffffff">
    <!-- Vendor Styles including: Font Icons, Plugins, etc.-->
    <link rel="stylesheet" media="screen" href="css/vendor.min.css">
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" id="main-styles" href="css/theme.min.css">
    <!-- Customizer styles and scripts-->
    <link rel="stylesheet" media="screen" href="customizer/customizer.min.css">
    <!-- Google Tag Manager-->
    <script>
        (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
                new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
            j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
            'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-PVV9F7F');
    </script>
</head>
<!-- Body-->
<body>

<!-- Off-canvas search-->
<div class="offcanvas offcanvas-reverse" id="offcanvas-search">
    <div class="offcanvas-header d-flex justify-content-between align-items-center">
        <h3 class="offcanvas-title">Search site</h3>
        <button class="close" type="button" data-dismiss="offcanvas" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    </div>
    <div class="offcanvas-body">
        <div class="offcanvas-body-inner">
            <div class="input-group pt-3">
                <div class="input-group-prepend"><span class="input-group-text" id="search-icon"><i data-feather="search"></i></span></div>
                <input class="form-control" type="text" id="site-search" placeholder="Search site" aria-label="Search site" aria-describedby="search-icon">
            </div><small class="form-text pt-1">Type A or C to see suggestions. Powered by Easy autocomplete plugin via separate JSON file.</small>
        </div>
    </div>
</div>
<!-- Off-canvas account-->
<div class="offcanvas offcanvas-reverse" id="offcanvas-account">
    <div class="offcanvas-header d-flex justify-content-between align-items-center">
        <h3 class="offcanvas-title">Sign in / Create account</h3>
        <button class="close" type="button" data-dismiss="offcanvas" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    </div>
    <div class="offcanvas-body">
        <div class="offcanvas-body-inner">
            <ul class="nav nav-tabs nav-justified" role="tablist">
                <li class="nav-item"><a class="nav-link active" href="#signin" data-toggle="tab" role="tab"><i data-feather="log-in"></i>&nbsp;Sign In</a></li>
                <li class="nav-item"><a class="nav-link" href="#signup" data-toggle="tab" role="tab"><i data-feather="user"></i>&nbsp;Sign Up</a></li>
            </ul>
            <div class="tab-content pt-1">
                <div class="tab-pane fade show active" id="signin" role="tabpanel">
                    <form class="needs-validation" novalidate>
                        <div class="form-group">
                            <label class="sr-only" for="signin-email">Email</label>
                            <div class="input-group">
                                <div class="input-group-prepend"><span class="input-group-text" id="signin-email-icon"><i data-feather="mail"></i></span></div>
                                <input class="form-control" type="email" id="signin-email" placeholder="Email" aria-label="Email" aria-describedby="signin-email-icon" required>
                                <div class="invalid-feedback">Please provide email address.</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="signin-password">Password</label>
                            <div class="input-group">
                                <div class="input-group-prepend"><span class="input-group-text" id="signin-password-icon"><i data-feather="lock"></i></span></div>
                                <input class="form-control" type="password" id="signin-password" placeholder="Password" aria-label="Password" aria-describedby="signin-password-icon" required>
                                <div class="invalid-feedback">Please enter a password.</div>
                            </div>
                        </div>
                        <div class="custom-control custom-checkbox mb-3">
                            <input class="custom-control-input" type="checkbox" id="remember-me" checked>
                            <label class="custom-control-label" for="remember-me">Remember me</label>
                        </div>
                        <button class="btn btn-primary btn-block" type="submit">Sign In</button>
                    </form>
                </div>
                <div class="tab-pane fade" id="signup" role="tabpanel">
                    <form class="needs-validation" novalidate>
                        <div class="form-group">
                            <label class="sr-only" for="signup-name">Full name</label>
                            <input class="form-control" type="text" id="signup-name" placeholder="Full name" aria-label="Full name" required>
                            <div class="invalid-feedback">Please enter your full name.</div>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="signup-email">Email address</label>
                            <input class="form-control" type="email" id="signup-email" placeholder="Email address" aria-label="Email address" required>
                            <div class="invalid-feedback">Please provide a valid email address.</div>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="signup-password">Password</label>
                            <input class="form-control" type="password" id="signup-password" placeholder="Password" aria-label="Password" required>
                            <div class="invalid-feedback">Please enter a password.</div>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="signup-password-confirm">Confirm password</label>
                            <input class="form-control" type="password" id="signup-password-confirm" placeholder="Confirm password" aria-label="Confirm password" required>
                            <div class="invalid-feedback">Please confirm password.</div>
                        </div>
                        <button class="btn btn-primary btn-block" type="submit">Sign Up</button>
                    </form>
                </div>
            </div>
            <div class="d-flex align-items-center pt-5">
                <hr class="w-100">
                <div class="px-3 w-100 text-nowrap font-weight-semibold">Or sign in via</div>
                <hr class="w-100">
            </div>
            <div class="text-center pt-4"><a class="social-btn sb-facebook mx-2 mb-3" href="#" data-toggle="tooltip" title="Facebook"><i class="flaticon-facebook"></i></a><a class="social-btn sb-google-plus mx-2 mb-3" href="#" data-toggle="tooltip" title="Google"><i class="flaticon-google-plus"></i></a><a class="social-btn sb-twitter mx-2 mb-3" href="#" data-toggle="tooltip" title="Twitter"><i class="flaticon-twitter"></i></a></div>
        </div>
    </div>
</div>
<!-- Off-canvas cart-->
<div class="offcanvas offcanvas-reverse" id="offcanvas-cart">
    <div class="offcanvas-header d-flex justify-content-between align-items-center">
        <h3 class="offcanvas-title">Your cart</h3>
        <button class="close" type="button" data-dismiss="offcanvas" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    </div>
    <div class="offcanvas-body">
        <div class="offcanvas-body-inner">
            <div class="text-right"><a class="text-danger btn-sm pr-0" href="#"><i class="mr-1" data-feather="x" style="width: .85rem; height: .85rem;"></i>Clear cart</a></div>
            <div class="widget widget-featured-entries pt-3">
                <div class="media">
                    <div class="featured-entry-thumb mr-3"><a href="#"><img src="img/shop/widget/07.jpg" width="64" alt="Product thumb"></a><span class="item-remove-btn"><i data-feather="x"></i></span></div>
                    <div class="media-body">
                        <h6 class="featured-entry-title"><a href="#">Calvin Klein Jeans Keds</a></h6>
                        <p class="featured-entry-meta">1 <span class='text-muted'>x</span> $125.00</p>
                    </div>
                </div>
                <div class="media">
                    <div class="featured-entry-thumb mr-3"><a href="#"><img src="img/shop/widget/08.jpg" width="64" alt="Product thumb"></a><span class="item-remove-btn"><i data-feather="x"></i></span></div>
                    <div class="media-body">
                        <h6 class="featured-entry-title"><a href="#">The North Face Hoodie</a></h6>
                        <p class="featured-entry-meta">1 <span class='text-muted'>x</span> $134.00</p>
                    </div>
                </div>
                <div class="media">
                    <div class="featured-entry-thumb mr-3"><a href="#"><img src="img/shop/widget/09.jpg" width="64" alt="Product thumb"></a><span class="item-remove-btn"><i data-feather="x"></i></span></div>
                    <div class="media-body">
                        <h6 class="featured-entry-title"><a href="#">Medicine Chameleon Sunglasses</a></h6>
                        <p class="featured-entry-meta">1 <span class='text-muted'>x</span> $47.00</p>
                    </div>
                </div>
                <div class="media">
                    <div class="featured-entry-thumb mr-3"><a href="#"><img src="img/shop/widget/10.jpg" width="64" alt="Product thumb"></a><span class="item-remove-btn"><i data-feather="x"></i></span></div>
                    <div class="media-body">
                        <h6 class="featured-entry-title"><a href="#">Adidas Performance Hat</a></h6>
                        <p class="featured-entry-meta">1 <span class='text-muted'>x</span> $19.00</p>
                    </div>
                </div>
                <hr>
                <div class="d-flex justify-content-between align-items-center py-3">
                    <div class="font-size-sm"> <span class="mr-2">Subtotal:</span><span class="font-weight-semibold text-dark">$325.00</span></div><a class="btn btn-outline-secondary btn-sm" href="cart.html">Expand cart<i class="mr-n2" data-feather="chevron-right"></i></a>
                </div><a class="btn btn-primary btn-sm btn-block" href="checkout-details.html"><i class="mr-1" data-feather="credit-card"></i>Checkout</a>
            </div>
        </div>
    </div>
</div>
<!-- Navbar Light-->
<jsp:include page="header-light.jsp"></jsp:include>
<!-- Page Content-->
<div class="container pb-5 mb-sm-4">
    <div class="row pt-5">
        <div class="col-md-6 pt-5 pt-sm-4">
            <h2 class="h4 mb-3">TechStore.az</h2>
            <p class="text-muted mb-4">Hörmətli ${requestScope.userName} qeydiyyat uğurla tamamlanmışdır.
                E-mail ünvanınıza göndərilən aktivasiya linki ilə hesabınızı təsdiqləyin.
                Spam ismariclar bölməsinə baxmağı unutmayın.</p>
        </div>
    </div>
</div>
<!-- Footer-->
<footer class="page-footer bg-dark">
    <!-- first row-->
    <div class="pt-5 pb-0 pb-md-4">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="widget widget-links pb-4">
                        <h3 class="widget-title text-white border-light">Shop departments</h3>
                        <ul>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">Apparel &amp; Shoes</span></a></li>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">Glasses &amp; Accessories</span></a></li>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">Handbags &amp; Backpacks</span></a></li>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">Computers &amp; Accessories</span></a></li>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">Smartphones &amp; Tablets</span></a></li>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">TV, Video &amp; Audio</span></a></li>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">Cameras, Photo &amp; Video</span></a></li>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">Headphones</span></a></li>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">Wearable Electronics</span></a></li>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">Printers &amp; Ink</span></a></li>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">Video Games</span></a></li>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">Car Electronics</span></a></li>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">Smart Home, IoT</span></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="widget widget-links pb-4">
                        <h3 class="widget-title text-white border-light">Account &amp; shipping info</h3>
                        <ul>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">Your account</span></a></li>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">Shipping rates &amp; policies</span></a></li>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">Refunds &amp; replacements</span></a></li>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">Taxes</span></a></li>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">Delivery info</span></a></li>
                        </ul>
                    </div>
                    <div class="widget widget-links pb-4">
                        <h3 class="widget-title text-white border-light">About us</h3>
                        <ul>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">Careers</span></a></li>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">About shop</span></a></li>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">Our stores</span></a></li>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">Services</span></a></li>
                            <li><a class="nav-link-inline nav-link-light" href="#"><i class="widget-categories-indicator" data-feather="chevron-right"></i><span class="font-size-sm">News</span></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-xl-4 offset-xl-1 col-md-5">
                    <div class="widget">
                        <!-- Subscription form (MailChimp)-->
                        <h3 class="widget-title text-white border-light">Stay informed</h3>
                        <form class="validate pb-4" action="https://studio.us12.list-manage.com/subscribe/post-json?u=c7103e2c981361a6639545bd5&amp;amp;id=29ca296126&amp;c=?" method="get" name="mc-embedded-subscribe-form" id="mc-embedded-subscribe-form">
                            <div class="input-group mb-2">
                                <div class="input-group-prepend"><span class="input-group-text" style="background-color: #e8e8e8;"><i data-feather="mail"></i></span></div>
                                <input class="form-control border-0 box-shadow-0 bg-secondary" type="email" name="EMAIL" id="mce-EMAIL" value="" placeholder="Your email" required>
                            </div>
                            <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                            <div style="position: absolute; left: -5000px;" aria-hidden="true">
                                <input type="text" name="b_c7103e2c981361a6639545bd5_29ca296126" tabindex="-1">
                            </div>
                            <button class="btn btn-primary btn-block" type="submit" name="subscribe" id="mc-embedded-subscribe">Subscribe*</button>
                            <p class="font-size-xs text-white opacity-60 pt-2 mb-2" id="mc-helper">*Subscribe to our newsletter to receive early discount offers, updates and new products info.</p>
                            <!-- Subscription status-->
                            <div class="subscribe-status"></div>
                        </form>
                        <!-- Mobile app download-->
                        <div class="widget pb-4">
                            <h3 class="widget-title text-white border-light">Download our app</h3><a class="market-btn market-btn-light apple-btn mr-2 mb-2" href="#" role="button"><span class="market-button-subtitle">Download on the</span><span class="market-button-title">App Store</span></a><a class="market-btn market-btn-light google-btn" href="#" role="button"><span class="market-button-subtitle">Download on the</span><span class="market-button-title">Google Play</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- shop features-->
    <div class="pt-5 pb-0 pb-md-5 border-bottom border-light" id="shop-features" style="background-color: #1f1f1f;">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6 border-right border-light">
                    <div class="icon-box text-center mb-5 mb-md-0">
                        <div class="icon-box-icon"><i data-feather="truck"></i></div>
                        <h3 class="icon-box-title font-weight-semibold text-white">Free local delivery</h3>
                        <p class="icon-box-text">Free delivery for all orders over $100</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 border-right border-light">
                    <div class="icon-box text-center mb-5 mb-md-0">
                        <div class="icon-box-icon"><i data-feather="refresh-cw"></i></div>
                        <h3 class="icon-box-title font-weight-semibold text-white">Money back guarantee</h3>
                        <p class="icon-box-text">Free delivery for all orders over $100</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 border-right border-light">
                    <div class="icon-box text-center mb-5 mb-md-0">
                        <div class="icon-box-icon"><i data-feather="life-buoy"></i></div>
                        <h3 class="icon-box-title font-weight-semibold text-white">24/7 customer support</h3>
                        <p class="icon-box-text">Friendly 24/7 customer support</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="icon-box text-center mb-5 mb-md-0">
                        <div class="icon-box-icon"><i data-feather="credit-card"></i></div>
                        <h3 class="icon-box-title font-weight-semibold text-white">Secure online payment</h3>
                        <p class="icon-box-text">We posess SSL / Secure сertificate</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- third row-->
    <div class="pt-5 pb-4" style="background-color: #1f1f1f;">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 text-center text-sm-left">
                    <div class="mb-4 mb-sm-0"><a class="d-inline-block" href="index.html"><img width="100" src="img/logo-light.png" alt="MStore"/></a>
                        <div class="navbar-lang-switcher dropdown border-light mt-3 mb-0 mt-sm-0">
                            <div class="dropdown-toggle text-white" data-toggle="dropdown"><img width="20" src="img/flags/en.png" alt="English"/><span>USD</span>
                            </div>
                            <ul class="dropdown-menu" style="width: 150px;">
                                <li class="dropdown-item">
                                    <select class="custom-select custom-select-sm">
                                        <option value="usd">$ USD</option>
                                        <option value="usd">€ EUR</option>
                                        <option value="usd">£ UKP</option>
                                        <option value="usd">¥ JPY</option>
                                    </select>
                                </li>
                                <li><a class="dropdown-item" href="index.html"><img class="mr-2" width="20" src="img/flags/fr.png" alt="Français"/>Français</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#"><img class="mr-2" width="20" src="img/flags/de.png" alt="Deutsch"/>Deutsch</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#"><img class="mr-2" width="20" src="img/flags/it.png" alt="Italiano"/>Italiano</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 text-center text-sm-right"><a class="social-btn sb-facebook sb-light mx-1 mb-2" href="#"><i class="flaticon-facebook"></i></a><a class="social-btn sb-twitter sb-light mx-1 mb-2" href="#"><i class="flaticon-twitter"></i></a><a class="social-btn sb-instagram sb-light mx-1 mb-2" href="#"><i class="flaticon-instagram"></i></a><a class="social-btn sb-vimeo sb-light mx-1 mb-2" href="#"><i class="flaticon-vimeo"></i></a></div>
            </div>
            <div class="row pt-4">
                <div class="col-sm-6 text-center text-sm-left">
                    <ul class="list-inline font-size-sm">
                        <li class="list-inline-item mr-3"><a class="nav-link-inline nav-link-light" href="#">Outlets</a></li>
                        <li class="list-inline-item mr-3"><a class="nav-link-inline nav-link-light" href="#">Affiliates</a></li>
                        <li class="list-inline-item mr-3"><a class="nav-link-inline nav-link-light" href="#">Support</a></li>
                        <li class="list-inline-item mr-3"><a class="nav-link-inline nav-link-light" href="#">Privacy</a></li>
                        <li class="list-inline-item mr-3"><a class="nav-link-inline nav-link-light" href="#">Terms of use</a></li>
                    </ul>
                </div>
                <div class="col-sm-6 text-center text-sm-right">
                    <div class="d-inline-block"><img width="187" src="img/cards.png" alt="Payment methods"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="py-3" style="background-color: #1a1a1a;">
        <div class="container font-size-xs text-center" aria-label="Copyright"><span class="text-white opacity-60 mr-1">© All rights reserved. Made by</span><a class="nav-link-inline nav-link-light" href="https://createx.studio/" target="_blank">Createx Studio</a></div>
    </div>
</footer>
<!-- Back To Top Button-->
<a class="scroll-to-top-btn" href="#"><i class="scroll-to-top-btn-icon" data-feather="chevron-up"></i></a>



<!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
<jsp:include page="js.jsp"></jsp:include>
</body>
</html>