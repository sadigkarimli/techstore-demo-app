<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 11/20/19
  Time: 10:54 AM
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
<jsp:include page="header.jsp"></jsp:include>

<!-- Page Title-->
<div class="page-title-wrapper" aria-label="Page title">
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="mt-n1 mr-1"><i data-feather="home"></i></li>
                <li class="breadcrumb-item"><a href="index.html">Home</a>
                </li>
                <li class="breadcrumb-item"><a href="contacts.html#">Pages</a>
                </li>
            </ol>
        </nav>
        <h1 class="page-title">Contacts</h1><span class="d-block mt-2 text-muted"></span>
        <hr class="mt-4">
    </div>
</div>
<!-- Page Content-->
<div class="container-fluid pb-4 mb-3">
    <div class="row">
        <div class="col-xl-3 col-sm-6 mb-grid-gutter"><a class="card scroll-to" href="contacts.html#map">
            <div class="card-body">
                <div class="icon-box text-center">
                    <div class="icon-box-icon"><i data-feather="map-pin"></i></div>
                    <h3 class="icon-box-title">Main store address</h3>
                    <p class="icon-box-text pb-2">396 Lillian Blvd, Holbrook, NY 11741, USA</p>
                    <div class="text-primary font-weight-semibold font-size-sm">Click to see map<i class="ml-1" data-feather="arrow-right" style="width: 1rem; height: 1rem;"></i></div>
                </div>
            </div></a></div>
        <div class="col-xl-3 col-sm-6 mb-grid-gutter">
            <div class="card">
                <div class="card-body">
                    <div class="icon-box text-center">
                        <div class="icon-box-icon"><i data-feather="clock"></i></div>
                        <h3 class="icon-box-title">Working hours</h3>
                        <ul class="list-unstyled icon-box-text pb-2">
                            <li>Mon - Fri: 10AM - 19PM</li>
                            <li>Sat: 11AM - 17PM</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-grid-gutter">
            <div class="card">
                <div class="card-body">
                    <div class="icon-box text-center">
                        <div class="icon-box-icon"><i data-feather="phone"></i></div>
                        <h3 class="icon-box-title">Phone numbers</h3>
                        <ul class="list-unstyled icon-box-text pb-2">
                            <li>Customer service:&nbsp;<a class="nav-link-inline" href="tel:+108044357260">+1 (080) 44 357 260</a></li>
                            <li>Tech support:&nbsp;<a class="nav-link-inline" href="tel:+100331697720">+1 00 33 169 7720</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-grid-gutter">
            <div class="card">
                <div class="card-body">
                    <div class="icon-box text-center">
                        <div class="icon-box-icon"><i data-feather="mail"></i></div>
                        <h3 class="icon-box-title">Email addresses</h3>
                        <ul class="list-unstyled icon-box-text pb-2">
                            <li>Customer service:&nbsp;<a class="nav-link-inline" href="mailto:customer@example.com">customer@example.com</a></li>
                            <li>Tech support:&nbsp;<a class="nav-link-inline" href="mailto:support@example.com">support@example.com</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Outlet stores-->
<div class="container">
    <h2 class="h3 text-center mb-4">Partner outlet stores</h2>
    <div class="row pt-3">
        <div class="col-lg-4 col-sm-6 mb-grid-gutter">
            <div class="card"><img class="card-img-top" src="img/contacts/orlando.jpg" alt="Orlando">
                <div class="card-body">
                    <h5 class="font-size-lg card-title mb-3 py-1">Orlando, USA</h5>
                    <ul class="contact-list">
                        <li>
                            <div class="contact-icon"><i data-feather="map-pin"></i></div>
                            <div class="contact-details"><span class="contact-label">Find us</span><a class="contact-link" href="contacts.html#">514 S. Magnolia St. Orlando, FL 32806, USA</a></div>
                        </li>
                        <li>
                            <div class="contact-icon"><i data-feather="phone"></i></div>
                            <div class="contact-details"><span class="contact-label">Call us</span><a class="contact-link" href="tel:+178632256040">+1 (786) 322 560 40</a></div>
                        </li>
                        <li>
                            <div class="contact-icon"><i data-feather="mail"></i></div>
                            <div class="contact-details"><span class="contact-label">Write us</span><a class="contact-link" href="mailto:orlando@example.com">orlando@example.com</a></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 mb-grid-gutter">
            <div class="card"><img class="card-img-top" src="img/contacts/chicago2.jpg" alt="Chicago">
                <div class="card-body">
                    <h5 class="font-size-lg card-title mb-3 py-1">Chicago, USA</h5>
                    <ul class="contact-list">
                        <li>
                            <div class="contact-icon"><i data-feather="map-pin"></i></div>
                            <div class="contact-details"><span class="contact-label">Find us</span><a class="contact-link" href="contacts.html#">769, Industrial Dr, West Chicago, IL 60185, USA</a></div>
                        </li>
                        <li>
                            <div class="contact-icon"><i data-feather="phone"></i></div>
                            <div class="contact-details"><span class="contact-label">Call us</span><a class="contact-link" href="tel:+184725276533">+1 (847) 252 765 33</a></div>
                        </li>
                        <li>
                            <div class="contact-icon"><i data-feather="mail"></i></div>
                            <div class="contact-details"><span class="contact-label">Write us</span><a class="contact-link" href="mailto:chicago@example.com">chicago@example.com</a></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 mb-grid-gutter">
            <div class="card"><img class="card-img-top" src="img/contacts/newyork.jpg" alt="New York">
                <div class="card-body">
                    <h5 class="font-size-lg card-title mb-3 py-1">New York, USA</h5>
                    <ul class="contact-list">
                        <li>
                            <div class="contact-icon"><i data-feather="map-pin"></i></div>
                            <div class="contact-details"><span class="contact-label">Find us</span><a class="contact-link" href="contacts.html#">396 Lillian Blvd, Holbrook, NY 11741, USA</a></div>
                        </li>
                        <li>
                            <div class="contact-icon"><i data-feather="phone"></i></div>
                            <div class="contact-details"><span class="contact-label">Call us</span><a class="contact-link" href="tel:+1212477690000">+1 (212) 477 690 000</a></div>
                        </li>
                        <li>
                            <div class="contact-icon"><i data-feather="mail"></i></div>
                            <div class="contact-details"><span class="contact-label">Write us</span><a class="contact-link" href="mailto:newyork@example.com">newyork@example.com</a></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Split section: Map + Contact form-->
<div class="container-fluid px-0 pt-4 pt-lg-5" id="map" data-offset-top="30">
    <div class="row no-gutters">
        <div class="col-lg-6 iframe-full-height-wrap">
            <iframe class="iframe-full-height" width="600" height="250" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d53357.14257194912!2d-73.07268695801845!3d40.78017062807504!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89e8483b8bffed93%3A0x53467ceb834b7397!2s396+Lillian+Blvd%2C+Holbrook%2C+NY+11741%2C+USA!5e0!3m2!1sen!2sua!4v1558703206875!5m2!1sen!2sua"></iframe>
        </div>
        <div class="col-lg-6 px-4 px-xl-5 py-5 border-top">
            <h2 class="h4 mb-4">Drop us a line</h2>
            <form class="needs-validation mb-3" novalidate>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="cf-name">Your name:&nbsp;<span class="text-danger">*</span></label>
                            <input class="form-control" type="text" id="cf-name" placeholder="John Doe" required>
                            <div class="invalid-feedback">Please fill in you name!</div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="cf-email">Email address:&nbsp;<span class="text-danger">*</span></label>
                            <input class="form-control" type="email" id="cf-email" placeholder="johndoe@email.com" required>
                            <div class="invalid-feedback">Please provide valid email address!</div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="cf-phone">Your phone:&nbsp;<span class="text-danger">*</span></label>
                            <input class="form-control" type="text" id="cf-phone" placeholder="+1 (212) 00 000 000" required>
                            <div class="invalid-feedback">Please provide valid phone number!</div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="cf-subject">Subject:</label>
                            <input class="form-control" type="text" id="cf-subject" placeholder="Provide short title of your request">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="cf-message">Message:&nbsp;<span class="text-danger">*</span></label>
                    <textarea class="form-control" id="cf-message" rows="6" placeholder="Please describe in detail your request" required></textarea>
                    <div class="invalid-feedback">Please write a message!</div>
                </div>
                <button class="btn btn-primary" type="submit">Send message</button>
            </form>
        </div>
    </div>
</div>
<!-- Footer-->
<jsp:include page="footer.jsp"></jsp:include>


<!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
<jsp:include page="js.jsp"></jsp:include>
</body>
</html>