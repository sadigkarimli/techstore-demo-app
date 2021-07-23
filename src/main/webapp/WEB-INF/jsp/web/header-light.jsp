<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 10/23/19
  Time: 5:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="navbar navbar-expand-lg navbar-light fixed-top bg-light">
    <div class="container-fluid navbar-inner">
        <!-- navbar brand--><a class="navbar-brand" style="min-width: 100px;" href="index.html"><img width="100"
                                                                                                     src="img/logo-dark.png"
                                                                                                     alt="MStore"/></a>
        <!-- navbar collapse area-->
        <div class="collapse navbar-collapse" id="menu">
            <!-- language/currency switcher-->
            <div class="navbar-lang-switcher dropdown pr-2">
                <div class="dropdown-toggle" data-toggle="dropdown"><img width="20" src="img/flags/en.png"
                                                                         alt="English"/><span>USD</span>
                </div>
                <ul class="dropdown-menu">
                    <li class="dropdown-item">
                        <select class="custom-select custom-select-sm">
                            <option value="usd">$ USD</option>
                            <option value="usd">€ EUR</option>
                            <option value="usd">£ UKP</option>
                            <option value="usd">¥ JPY</option>
                        </select>
                    </li>
                    <li><a class="dropdown-item" href="index.html"><img class="mr-2" width="20" src="img/flags/fr.png"
                                                                        alt="Français"/>Français</a></li>
                    <li class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="#"><img class="mr-2" width="20" src="img/flags/de.png"
                                                               alt="Deutsch"/>Deutsch</a></li>
                    <li class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="#"><img class="mr-2" width="20" src="img/flags/it.png"
                                                               alt="Italiano"/>Italiano</a></li>
                </ul>
            </div>
            <!-- Site menu-->
            <ul class="navbar-nav">
                <li class="nav-item dropdown mega-dropdown dropdown-more"><a class="nav-link dropdown-toggle" href="#"
                                                                             data-toggle="dropdown">Categories<i
                        data-feather="more-horizontal"></i></a>
                    <div class="dropdown-menu">
                        <div class="dropdown-inner">
                            <div class="dropdown-column">
                                <div class="bg-position-center bg-no-repeat bg-size-cover text-center px-3 py-4 mb-3"
                                     style="background-image: url(img/megamenu/cat_bg02.jpg);">
                                    <h3 class="h5 text-white text-shadow my-3">Apparel</h3>
                                </div>
                                <div class="widget widget-links">
                                    <ul>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">Clothing</span></a>
                                        </li>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">Shoes</span></a>
                                        </li>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">Handbags &amp; Backpacks</span></a>
                                        </li>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">Hats &amp; Caps</span></a>
                                        </li>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">Sunglasses</span></a>
                                        </li>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">Watches</span></a>
                                        </li>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">Accessories</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="dropdown-column">
                                <div class="bg-position-center bg-no-repeat bg-size-cover text-center px-3 py-4 mb-3"
                                     style="background-image: url(img/megamenu/cat_bg01.jpg);">
                                    <h3 class="h5 text-white text-shadow my-3">Electronics</h3>
                                </div>
                                <div class="widget widget-links">
                                    <ul>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">Computers &amp; Accessories</span></a>
                                        </li>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">TV, Video &amp; Audio</span></a>
                                        </li>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">Smartphones &amp; Tablets</span></a>
                                        </li>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">Cameras, Photo &amp; Video</span></a>
                                        </li>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">Headphones</span></a>
                                        </li>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">Wearable Electronics</span></a>
                                        </li>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">Video Games</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="dropdown-column">
                                <div class="bg-position-center bg-no-repeat bg-size-cover text-center px-3 py-4 mb-3"
                                     style="background-image: url(img/megamenu/cat_bg03.jpg);">
                                    <h3 class="h5 text-white text-shadow my-3">Furniture &amp; Decor</h3>
                                </div>
                                <div class="widget widget-links">
                                    <ul>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">Lounge Seating</span></a>
                                        </li>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">File Cabinets</span></a>
                                        </li>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">Tables</span></a>
                                        </li>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">Indoor Lighting</span></a>
                                        </li>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">Office Chairs</span></a>
                                        </li>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">Adjustable Height Desks</span></a>
                                        </li>
                                        <li><a href="#"><i class="widget-categories-indicator"
                                                           data-feather="chevron-right"></i><span class="font-size-sm">Storage Units</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="nav-item dropdown mega-dropdown"><a class="nav-link dropdown-toggle" href="#"
                                                               data-toggle="dropdown">Home</a>
                    <div class="dropdown-menu">
                        <div class="dropdown-inner"><a class="dropdown-column text-decoration-0"
                                                       href="home-apparel.html"><img class="d-block img-thumbnail mb-2"
                                                                                     src="img/megamenu/home-apparel.jpg"
                                                                                     alt="Home Apparel Shop">
                            <div class="text-center font-weight-semibold text-dark">Home Apparel Shop</div>
                        </a><a class="dropdown-column text-decoration-0" href="home-electronics.html"><img
                                class="d-block img-thumbnail mb-2" src="img/megamenu/home-electronics.jpg"
                                alt="Home Electronics Store">
                            <div class="text-center font-weight-semibold text-dark">Home Electronics Store</div>
                        </a></div>
                    </div>
                </li>
                <li class="nav-item dropdown mega-dropdown"><a class="nav-link dropdown-toggle" href="#"
                                                               data-toggle="dropdown">Shop</a>
                    <div class="dropdown-menu">
                        <div class="dropdown-inner">
                            <div class="dropdown-column">
                                <div class="widget widget-links">
                                    <h3 class="widget-title">Shop layouts</h3>
                                    <ul>
                                        <li><a href="shop-style1-ls.html"><i class="widget-categories-indicator"
                                                                             data-feather="chevron-right"></i><span
                                                class="font-size-sm">Shop Style 1 - Left Sidebar</span></a></li>
                                        <li><a href="shop-style1-rs.html"><i class="widget-categories-indicator"
                                                                             data-feather="chevron-right"></i><span
                                                class="font-size-sm">Shop Style 1 - Right Sidebar</span></a></li>
                                        <li><a href="shop-style1-ft.html"><i class="widget-categories-indicator"
                                                                             data-feather="chevron-right"></i><span
                                                class="font-size-sm">Shop Style 1 - Filters Top</span></a></li>
                                        <li><a href="shop-style2-ls.html"><i class="widget-categories-indicator"
                                                                             data-feather="chevron-right"></i><span
                                                class="font-size-sm">Shop Style 2 - Left Sidebar</span></a></li>
                                        <li><a href="shop-style2-rs.html"><i class="widget-categories-indicator"
                                                                             data-feather="chevron-right"></i><span
                                                class="font-size-sm">Shop Style 2 - Right Sidebar</span></a></li>
                                        <li><a href="shop-style2-ft.html"><i class="widget-categories-indicator"
                                                                             data-feather="chevron-right"></i><span
                                                class="font-size-sm">Shop Style 2 - Filters Top</span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="dropdown-column">
                                <div class="widget widget-links">
                                    <h3 class="widget-title">Shop pages</h3>
                                    <ul>
                                        <li><a href="shop-categories-apparel.html"><i
                                                class="widget-categories-indicator"
                                                data-feather="chevron-right"></i><span class="font-size-sm">Shop Categories - Apparel</span></a>
                                        </li>
                                        <li><a href="shop-categories-electronics.html"><i
                                                class="widget-categories-indicator"
                                                data-feather="chevron-right"></i><span class="font-size-sm">Shop Categories - Electronics</span></a>
                                        </li>
                                        <li><a href="shop-single-apparel.html"><i class="widget-categories-indicator"
                                                                                  data-feather="chevron-right"></i><span
                                                class="font-size-sm">Product Page #1 - Apparel</span></a></li>
                                        <li><a href="shop-single-electronics.html"><i
                                                class="widget-categories-indicator"
                                                data-feather="chevron-right"></i><span class="font-size-sm">Product Page #2 - Electronics</span></a>
                                        </li>
                                        <li><a href="cart.html"><i class="widget-categories-indicator"
                                                                   data-feather="chevron-right"></i><span
                                                class="font-size-sm">Cart</span></a></li>
                                        <li><a href="checkout-details.html"><i class="widget-categories-indicator"
                                                                               data-feather="chevron-right"></i><span
                                                class="font-size-sm">Checkout - Details</span></a></li>
                                        <li><a href="checkout-shipping.html"><i class="widget-categories-indicator"
                                                                                data-feather="chevron-right"></i><span
                                                class="font-size-sm">Checkout - Shipping</span></a></li>
                                        <li><a href="checkout-payment.html"><i class="widget-categories-indicator"
                                                                               data-feather="chevron-right"></i><span
                                                class="font-size-sm">Checkout - Payment</span></a></li>
                                        <li><a href="checkout-review.html"><i class="widget-categories-indicator"
                                                                              data-feather="chevron-right"></i><span
                                                class="font-size-sm">Checkout - Review</span></a></li>
                                        <li><a href="checkout-complete.html"><i class="widget-categories-indicator"
                                                                                data-feather="chevron-right"></i><span
                                                class="font-size-sm">Checkout - Complete</span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="dropdown-column"><a class="d-block mx-auto" href="#"
                                                            style="max-width: 228px;"><img class="d-block"
                                                                                           src="img/megamenu/promo-banner.jpg"
                                                                                           alt="Promo banner"></a></div>
                        </div>
                    </div>
                </li>
                <li class="nav-item dropdown active"><a class="nav-link dropdown-toggle" href="#"
                                                        data-toggle="dropdown">Pages</a>
                    <ul class="dropdown-menu">
                        <li class="dropdown"><a class="dropdown-item dropdown-toggle" href="#" data-toggle="dropdown">User
                            Account</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="account-orders.html">Orders History</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="account-profile.html">Profile Settings</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="account-address.html">Account Addresses</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="account-payment.html">Payment Methods</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="account-wishlist.html">Wishlist</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="account-tickets.html">My Tickets</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="account-single-ticket.html">Single Ticket</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="">Sign In / Sign Up Page</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="account-password-recovery.html">Password Recovery</a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="about.html">About Us</a></li>
                        <li class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="contacts.html">Contacts</a></li>
                        <li class="dropdown-divider"></li>
                        <li class="dropdown"><a class="dropdown-item dropdown-toggle" href="#" data-toggle="dropdown">Help
                            Center</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="help-topics.html">Help Topics</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="help-single-topic.html">Single Topic</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="help-submit-request.html">Submit a Request</a></li>
                            </ul>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="product-comparison.html">Product Comparison</a></li>
                        <li class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="order-tracking.html">Order Tracking</a></li>
                        <li class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="404.html">404 Not Found</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#"
                                                 data-toggle="dropdown">Blog</a>
                    <ul class="dropdown-menu">
                        <li class="dropdown"><a class="dropdown-item dropdown-toggle" href="#" data-toggle="dropdown">Blog
                            Layout</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="blog-rs.html">Blog Right Sidebar</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="blog-ls.html">Blog Left Sidebar</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="blog-ns.html">Blog No Sidebar</a></li>
                            </ul>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li class="dropdown"><a class="dropdown-item dropdown-toggle" href="#" data-toggle="dropdown">Single
                            Post Layout</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="blog-single-rs.html">Post Right Sidebar</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="blog-single-ls.html">Post Left Sidebar</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="blog-single-ns.html">Post No Sidebar</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"><i
                        class="mr-1" data-feather="file-text"></i>Docs</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="docs/dev-setup.html">
                            <div class="d-flex py-1"><i class="mt-1 ml-n2" data-feather="file-text"
                                                        style="width: 1.4375rem; height: 1.4375rem;"></i>
                                <div class="ml-2"><span class="d-block mb-n1">Documentation</span><small
                                        class="text-muted">Kick-start customization</small></div>
                            </div>
                        </a></li>
                        <li class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="components/alerts.html">
                            <div class="d-flex py-1"><i class="mt-1 ml-n2" data-feather="grid"
                                                        style="width: 1.375rem; height: 1.375rem;"></i>
                                <div class="ml-2"><span class="d-block mb-n1">Components <span
                                        class='badge badge-pill badge-success'>40+</span></span><small
                                        class="text-muted">Faster page building</small></div>
                            </div>
                        </a></li>
                        <li class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="docs/changelog.html">
                            <div class="d-flex py-1"><i class="mt-1 ml-n2" data-feather="edit"
                                                        style="width: 1.375rem; height: 1.375rem;"></i>
                                <div class="ml-2"><span class="d-block mb-n1">Changelog <span
                                        class='badge badge-pill badge-warning'>v2.0</span></span><small
                                        class="text-muted">Regular updates</small></div>
                            </div>
                        </a></li>
                        <li class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="mailto:contact@createx.studio">
                            <div class="d-flex py-1"><i class="mt-1 ml-n2" data-feather="life-buoy"
                                                        style="width: 1.4375rem; height: 1.4375rem;"></i>
                                <div class="ml-2"><span class="d-block mb-n1">Support</span><small class="text-muted">contact@createx.studio</small>
                                </div>
                            </div>
                        </a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- navbar buttons-->
        <div class="navbar-btns">
            <div class="navbar-btns-inner">
                <div class="navbar-toggler navbar-btn collapsed" data-toggle="collapse" data-target="#menu"><i
                        class="mx-auto mb-1" data-feather="menu"></i>Menu
                </div>
                <a class="navbar-btn" href="#offcanvas-search" data-toggle="offcanvas"><i class="mx-auto mb-1"
                                                                                          data-feather="search"></i>Search</a><a
                    class="navbar-btn navbar-collapse-hidden" href="/" data-toggle="offcanvas"><i class="mx-auto mb-1"
                                                                                                  data-feather="log-in"></i>Sign
                In/Up</a><a class="navbar-btn" href="#offcanvas-cart" data-toggle="offcanvas"><span
                    class="d-block position-relative"><span class="navbar-btn-badge bg-primary text-light">4</span><i
                    class="mx-auto mb-1" data-feather="shopping-cart"></i>$325.00</span></a>
            </div>
        </div>
    </div>
</header>