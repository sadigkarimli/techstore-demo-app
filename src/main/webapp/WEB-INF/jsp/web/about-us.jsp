<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 11/20/19
  Time: 9:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="meta.jsp"></jsp:include>
    <title>TechStore | Qeydiyyat</title>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <jsp:include page="css.jsp"></jsp:include>
    <jsp:include page="util.jsp"></jsp:include>
</head>
<!-- Body-->
<body>
<!-- Google Tag Manager (noscript)-->


<!-- Navbar -->
<jsp:include page="header.jsp"></jsp:include>

<!-- Page Content-->
<div class="container-fluid px-0">
    <!-- Row-->
    <div class="row no-gutters">
        <div class="col-md-6 bg-position-center bg-size-cover bg-secondary" style="min-height: 15rem; background-image: url(img/about/01.jpg);"><span class="split-section-arrow arrow-left"></span></div>
        <div class="col-md-6 px-3 px-md-5 py-5">
            <div class="mx-auto py-lg-5" style="max-width: 35rem;">
                <h2 class="h3 pb-3">Search, Select, Buy online</h2>
                <p class="pb-3 opacity-75">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id purus at risus pellentesque faucibus a quis eros. In eu fermentum leo. Integer ut eros lacus. Proin ut accumsan leo. Morbi vitae est eget dolor consequat aliquam eget quis dolor. Mauris rutrum fermentum erat, at euismod lorem pharetra nec. Duis erat lectus, ultrices euismod sagittis at, pharetra eu nisl. Phasellus id ante at velit tincidunt hendrerit. Aenean dolor dolor tristique nec.</p><a class="btn btn-pill btn-outline-primary" href="shop-style1-ls.html">View products<i class="ml-1" data-feather="arrow-right"></i></a>
            </div>
        </div>
    </div>
    <!-- Row-->
    <div class="row no-gutters">
        <div class="col-md-6 bg-position-center bg-size-cover bg-secondary order-md-2" style="min-height: 15rem; background-image: url(img/about/02.jpg);"><span class="split-section-arrow arrow-right"></span></div>
        <div class="col-md-6 px-3 px-md-5 py-5 order-md-1">
            <div class="mx-auto py-lg-5" style="max-width: 35rem;">
                <h2 class="h3 pb-3">Fast delivery worldwide</h2>
                <p class="pb-3 opacity-75">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id purus at risus pellentesque faucibus a quis eros. In eu fermentum leo. Integer ut eros lacus. Proin ut accumsan leo. Morbi vitae est eget dolor consequat aliquam eget quis dolor. Mauris rutrum fermentum erat, at euismod lorem pharetra nec. Duis erat lectus, ultrices euismod sagittis at, pharetra eu nisl. Phasellus id ante at velit tincidunt hendrerit. Aenean dolor dolor tristique nec.</p><a class="btn btn-pill btn-outline-primary" href="about.html#">Shipping details<i class="ml-1" data-feather="arrow-right"></i></a>
            </div>
        </div>
    </div>
    <!-- Row-->
    <div class="row no-gutters">
        <div class="col-md-6 bg-position-center bg-size-cover bg-secondary" style="min-height: 15rem; background-image: url(img/about/03.jpg);"><span class="split-section-arrow arrow-left"></span></div>
        <div class="col-md-6 px-3 px-md-5 py-5">
            <div class="mx-auto py-lg-5" style="max-width: 35rem;">
                <h2 class="h3 pb-3">Great mobile app. Shop on the go</h2>
                <p class="pb-3 opacity-75">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id purus at risus pellentesque faucibus a quis eros. In eu fermentum leo. Integer ut eros lacus. Proin ut accumsan leo. Morbi vitae est eget dolor consequat aliquam eget quis dolor. Mauris rutrum fermentum erat, at euismod. Duis erat lectus, ultrices euismod sagittis at dolor tristique nec.</p><a class="market-btn apple-btn mr-3 mb-3" href="about.html#" role="button"><span class="market-button-subtitle">Download on the</span><span class="market-button-title">App Store</span></a><a class="market-btn google-btn mr-3 mb-3" href="about.html#" role="button"><span class="market-button-subtitle">Download on the</span><span class="market-button-title">Google Play</span></a>
            </div>
        </div>
    </div>
    <!-- Row-->
    <div class="row no-gutters">
        <div class="col-md-6 bg-position-center bg-size-cover bg-secondary order-md-2" style="min-height: 15rem; background-image: url(img/about/04.jpg);"><span class="split-section-arrow arrow-right"></span></div>
        <div class="col-md-6 px-3 px-md-5 py-5 order-md-1">
            <div class="mx-auto py-lg-5" style="max-width: 35rem;">
                <h2 class="h3 pb-3">Shop offline. Cozy outlet stores</h2>
                <p class="pb-3 opacity-75">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id purus at risus pellentesque faucibus a quis eros. In eu fermentum leo. Integer ut eros lacus. Proin ut accumsan leo. Morbi vitae est eget dolor consequat aliquam eget quis dolor. Mauris rutrum fermentum erat, at euismod lorem pharetra nec. Duis erat lectus, ultrices euismod sagittis at, pharetra eu nisl. Phasellus id ante at velit tincidunt hendrerit. Aenean dolor dolor tristique nec.</p><a class="btn btn-pill btn-outline-primary" href="contacts.html">See outlet stores<i class="ml-1" data-feather="arrow-right"></i></a>
            </div>
        </div>
    </div>
    <!-- Row-->
    <div class="row no-gutters">
        <div class="col-md-6 bg-position-center bg-size-cover bg-secondary" style="min-height: 15rem; background-image: url(img/about/05.jpg);"><span class="split-section-arrow arrow-left"></span></div>
        <div class="col-md-6 px-3 px-md-5 py-5">
            <div class="mx-auto py-lg-5" style="max-width: 35rem;">
                <h2 class="h3 pb-3">We are hiring new talents</h2>
                <p class="pb-3 opacity-75">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id purus at risus pellentesque faucibus a quis eros. In eu fermentum leo. Integer ut eros lacus. Proin ut accumsan leo. Morbi vitae est eget dolor consequat aliquam eget quis dolor. Mauris rutrum fermentum erat, at euismod lorem pharetra nec. Duis erat lectus, ultrices euismod sagittis at, pharetra eu nisl. Phasellus id ante at velit tincidunt hendrerit. Aenean dolor dolor tristique nec.</p><a class="btn btn-pill btn-outline-primary" href="about.html#">Submit your CV<i class="ml-1" data-feather="arrow-right"></i></a>
            </div>
        </div>
    </div>
</div>
<!-- Footer-->
<jsp:include page="footer.jsp"></jsp:include>


<!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
<jsp:include page="js.jsp"></jsp:include>
</body>
</html>
