<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 10/20/19
  Time: 11:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="az">
<head>
    <jsp:include page="meta.jsp"></jsp:include>
    <title>TechStore | Qeydiyyat</title>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <jsp:include page="css.jsp"></jsp:include>
    <jsp:include page="util.jsp"></jsp:include>
</head>
<!-- Body-->
<body>

<jsp:include page="header-light.jsp"></jsp:include>
<!-- Page Content-->
<div class="container pb-5 mb-sm-4">
    <div class="row justify-content-center pt-5">
        <div class="col-md-6 pt-2 pt-sm-4">
            <h2 class="h4 mb-3">Qeydiyyatdan keçin</h2>
            <p class="text-muted mb-4">Qeydiyyat sizə sifarişlərinizi tam idarə etmə imkanı verəcək</p>

            <form:form modelAttribute="registrationForm" action="/register" method="post">
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="reg-fn">Ad</label>
                        <form:input path="firstName" name="firstName" placeholder="Adınız" class="form-control"
                                    id="reg-fn"/>
                        <form:errors path="firstName" cssClass="invalid-feedback" element="div"/>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="reg-ln">Soyad</label>
                        <form:input path="lastName" name="lastName" placeholder="Soyadınız" class="form-control"
                                    id="reg-ln"/>
                        <form:errors path="lastName" cssClass="invalid-feedback" element="div"/>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="form-group">
                        <label for="reg-email">E-mail</label>
                        <form:input path="email" name="email" placeholder="example@examle.com" class="form-control"
                                    id="reg-email"/>
                        <form:errors path="email" cssClass="invalid-feedback" element="div"/>
                    </div>
                </div>


                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="reg-password">Şifrə</label>
                        <form:password path="password" name="password" placeholder="ən az 6 simvol"
                                       class="form-control" id="reg-password"/>
                        <form:errors path="password" cssClass="invalid-feedback" element="div"/>
                    </div>
                </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="reg-password-confirm">Şifrə təkrarı</label>
                            <form:password path="confirmPassword" name="confirmPassword" class="form-control"
                                           id="reg-password-confirm"/>
                            <form:errors path="confirmPassword" cssClass="invalid-feedback" element="div"/>
                        </div>
                    </div>
                <div class="col-sm-6">
                    <div class="g-recaptcha" data-sitekey="6LenbsIUAAAAAKwVsrpwd60gc5teyiKCgi2yVKel">

                    </div>
                </div>


                </div>
                <hr class="mt-4">
                <div class="d-flex flex-wrap justify-content-between" style="margin-top: 12px">
                    <p style="font-size: 14px; margin-top: 8px" class="text-muted">Hesabınız var? - <a href="/login">Daxil ol</a></p>
                    <div class="text-right">
                        <input class="btn btn-primary text-right" type="submit" value="Davam et">
                    </div>
                </div>



                </form:form>
            </div>
        </div>
    </div>
    <!-- Footer-->
    <jsp:include page="footer.jsp"></jsp:include>

    <!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
    <jsp:include page="js.jsp"></jsp:include>
</body>
</html>
