<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="meta.jsp"></jsp:include>
    <title>TechStore | About Us</title>
    <jsp:include page="css.jsp"></jsp:include>
    <jsp:include page="util.jsp"></jsp:include>
</head>
<!-- Body-->
<body>

<jsp:include page="header.jsp"></jsp:include>
<!-- Page Content-->

<!-- Hero slider + Promo list-->
<section class="container px-3">
    <div class="mt-4 pt-lg-2 mb-4 mb-md-5">
        <div class="row">
            <!-- Categories-->
            <div class="col-lg-4 d-none d-lg-block">
                <div class="border px-4 py-4">
                    <ul class="list-unstyled mb-0">
                        <li class="border-bottom"><a class="d-flex align-items-center nav-link-inline pb-3" href="#" data-toggle="popover" data-placement="right" data-trigger="hover" data-html="true" data-content="&lt;img src=&quot;/img/shop/electronics/categories/01.jpg&quot; class=&quot;d-block mt-n2&quot; alt=&quot;Computers &amp; Accessories&quot;&gt;&lt;div class=&quot;text-center font-size-sm font-weight-semibold mt-n2 pb-3&quot;&gt;Starting from $149.80&lt;/div&gt;"><i class="text-primary opacity-60 mr-2 mt-1" data-feather="hard-drive" style="width: 1.25rem; height: 1.25rem;"></i><span>Computers &amp; Accessories<i class="ml-1" data-feather="chevron-right" style="width: 1rem; height: 1rem;"></i></span></a></li>
                        <li class="border-bottom"><a class="d-flex align-items-center nav-link-inline py-3" href="#" data-toggle="popover" data-placement="right" data-trigger="hover" data-html="true" data-content="&lt;img src=&quot;/img/shop/electronics/categories/02.jpg&quot; class=&quot;d-block mt-n2&quot; alt=&quot;TV, Video &amp; Audio&quot;&gt;&lt;div class=&quot;text-center font-size-sm font-weight-semibold pb-3&quot;&gt;Starting from $78.00&lt;/div&gt;"><i class="text-primary opacity-60 mr-2 mt-1" data-feather="monitor" style="width: 1.25rem; height: 1.25rem;"></i><span>TV, Video &amp; Audio<i class="ml-1" data-feather="chevron-right" style="width: 1rem; height: 1rem;"></i></span></a></li>
                        <li class="border-bottom"><a class="d-flex align-items-center nav-link-inline py-3" href="#" data-toggle="popover" data-placement="right" data-trigger="hover" data-html="true" data-content="&lt;img src=&quot;/img/shop/electronics/categories/03.jpg&quot; class=&quot;d-block mt-n2&quot; alt=&quot;Smartphones &amp; Tablets&quot;&gt;&lt;div class=&quot;text-center font-size-sm font-weight-semibold pb-3&quot;&gt;Starting from $127.00&lt;/div&gt;"><i class="text-primary opacity-60 mr-2 mt-1" data-feather="smartphone" style="width: 1.25rem; height: 1.25rem;"></i><span>Smartphones &amp; Tablets<i class="ml-1" data-feather="chevron-right" style="width: 1rem; height: 1rem;"></i></span></a></li>
                        <li class="border-bottom"><a class="d-flex align-items-center nav-link-inline py-3" href="#" data-toggle="popover" data-placement="right" data-trigger="hover" data-html="true" data-content="&lt;img src=&quot;/img/shop/electronics/categories/04.jpg&quot; class=&quot;d-block mt-n2&quot; alt=&quot;Photo Cameras&quot;&gt;&lt;div class=&quot;text-center font-size-sm font-weight-semibold pb-3&quot;&gt;Starting from $210.00&lt;/div&gt;"><i class="text-primary opacity-60 mr-2 mt-1" data-feather="camera" style="width: 1.25rem; height: 1.25rem;"></i><span>Photo Cameras<i class="ml-1" data-feather="chevron-right" style="width: 1rem; height: 1rem;"></i></span></a></li>
                        <li class="border-bottom"><a class="d-flex align-items-center nav-link-inline py-3" href="#" data-toggle="popover" data-placement="right" data-trigger="hover" data-html="true" data-content="&lt;img src=&quot;/img/shop/electronics/categories/09.jpg&quot; class=&quot;d-block mt-n2&quot; alt=&quot;Video Cameras&quot;&gt;&lt;div class=&quot;text-center font-size-sm font-weight-semibold mt-n1 pb-3&quot;&gt;Starting from $185.00&lt;/div&gt;"><i class="text-primary opacity-60 mr-2 mt-1" data-feather="video" style="width: 1.25rem; height: 1.25rem;"></i><span>Video Cameras<i class="ml-1" data-feather="chevron-right" style="width: 1rem; height: 1rem;"></i></span></a></li>
                        <li class="border-bottom"><a class="d-flex align-items-center nav-link-inline py-3" href="#" data-toggle="popover" data-placement="right" data-trigger="hover" data-html="true" data-content="&lt;img src=&quot;/img/shop/electronics/categories/05.jpg&quot; class=&quot;d-block mt-n2&quot; alt=&quot;Headphones&quot;&gt;&lt;div class=&quot;text-center font-size-sm font-weight-semibold pt-2 pb-3&quot;&gt;Starting from $35.99&lt;/div&gt;"><i class="text-primary opacity-60 mr-2 mt-1" data-feather="headphones" style="width: 1.25rem; height: 1.25rem;"></i><span>Headphones<i class="ml-1" data-feather="chevron-right" style="width: 1rem; height: 1rem;"></i></span></a></li>
                        <li class="border-bottom"><a class="d-flex align-items-center nav-link-inline py-3" href="#" data-toggle="popover" data-placement="right" data-trigger="hover" data-html="true" data-content="&lt;img src=&quot;/img/shop/electronics/categories/06.jpg&quot; class=&quot;d-block mt-n2&quot; alt=&quot;Wearable Electronics&quot;&gt;&lt;div class=&quot;text-center font-size-sm font-weight-semibold pt-2 pb-3&quot;&gt;Starting from $79.50&lt;/div&gt;"><i class="text-primary opacity-60 mr-2 mt-1" data-feather="watch" style="width: 1.25rem; height: 1.25rem;"></i><span>Wearable Electronics<i class="ml-1" data-feather="chevron-right" style="width: 1rem; height: 1rem;"></i></span></a></li>
                        <li class="border-bottom"><a class="d-flex align-items-center nav-link-inline py-3" href="#" data-toggle="popover" data-placement="right" data-trigger="hover" data-html="true" data-content="&lt;img src=&quot;/img/shop/electronics/categories/07.jpg&quot; class=&quot;d-block mt-n2&quot; alt=&quot;Printers &amp; Ink&quot;&gt;&lt;div class=&quot;text-center font-size-sm font-weight-semibold pt-2 pb-3&quot;&gt;Starting from $54.00&lt;/div&gt;"><i class="text-primary opacity-60 mr-2 mt-1" data-feather="printer" style="width: 1.25rem; height: 1.25rem;"></i><span>Printers &amp; Ink<i class="ml-1" data-feather="chevron-right" style="width: 1rem; height: 1rem;"></i></span></a></li>
                        <li class="border-bottom"><a class="d-flex align-items-center nav-link-inline py-3" href="#" data-toggle="popover" data-placement="right" data-trigger="hover" data-html="true" data-content="&lt;img src=&quot;/img/shop/electronics/categories/08.jpg&quot; class=&quot;d-block mt-n2&quot; alt=&quot;Video Games&quot;&gt;&lt;div class=&quot;text-center font-size-sm font-weight-semibold pt-2 pb-3&quot;&gt;Starting from $19.00&lt;/div&gt;"><i class="text-primary opacity-60 mr-2 mt-1" data-feather="crosshair" style="width: 1.25rem; height: 1.25rem;"></i><span>Video Games<i class="ml-1" data-feather="chevron-right" style="width: 1rem; height: 1rem;"></i></span></a></li>
                        <li class="border-bottom"><a class="d-flex align-items-center nav-link-inline py-3" href="#" data-toggle="popover" data-placement="right" data-trigger="hover" data-html="true" data-content="&lt;img src=&quot;/img/shop/electronics/categories/11.jpg&quot; class=&quot;d-block&quot; alt=&quot;Speakers &amp; Home Music&quot;&gt;&lt;div class=&quot;text-center font-size-sm font-weight-semibold pt-2 pb-3&quot;&gt;Starting from $63.00&lt;/div&gt;"><i class="text-primary opacity-60 mr-2 mt-1" data-feather="speaker" style="width: 1.25rem; height: 1.25rem;"></i><span>Speakers &amp; Home Music<i class="ml-1" data-feather="chevron-right" style="width: 1rem; height: 1rem;"></i></span></a></li>
                        <li><a class="d-flex align-items-center nav-link-inline pt-3" href="#" data-toggle="popover" data-placement="right" data-trigger="hover" data-html="true" data-content="&lt;img src=&quot;/img/shop/electronics/categories/10.jpg&quot; class=&quot;d-block mt-n2&quot; alt=&quot;HDD / SSD Data Storage&quot;&gt;&lt;div class=&quot;text-center font-size-sm font-weight-semibold pt-2 pb-3&quot;&gt;Starting from $24.60&lt;/div&gt;"><i class="text-primary opacity-60 mr-2 mt-1" data-feather="server" style="width: 1.25rem; height: 1.25rem;"></i><span>HDD / SSD Data Storage<i class="ml-1" data-feather="chevron-right" style="width: 1rem; height: 1rem;"></i></span></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-8">
                <!-- Hero slider-->
                <div class="bg-secondary bg-size-cover mb-grid-gutter" style="background-image: url(/img/home/electronics/hero-main-bg.jpg);">
                    <div class="owl-carousel trigger-carousel" data-owl-carousel="{ &quot;nav&quot;: true, &quot;dots&quot;: false, &quot;loop&quot;: true, &quot;autoHeight&quot;: true, &quot;autoplay&quot;: true, &quot;autoplayTimeout&quot;: 5500 }">
                        <div class="row align-items-center py-5">
                            <div class="col-md-5">
                                <div class="pl-3 pr-3 pl-md-5 pr-md-0 pt-4 pt-lg-5 pb-5 text-center text-md-left">
                                    <h3 class="mb-1">Google Home Smart Speaker</h3>
                                    <h4 class="font-weight-light opacity-70 pb-3">starting at $129.00</h4><a class="btn btn-primary" href="shop-style2-ls.html">Shop now<i class="ml-2" data-feather="arrow-right"></i></a>
                                </div>
                            </div>
                            <div class="col-md-7"><img class="d-block mx-auto" src="img/home/electronics/hero-slide01.png" alt="Smart Speaker"></div>
                        </div>
                        <div class="row align-items-center py-5">
                            <div class="col-md-5">
                                <div class="pl-3 pr-3 pl-md-5 pr-md-0 pt-4 pt-lg-5 pb-5 text-center text-md-left">
                                    <h3 class="mb-1">Modern Powerful Vaio Laptop</h3>
                                    <h4 class="font-weight-light opacity-70 pb-3">for only $1,459.99</h4><a class="btn btn-primary" href="shop-style2-ls.html">Shop now<i class="ml-2" data-feather="arrow-right"></i></a>
                                </div>
                            </div>
                            <div class="col-md-7"><img class="d-block mx-auto" src="img/home/electronics/hero-slide02.png" alt="Vaio Laptop"></div>
                        </div>
                        <div class="row align-items-center py-5">
                            <div class="col-md-5">
                                <div class="pl-3 pr-3 pl-md-5 pr-md-0 pt-4 pt-lg-5 pb-5 text-center text-md-left">
                                    <h3 class="mb-1">Wireless Beats Studio by Dr.Dre</h3>
                                    <h4 class="font-weight-light opacity-70 pb-3">starting at $349.50</h4><a class="btn btn-primary" href="shop-style2-ls.html">Shop now<i class="ml-2" data-feather="arrow-right"></i></a>
                                </div>
                            </div>
                            <div class="col-md-7"><img class="d-block mx-auto" src="img/home/electronics/hero-slide03.png" alt="Wireless Beats"></div>
                        </div>
                    </div>
                </div>
                <!-- Offers carousel-->
                <div class="owl-carousel" data-owl-carousel="{ &quot;nav&quot;: false, &quot;dots&quot;: true, &quot;margin&quot;: 30, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1},&quot;565&quot;:{&quot;items&quot;:2},&quot;850&quot;:{&quot;items&quot;:3},&quot;992&quot;:{&quot;items&quot;:2},&quot;1200&quot;:{&quot;items&quot;:3}} }"><a class="media align-items-center bg-faded-info text-decoration-0" href="shop-style2-ls.html"><img class="mr-1" src="img/home/electronics/banner-sm01.png" width="125" alt="Banner">
                    <div class="media-body py-2 pr-2">
                        <h5 class="text-body mb-1"><span class="font-weight-light">Next Gen <strong>Video</strong> with <strong>360 Cam</strong></span></h5><span class="text-info font-size-sm font-weight-semibold">Shop now<i data-feather="chevron-right" style="width: 1rem; height: 1rem;"></i></span>
                    </div></a><a class="media align-items-center bg-faded-warning text-decoration-0" href="shop-style2-ls.html"><img class="mr-1" src="img/home/electronics/banner-sm02.png" width="125" alt="Banner">
                    <div class="media-body py-2 pr-2">
                        <h5 class="text-body mb-1"><span class="font-weight-light">Top Rated <strong>Gadgets</strong> are on <strong>Sale</strong></span></h5><span class="text-warning font-size-sm font-weight-semibold">Shop now<i data-feather="chevron-right" style="width: 1rem; height: 1rem;"></i></span>
                    </div></a><a class="media align-items-center bg-faded-success text-decoration-0" href="shop-style2-ls.html"><img class="mr-1" src="img/home/electronics/banner-sm03.png" width="125" alt="Banner">
                    <div class="media-body py-2 pr-2">
                        <h5 class="text-body mb-1"><span class="font-weight-light">Catch Big <strong>Deals</strong> on <strong>Earbuds</strong></span></h5><span class="text-success font-size-sm font-weight-semibold">Shop now<i data-feather="chevron-right" style="width: 1rem; height: 1rem;"></i></span>
                    </div></a></div>
            </div>
        </div>
    </div>
    <hr class="mt-4">
</section>
<!-- Featured products grid-->
<section class="container px-3 pt-4 mt-3">
    <div class="d-flex flex-wrap justify-content-between align-items-center pb-2">
        <h2 class="h3 mb-3">Featured products</h2><a class="btn btn-outline-primary btn-sm border-0 mb-3" href="shop-style2-ls.html">More products<i class="ml-1 mr-n2" data-feather="chevron-right"></i></a>
    </div>
    <div class="row no-gutters">
        <!-- Product-->
        <div class="col-lg-3 col-sm-4 col-6 border border-collapse">
            <div class="product-card">
                <div class="product-thumb"><a class="product-thumb-link" href="shop-single-electronics.html"></a><span class="product-wishlist-btn" data-toggle="tooltip" data-placement="left" title="Add to wishlist"><i data-feather="heart"></i></span><img src="img/shop/electronics/01.jpg" alt="Product"></div>
                <div class="product-card-body">
                    <div class="d-flex flex-wrap justify-content-between pb-1"><a class="product-meta" href="#">Headphones</a>
                        <div class="star-rating"><span class="sr-label mr-1">4.7</span><i class="sr-star active" data-feather="star"></i></div>
                    </div>
                    <h3 class="product-card-title"><a href="shop-single-electronics.html">Sony WH-CH700N Wireless Noise Canceling Headphones, Black</a></h3><span class="text-primary">$198.00</span>
                </div>
                <div class="product-card-body body-hidden pt-2">
                    <button class="btn btn-primary btn-sm btn-block" type="button" data-toggle="toast" data-target="#cart-toast">Add to cart</button><a class="quick-view-btn" href="#" data-toggle="toast" data-target="#compare-toast"><i class="mr-1" data-feather="repeat"></i>Compare</a>
                    <ul class="font-size-sm opacity-80 pl-4 pt-2 mb-2">
                        <li>Digital noise cancelling</li>
                        <li>AI powered</li>
                        <li>Hands free calling</li>
                        <li>Long battery life</li>
                        <li>Wireless bluetooth</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Product-->
        <div class="col-lg-3 col-sm-4 col-6 border border-collapse">
            <div class="product-card">
                <div class="product-thumb"><a class="product-thumb-link" href="shop-single-electronics.html"></a><span class="product-wishlist-btn" data-toggle="tooltip" data-placement="left" title="Add to wishlist"><i data-feather="heart"></i></span><img src="img/shop/electronics/02.jpg" alt="Product"></div>
                <div class="product-card-body">
                    <div class="d-flex flex-wrap justify-content-between pb-1"><a class="product-meta" href="#">Computers</a>
                        <div class="star-rating"><span class="sr-label mr-1">3.9</span><i class="sr-star active" data-feather="star"></i></div>
                    </div>
                    <h3 class="product-card-title"><a href="shop-single-electronics.html">Apple AirPort Extreme Base Station ME918LL (Refurbished)</a></h3><span class="text-primary">$129.00</span>
                </div>
                <div class="product-card-body body-hidden pt-2">
                    <button class="btn btn-primary btn-sm btn-block" type="button" data-toggle="toast" data-target="#cart-toast">Add to cart</button><a class="quick-view-btn" href="#" data-toggle="toast" data-target="#compare-toast"><i class="mr-1" data-feather="repeat"></i>Compare</a>
                    <ul class="font-size-sm opacity-80 pl-4 pt-2 mb-2">
                        <li>Ultrafast 802.11ac Wi-Fi</li>
                        <li>Easy setup for iOS and OS X</li>
                        <li>Share your hard drive</li>
                        <li>Compatibility and security</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Product-->
        <div class="col-lg-3 col-sm-4 col-6 border border-collapse">
            <div class="product-card">
                <div class="product-thumb"><a class="product-thumb-link" href="shop-single-electronics.html"></a><span class="product-wishlist-btn" data-toggle="tooltip" data-placement="left" title="Add to wishlist"><i data-feather="heart"></i></span><img src="img/shop/electronics/11.jpg" alt="Product"></div>
                <div class="product-card-body">
                    <div class="d-flex flex-wrap justify-content-between pb-1"><a class="product-meta" href="#">TV, Video &amp; Audio</a></div>
                    <h3 class="product-card-title"><a href="shop-single-electronics.html">SONY Smart TV LED 49" Ultra HD 4K</a></h3><span class="text-muted">Out of stock</span>
                </div>
                <div class="product-card-body body-hidden pt-2"><a class="btn btn-primary btn-sm btn-block" href="shop-single-electronics.html">Pre-order</a><a class="quick-view-btn" href="#" data-toggle="toast" data-target="#compare-toast"><i class="mr-1" data-feather="repeat"></i>Compare</a>
                    <ul class="font-size-sm opacity-80 pl-4 pt-2 mb-2">
                        <li>Beyond high definition: 4K HDTV</li>
                        <li>X1 Extreme Processor</li>
                        <li>Voice assistant</li>
                        <li>Multiple inputs: 4 HDMI, 2 USB2.0, 1 USB3.0</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Product-->
        <div class="col-lg-3 col-sm-4 col-6 border border-collapse">
            <div class="product-card">
                <div class="product-thumb"><a class="product-thumb-link" href="shop-single-electronics.html"></a><span class="badge badge-danger rounded-0">Sale -40%</span><span class="product-wishlist-btn" data-toggle="tooltip" data-placement="left" title="Add to wishlist"><i data-feather="heart"></i></span><img src="img/shop/electronics/04.jpg" alt="Product"></div>
                <div class="product-card-body">
                    <div class="d-flex flex-wrap justify-content-between pb-1"><a class="product-meta" href="#">Smart home</a>
                        <div class="star-rating"><span class="sr-label mr-1">4.2</span><i class="sr-star active" data-feather="star"></i></div>
                    </div>
                    <h3 class="product-card-title"><a href="shop-single-electronics.html">All-new Echo Dot (3rd Gen) - Smart speaker with Alexa - Charcoal</a></h3><span class="text-primary">
                <del class="text-muted mr-1">$49.99</del>$29.99</span>
                </div>
                <div class="product-card-body body-hidden pt-2">
                    <button class="btn btn-primary btn-sm btn-block" type="button" data-toggle="toast" data-target="#cart-toast">Add to cart</button><a class="quick-view-btn" href="#" data-toggle="toast" data-target="#compare-toast"><i class="mr-1" data-feather="repeat"></i>Compare</a>
                    <ul class="font-size-sm opacity-80 pl-4 pt-2 mb-2">
                        <li>4096x2048@24fps 360 video/ 15MP</li>
                        <li>360 still image</li>
                        <li>Dual CMOS 8.4MP, Dual F2.2 </li>
                        <li>Built-in 1,160mAh</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Product-->
        <div class="col-lg-3 col-sm-4 col-6 border border-collapse">
            <div class="product-card">
                <div class="product-thumb"><a class="product-thumb-link" href="shop-single-electronics.html"></a><span class="product-wishlist-btn" data-toggle="tooltip" data-placement="left" title="Add to wishlist"><i data-feather="heart"></i></span><img src="img/shop/electronics/05.jpg" alt="Product"></div>
                <div class="product-card-body">
                    <div class="d-flex flex-wrap justify-content-between pb-1"><a class="product-meta" href="#">Wearable electronics</a>
                        <div class="star-rating"><span class="sr-label mr-1">3.6</span><i class="sr-star active" data-feather="star"></i></div>
                    </div>
                    <h3 class="product-card-title"><a href="shop-single-electronics.html">Fitbit Ionic GPS Smart Watch, Charcoal/Smoke Gray, One Size</a></h3><span class="text-primary">$317.40</span>
                </div>
                <div class="product-card-body body-hidden pt-2">
                    <button class="btn btn-primary btn-sm btn-block" type="button" data-toggle="toast" data-target="#cart-toast">Add to cart</button><a class="quick-view-btn" href="#" data-toggle="toast" data-target="#compare-toast"><i class="mr-1" data-feather="repeat"></i>Compare</a>
                    <ul class="font-size-sm opacity-80 pl-4 pt-2 mb-2">
                        <li>Track your all-day activity</li>
                        <li>Use 15+ exercise modes</li>
                        <li>Access your favorite apps for sport</li>
                        <li>Get call, text, calendar notifications</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Product-->
        <div class="col-lg-3 col-sm-4 col-6 border border-collapse">
            <div class="product-card">
                <div class="product-thumb"><a class="product-thumb-link" href="shop-single-electronics.html"></a><span class="product-wishlist-btn" data-toggle="tooltip" data-placement="left" title="Add to wishlist"><i data-feather="heart"></i></span><img src="img/shop/electronics/06.jpg" alt="Product"></div>
                <div class="product-card-body">
                    <div class="d-flex flex-wrap justify-content-between pb-1"><a class="product-meta" href="#">Smartphones</a>
                        <div class="star-rating"><span class="sr-label mr-1">4.5</span><i class="sr-star active" data-feather="star"></i></div>
                    </div>
                    <h3 class="product-card-title"><a href="shop-single-electronics.html">Apple - iPhone XS 128GB - Space Gray</a></h3><span class="text-primary">$1,049.99</span>
                </div>
                <div class="product-card-body body-hidden pt-2">
                    <button class="btn btn-primary btn-sm btn-block" type="button" data-toggle="toast" data-target="#cart-toast">Add to cart</button><a class="quick-view-btn" href="#" data-toggle="toast" data-target="#compare-toast"><i class="mr-1" data-feather="repeat"></i>Compare</a>
                    <ul class="font-size-sm opacity-80 pl-4 pt-2 mb-2">
                        <li>5.8-inch Super Retina display </li>
                        <li>IP68 dust and water resistant</li>
                        <li>12MP dual cameras</li>
                        <li>A12 Bionic with next-generation Neural Engine</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Product-->
        <div class="col-lg-3 col-sm-4 col-6 border border-collapse">
            <div class="product-card">
                <div class="product-thumb"><a class="product-thumb-link" href="shop-single-electronics.html"></a><span class="badge badge-success rounded-0">&starf; Top seller</span><span class="product-wishlist-btn" data-toggle="tooltip" data-placement="left" title="Add to wishlist"><i data-feather="heart"></i></span><img src="img/shop/electronics/07.jpg" alt="Product"></div>
                <div class="product-card-body">
                    <div class="d-flex flex-wrap justify-content-between pb-1"><a class="product-meta" href="#">Wearable electronics</a>
                        <div class="star-rating"><span class="sr-label mr-1">4.3</span><i class="sr-star active" data-feather="star"></i></div>
                    </div>
                    <h3 class="product-card-title"><a href="shop-single-electronics.html">Apple Watch Series 4 (GPS, 44mm) - Silver Aluminium Case</a></h3><span class="text-primary">$399.00</span>
                </div>
                <div class="product-card-body body-hidden pt-2">
                    <button class="btn btn-primary btn-sm btn-block" type="button" data-toggle="toast" data-target="#cart-toast">Add to cart</button><a class="quick-view-btn" href="#" data-toggle="toast" data-target="#compare-toast"><i class="mr-1" data-feather="repeat"></i>Compare</a>
                    <ul class="font-size-sm opacity-80 pl-4 pt-2 mb-2">
                        <li>GPS</li>
                        <li>Over 30% larger display</li>
                        <li>Electrical and optical heart sensors</li>
                        <li>Digital Crown with haptic feedback</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Product-->
        <div class="col-lg-3 col-sm-4 col-6 border border-collapse">
            <div class="product-card">
                <div class="product-thumb"><a class="product-thumb-link" href="shop-single-electronics.html"></a><span class="product-wishlist-btn" data-toggle="tooltip" data-placement="left" title="Add to wishlist"><i data-feather="heart"></i></span><img src="img/shop/electronics/08.jpg" alt="Product"></div>
                <div class="product-card-body">
                    <div class="d-flex flex-wrap justify-content-between pb-1"><a class="product-meta" href="#">Computers</a></div>
                    <h3 class="product-card-title"><a href="shop-single-electronics.html">Acer R11 11.6" Convertible 2-in-1 HD Touchscreen (2019)</a></h3><span class="text-primary">$339.00</span>
                </div>
                <div class="product-card-body body-hidden pt-2">
                    <button class="btn btn-primary btn-sm btn-block" type="button" data-toggle="toast" data-target="#cart-toast">Add to cart</button><a class="quick-view-btn" href="#" data-toggle="toast" data-target="#compare-toast"><i class="mr-1" data-feather="repeat"></i>Compare</a>
                    <ul class="font-size-sm opacity-80 pl-4 pt-2 mb-2">
                        <li>4GB DD3; 32 GB eMMC</li>
                        <li>11.6" HD Widescreen LED-backlit Display</li>
                        <li>Multi-touch screen</li>
                        <li>Intel Celeron N3150 Quad-Core Processor 1.6GHz</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Promo banner-->
<section class="container py-4 my-3 px-3">
    <div class="bg-faded-info position-relative py-4">
        <div class="row align-items-center">
            <div class="col-md-5"><span class="badge badge-danger ml-5">Limited offer</span>
                <div class="pt-4 pl-4 pl-sm-5">
                    <h3 class="font-family-body font-weight-light mb-2">All new</h3>
                    <h2 class="mb-2 pb-1">iPad Pro 2019</h2>
                    <h5 class="font-family-body font-weight-light mb-3">at discounted price. Hurry up!</h5>
                    <div class="countdown h4 mb-4" data-date-time="10/10/2020 12:00" data-labels="{&quot;label-day&quot;: &quot;d&quot;, &quot;label-hour&quot;: &quot;h&quot;, &quot;label-minute&quot;: &quot;m&quot;, &quot;label-second&quot;: &quot;s&quot;}"></div><a class="btn btn-primary" href="shop-style2-ls.html">View offers<i class="ml-2" data-feather="arrow-right"></i></a>
                </div>
            </div>
            <div class="col-md-7"><img class="mx-auto" src="img/home/electronics/offer.jpg" alt="Promo banner"></div>
        </div>
    </div>
</section>
<!-- Brands carousel-->
<section class="container px-3 pb-4">
    <div class="owl-carousel border-right" data-owl-carousel="{ &quot;nav&quot;: false, &quot;dots&quot;: false, &quot;autoplay&quot;: true, &quot;autoplayTimeout&quot;: 3500, &quot;loop&quot;: true, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1},&quot;360&quot;:{&quot;items&quot;:2},&quot;600&quot;:{&quot;items&quot;:3},&quot;991&quot;:{&quot;items&quot;:4},&quot;1200&quot;:{&quot;items&quot;:4}} }"><a class="d-block bg-white border py-4 py-sm-5 px-2" href="#" style="margin-right: -.0625rem;"><img class="d-block mx-auto" src="img/shop/electronics/brands/01.png" style="width: 165px;" alt="Brand"></a><a class="d-block bg-white border py-4 py-sm-5 px-2" href="#" style="margin-right: -.0625rem;"><img class="d-block mx-auto" src="img/shop/electronics/brands/02.png" style="width: 165px;" alt="Brand"></a><a class="d-block bg-white border py-4 py-sm-5 px-2" href="#" style="margin-right: -.0625rem;"><img class="d-block mx-auto" src="img/shop/electronics/brands/05.png" style="width: 165px;" alt="Brand"></a><a class="d-block bg-white border py-4 py-sm-5 px-2" href="#" style="margin-right: -.0625rem;"><img class="d-block mx-auto" src="img/shop/electronics/brands/04.png" style="width: 165px;" alt="Brand"></a><a class="d-block bg-white border py-4 py-sm-5 px-2" href="#" style="margin-right: -.0625rem;"><img class="d-block mx-auto" src="img/shop/electronics/brands/03.png" style="width: 165px;" alt="Brand"></a><a class="d-block bg-white border py-4 py-sm-5 px-2" href="#" style="margin-right: -.0625rem;"><img class="d-block mx-auto" src="img/shop/electronics/brands/06.png" style="width: 165px;" alt="Brand"></a><a class="d-block bg-white border py-4 py-sm-5 px-2" href="#" style="margin-right: -.0625rem;"><img class="d-block mx-auto" src="img/shop/electronics/brands/07.png" style="width: 165px;" alt="Brand"></a><a class="d-block bg-white border py-4 py-sm-5 px-2" href="#" style="margin-right: -.0625rem;"><img class="d-block mx-auto" src="img/shop/electronics/brands/08.png" style="width: 165px;" alt="Brand"></a></div>
</section>
<!-- Product widgets-->
<section class="container px-3 pt-2 pb-4 mb-md-2">
    <div class="row">
        <div class="col-md-4 col-sm-6 mb-2 py-3">
            <div class="widget widget-featured-entries">
                <h3 class="widget-title font-size-lg">Best sellers</h3>
                <div class="media"><a class="featured-entry-thumb" href="#"><img src="img/shop/widget/04.jpg" width="64" alt="Product thumb"></a>
                    <div class="media-body">
                        <h6 class="featured-entry-title"><a href="#">Sennheiser HD 650 Pro</a></h6>
                        <div class="star-rating"><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star" data-feather="star"></i>
                        </div>
                        <p class="featured-entry-meta">$259.99</p>
                    </div>
                </div>
                <div class="media"><a class="featured-entry-thumb" href="#"><img src="img/shop/widget/05.jpg" width="64" alt="Product thumb"></a>
                    <div class="media-body">
                        <h6 class="featured-entry-title"><a href="#">Amazon Cloud Cam Security</a></h6>
                        <div class="star-rating"><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star" data-feather="star"></i><i class="sr-star" data-feather="star"></i>
                        </div>
                        <p class="featured-entry-meta">$119.99</p>
                    </div>
                </div>
                <div class="media"><a class="featured-entry-thumb" href="#"><img src="img/shop/widget/06.jpg" width="64" alt="Product thumb"></a>
                    <div class="media-body">
                        <h6 class="featured-entry-title"><a href="#">Samsung Galaxy S10 128GB</a></h6>
                        <div class="star-rating"><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i>
                        </div>
                        <p class="featured-entry-meta">$799.00</p>
                    </div>
                </div>
                <div class="media"><a class="featured-entry-thumb" href="#"><img src="img/shop/widget/14.jpg" width="64" alt="Product thumb"></a>
                    <div class="media-body">
                        <h6 class="featured-entry-title"><a href="#">Xiaomi Mi Box S TV Box</a></h6>
                        <div class="star-rating"><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star" data-feather="star"></i>
                        </div>
                        <p class="featured-entry-meta">
                            <del class="text-muted mr-1">90.43</del>$68.99
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-sm-6 mb-2 py-3">
            <div class="widget widget-featured-entries">
                <h3 class="widget-title font-size-lg">New arrivals</h3>
                <div class="media"><a class="featured-entry-thumb" href="#"><img src="img/shop/widget/15.jpg" width="64" alt="Product thumb"></a>
                    <div class="media-body">
                        <h6 class="featured-entry-title"><a href="#">Apple iMac (27-inch Retina 5K</a></h6>
                        <p class="featured-entry-meta">$1,949.00</p>
                    </div>
                </div>
                <div class="media"><a class="featured-entry-thumb" href="#"><img src="img/shop/widget/17.jpg" width="64" alt="Product thumb"></a>
                    <div class="media-body">
                        <h6 class="featured-entry-title"><a href="#">HP Laserjet Pro All in One</a></h6>
                        <p class="featured-entry-meta">$428.60</p>
                    </div>
                </div>
                <div class="media"><a class="featured-entry-thumb" href="#"><img src="img/shop/widget/16.jpg" width="64" alt="Product thumb"></a>
                    <div class="media-body">
                        <h6 class="featured-entry-title"><a href="#">PS4 Dual Shock Controller Charger</a></h6>
                        <p class="featured-entry-meta">
                            <del class="text-muted mr-1">16.47</del>$14.97
                        </p>
                    </div>
                </div>
                <div class="media"><a class="featured-entry-thumb" href="#"><img src="img/shop/widget/18.jpg" width="64" alt="Product thumb"></a>
                    <div class="media-body">
                        <h6 class="featured-entry-title"><a href="#">Apple Watch Series 4 Silver</a></h6>
                        <p class="featured-entry-meta">$399.00</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-sm-6 mb-2 py-3">
            <div class="widget widget-featured-entries">
                <h3 class="widget-title font-size-lg">Top rated</h3>
                <div class="media"><a class="featured-entry-thumb" href="#"><img src="img/shop/widget/19.jpg" width="64" alt="Product thumb"></a>
                    <div class="media-body">
                        <h6 class="featured-entry-title"><a href="#">Samsung Galaxy S9 Plus 128GB</a></h6>
                        <div class="star-rating"><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i>
                        </div>
                        <p class="featured-entry-meta">
                            <del class="text-muted mr-1">859.99</del>$749.99
                        </p>
                    </div>
                </div>
                <div class="media"><a class="featured-entry-thumb" href="#"><img src="img/shop/widget/21.jpg" width="64" alt="Product thumb"></a>
                    <div class="media-body">
                        <h6 class="featured-entry-title"><a href="#">Edifier Bluetooth Headphones</a></h6>
                        <div class="star-rating"><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i>
                        </div>
                        <p class="featured-entry-meta">$98.75</p>
                    </div>
                </div>
                <div class="media"><a class="featured-entry-thumb" href="#"><img src="img/shop/widget/20.jpg" width="64" alt="Product thumb"></a>
                    <div class="media-body">
                        <h6 class="featured-entry-title"><a href="#">Samsung Gear 360 (2017 Edition)</a></h6>
                        <div class="star-rating"><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i>
                        </div>
                        <p class="featured-entry-meta">$107.95</p>
                    </div>
                </div>
                <div class="media"><a class="featured-entry-thumb" href="#"><img src="img/shop/widget/22.jpg" width="64" alt="Product thumb"></a>
                    <div class="media-body">
                        <h6 class="featured-entry-title"><a href="#">Nikon COOLPIX Digital Camera</a></h6>
                        <div class="star-rating"><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i><i class="sr-star active" data-feather="star"></i>
                        </div>
                        <p class="featured-entry-meta">
                            <del class="text-muted mr-1">249.00</del>$210.00
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- YouTube feed-->
<section class="container px-3 pb-5 mb-md-2">
    <div class="border p-3">
        <div class="row">
            <div class="col-md-4 mb-3 mb-md-0">
                <div class="bg-secondary p-5 text-center"><img class="d-block mb-4 mx-auto" src="img/home/electronics/yt-logo.png" width="120" alt="YouTube">
                    <div class="media justify-content-center align-items-center mb-4"><img class="mr-2" src="img/home/electronics/yt-subscribers.png" width="126" alt="YouTube Subscribers"><span class="font-size-sm font-weight-semibold">350k+</span></div><a class="btn btn-danger btn-sm mb-3" href="#"><i class="mr-2" data-feather="user-plus"></i>Subscribe*</a>
                    <p class="font-size-sm mb-0">*View latest gadgets reviews available for purchase in our store.</p>
                </div>
            </div>
            <div class="col-md-8">
                <div class="d-flex flex-wrap justify-content-between align-items-center pt-3 pb-2">
                    <h2 class="h4 mb-3">Latest videos from MStore channel</h2><a class="btn btn-outline-primary btn-sm border-0 mb-3" href="#">More videos<i class="ml-1 mr-n2" data-feather="chevron-right"></i></a>
                </div>
                <div class="row no-gutters">
                    <div class="col-lg-4 col-6 mb-3"><a class="d-block text-decoration-0 px-2" href="https://www.youtube.com/embed/vS93u75NnPo" data-fancybox="videos" data-width="1000" data-height="563" data-options="{&quot;caption&quot;: &quot;5 New Cool Gadgets You Must See on Amazon 2019 - Cheap Budget&quot;}">
                        <div class="video-cover mb-2"><span class="badge badge-dark">6:16</span><img class="w-100" src="img/home/electronics/video-cover01.jpg" alt="Video cover"></div>
                        <h6 class="font-size-sm font-weight-bold pt-1">5 New Cool Gadgets You Must See on Amazon 2019 - Cheap Budget</h6></a></div>
                    <div class="col-lg-4 col-6 mb-3"><a class="d-block text-decoration-0 px-2" href="https://www.youtube.com/embed/B6LaYgGogf0" data-fancybox="videos" data-width="1000" data-height="563" data-options="{&quot;caption&quot;: &quot;5 Super Useful Gadgets on Amazon You Must Have in 2019&quot;}">
                        <div class="video-cover mb-2"><span class="badge badge-dark">7:27</span><img class="w-100" src="img/home/electronics/video-cover02.jpg" alt="Video cover"></div>
                        <h6 class="font-size-sm font-weight-bold pt-1">5 Super Useful Gadgets on Amazon You Must Have in 2019</h6></a></div>
                    <div class="col-lg-4 col-6 mb-3"><a class="d-block text-decoration-0 px-2" href="https://www.youtube.com/embed/kB-ROfRS9V4" data-fancybox="videos" data-width="1000" data-height="563" data-options="{&quot;caption&quot;: &quot;Top 5 New Amazing Gadgets on Amazon You Must See 2019&quot;}">
                        <div class="video-cover mb-2"><span class="badge badge-dark">6:20</span><img class="w-100" src="img/home/electronics/video-cover03.jpg" alt="Video cover"></div>
                        <h6 class="font-size-sm font-weight-bold pt-1">Top 5 New Amazing Gadgets on Amazon You Must See 2019</h6></a></div>
                    <div class="col-lg-4 col-6 mb-3 d-lg-none"><a class="d-block text-decoration-0 px-2" href="https://www.youtube.com/embed/sJK67XXE_Rg" data-fancybox="videos" data-width="1000" data-height="563" data-options="{&quot;caption&quot;: &quot;5 Amazing Construction Inventions and Working Tools Available...&quot;}">
                        <div class="video-cover mb-2"><span class="badge badge-dark">6:11</span><img class="w-100" src="img/home/electronics/video-cover04.jpg" alt="Video cover"></div>
                        <h6 class="font-size-sm font-weight-bold pt-1">5 Amazing Construction Inventions and Working Tools Available...</h6></a></div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Footer-->
<jsp:include page="footer.jsp"></jsp:include>

<!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
<jsp:include page="js.jsp"></jsp:include>
</body>
</html>