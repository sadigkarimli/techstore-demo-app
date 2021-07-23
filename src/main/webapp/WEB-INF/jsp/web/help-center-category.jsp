<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 11/20/19
  Time: 11:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<!-- Navbar -->
<jsp:include page="header.jsp"/>

<!-- Page Content-->
<!-- Topics-->
<section class="container pt-5 mt-3">
    <h3 class="text-center">Select a topic</h3>
    <div class="row pt-4">
        <div class="col-lg-4 col-sm-6 mb-grid-gutter"><a class="card" href="help-single-topic.html">
            <div class="card-body">
                <div class="icon-box text-center">
                    <div class="icon-box-icon"><i data-feather="user"></i></div>
                    <h3 class="icon-box-title">Managing account</h3>
                    <p class="icon-box-text pb-3">Proin nec turpis vel tortor venenatis tempus. Sed mollis vel arcu in tempor. Mauris enim purus, laoreet nec elit non euismod tempur accusantium.</p>
                    <div class="btn btn-pill btn-outline-primary btn-sm">Learn more</div>
                </div>
            </div></a></div>
        <div class="col-lg-4 col-sm-6 mb-grid-gutter"><a class="card" href="help-single-topic.html">
            <div class="card-body">
                <div class="icon-box text-center">
                    <div class="icon-box-icon"><i data-feather="monitor"></i></div>
                    <h3 class="icon-box-title">Working with dashboard</h3>
                    <p class="icon-box-text pb-3">Proin nec turpis vel tortor venenatis tempus. Sed mollis vel arcu in tempor. Mauris enim purus, laoreet nec elit non euismod tempur accusantium.</p>
                    <div class="btn btn-pill btn-outline-primary btn-sm">Learn more</div>
                </div>
            </div></a></div>
        <div class="col-lg-4 col-sm-6 mb-grid-gutter"><a class="card" href="help-single-topic.html">
            <div class="card-body">
                <div class="icon-box text-center">
                    <div class="icon-box-icon"><i data-feather="credit-card"></i></div>
                    <h3 class="icon-box-title">Payment methods</h3>
                    <p class="icon-box-text pb-3">Proin nec turpis vel tortor venenatis tempus. Sed mollis vel arcu in tempor. Mauris enim purus, laoreet nec elit non euismod tempur accusantium.</p>
                    <div class="btn btn-pill btn-outline-primary btn-sm">Learn more</div>
                </div>
            </div></a></div>
        <div class="col-lg-4 col-sm-6 mb-grid-gutter"><a class="card" href="help-single-topic.html">
            <div class="card-body">
                <div class="icon-box text-center">
                    <div class="icon-box-icon"><i data-feather="truck"></i></div>
                    <h3 class="icon-box-title">Delivery information</h3>
                    <p class="icon-box-text pb-3">Proin nec turpis vel tortor venenatis tempus. Sed mollis vel arcu in tempor. Mauris enim purus, laoreet nec elit non euismod tempur accusantium.</p>
                    <div class="btn btn-pill btn-outline-primary btn-sm">Learn more</div>
                </div>
            </div></a></div>
        <div class="col-lg-4 col-sm-6 mb-grid-gutter"><a class="card" href="help-single-topic.html">
            <div class="card-body">
                <div class="icon-box text-center">
                    <div class="icon-box-icon"><i data-feather="refresh-cw"></i></div>
                    <h3 class="icon-box-title">Refund policy</h3>
                    <p class="icon-box-text pb-3">Proin nec turpis vel tortor venenatis tempus. Sed mollis vel arcu in tempor. Mauris enim purus, laoreet nec elit non euismod tempur accusantium.</p>
                    <div class="btn btn-pill btn-outline-primary btn-sm">Learn more</div>
                </div>
            </div></a></div>
        <div class="col-lg-4 col-sm-6 mb-grid-gutter"><a class="card" href="help-single-topic.html">
            <div class="card-body">
                <div class="icon-box text-center">
                    <div class="icon-box-icon"><i data-feather="users"></i></div>
                    <h3 class="icon-box-title">Affiliate program</h3>
                    <p class="icon-box-text pb-3">Proin nec turpis vel tortor venenatis tempus. Sed mollis vel arcu in tempor. Mauris enim purus, laoreet nec elit non euismod tempur accusantium.</p>
                    <div class="btn btn-pill btn-outline-primary btn-sm">Learn more</div>
                </div>
            </div></a></div>
    </div>
</section>
<!-- F.A.Q-->
<section class="container pt-4 pb-5 mt-3">
    <h3 class="text-center pb-2">F.A.Q</h3>
    <div class="row pt-4">
        <div class="col-sm-6">
            <ul class="list-unstyled">
                <li class="d-flex align-items-center border-bottom pb-3 mb-3"><i class="text-muted mr-2" data-feather="file-text" style="width: 1.2rem; height: 1.2rem;"></i><a class="nav-link-inline" href="help-topics.html#">How long will delivery take?</a></li>
                <li class="d-flex align-items-center border-bottom pb-3 mb-3"><i class="text-muted mr-2" data-feather="file-text" style="width: 1.2rem; height: 1.2rem;"></i><a class="nav-link-inline" href="help-topics.html#">What payment methods do you accept?</a></li>
                <li class="d-flex align-items-center border-bottom pb-3 mb-3"><i class="text-muted mr-2" data-feather="file-text" style="width: 1.2rem; height: 1.2rem;"></i><a class="nav-link-inline" href="help-topics.html#">Do you ship internationally?</a></li>
                <li class="d-flex align-items-center border-bottom pb-3 mb-3"><i class="text-muted mr-2" data-feather="file-text" style="width: 1.2rem; height: 1.2rem;"></i><a class="nav-link-inline" href="help-topics.html#">Do I need an account to place an order?</a></li>
                <li class="d-flex align-items-center border-bottom pb-3 mb-3"><i class="text-muted mr-2" data-feather="file-text" style="width: 1.2rem; height: 1.2rem;"></i><a class="nav-link-inline" href="help-topics.html#">How can I track my order?</a></li>
            </ul>
        </div>
        <div class="col-sm-6">
            <ul class="list-unstyled">
                <li class="d-flex align-items-center border-bottom pb-3 mb-3"><i class="text-muted mr-2" data-feather="file-text" style="width: 1.2rem; height: 1.2rem;"></i><a class="nav-link-inline" href="help-topics.html#">What are the product refund conditions?</a></li>
                <li class="d-flex align-items-center border-bottom pb-3 mb-3"><i class="text-muted mr-2" data-feather="file-text" style="width: 1.2rem; height: 1.2rem;"></i><a class="nav-link-inline" href="help-topics.html#">Do you have discounts for returning customers?</a></li>
                <li class="d-flex align-items-center border-bottom pb-3 mb-3"><i class="text-muted mr-2" data-feather="file-text" style="width: 1.2rem; height: 1.2rem;"></i><a class="nav-link-inline" href="help-topics.html#">How do your referral program work?</a></li>
                <li class="d-flex align-items-center border-bottom pb-3 mb-3"><i class="text-muted mr-2" data-feather="file-text" style="width: 1.2rem; height: 1.2rem;"></i><a class="nav-link-inline" href="help-topics.html#">Where I can view and download invoices for my orders?</a></li>
                <li class="d-flex align-items-center border-bottom pb-3 mb-3"><i class="text-muted mr-2" data-feather="file-text" style="width: 1.2rem; height: 1.2rem;"></i><a class="nav-link-inline" href="help-topics.html#">Do you provide technical support after the purchase?</a></li>
            </ul>
        </div>
    </div>

</section>
<!-- Submit request-->
<section class="container text-center pt-2 pb-5 mb-2">
    <h3 class="pb-3">Haven't found the answer? We can help.</h3>
    <div class="mb-2">
        <div class="icon-box-icon"><i data-feather="life-buoy"></i></div>
    </div><a class="btn btn-primary" href="help-submit-request.html">Submit a request</a>
    <p class="pt-4">Contact us and we’ll get back to you as soon as possible.</p>
</section>

<!-- Footer-->
<jsp:include page="footer.jsp"></jsp:include>

<!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
<jsp:include page="js.jsp"></jsp:include>
</body>
</html>