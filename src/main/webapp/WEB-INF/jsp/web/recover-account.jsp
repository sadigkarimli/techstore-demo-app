<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 10/15/19
  Time: 4:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
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

<jsp:include page="header.jsp"></jsp:include>
<!-- Page Content-->
<div class="container pb-5 mb-sm-4">
    <div class="row justify-content-center pt-5">
        <div class="col-lg-8 col-md-10 mt-sm-3">
            <h2 class="h3 mb-4">Şifrənizi unutmusuz?</h2>
            <p>Şifrənizi üç addımda dəyişin. Bu, yeni parolunuzu etibarlı saxlamağa kömək edir.</p>
            <ol class="list-unstyled">
                <li><span class="font-weight-semibold text-primary mr-2">1.</span>Aşağıdakı forma saytda qeydiyatı olan e-poçt adresinizi yazın və "Davam et" düyməsini sıxın.</li>
                <li><span class="font-weight-semibold text-primary mr-2">2.</span>Sizə şifrənizi dəyişmək üçün link göndərəcəyik.</li>
                <li><span class="font-weight-semibold text-primary mr-2">3.</span>Linkə keçib yeni şifrənizi daxil edin.</li>
            </ol>
            <div class="card py-2 mt-4">
                <form:form modelAttribute="recoverAccountForm" action="/recover-account" class="card-body needs-validation" method="post">
                    <div class="form-group">
                        <label for="recover-email">E-mail addresinizi daxil edin</label>
                        <form:input path="email" class="form-control"  id="recover-email"></form:input>
                        <form:errors path="email" cssClass="invalid-feedback" element="div"/>
                    </div>
                    <button class="btn btn-primary" type="submit">Davam et</button>
                </form:form>
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