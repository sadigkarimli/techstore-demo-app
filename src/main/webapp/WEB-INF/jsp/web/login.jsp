<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 10/23/19
  Time: 1:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="az">
<head>
    <jsp:include page="meta.jsp"></jsp:include>
    <title>TechStore | Daxil ol</title>
    <jsp:include page="css.jsp"></jsp:include>
    <jsp:include page="util.jsp"></jsp:include>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!-- Page Content-->
<div class="container pb-5 mb-sm-4">
    <div class="row justify-content-center pt-5">
        <div class="col-md-6 pt-2 pt-sm-4">
            <h2 class="h4 mb-1">Daxil olun</h2>
            <div class="d-sm-flex align-items-center py-3">
                <h3 class="h6 font-weight-semibold opacity-70 mb-3 mb-sm-2 mr-sm-3">Digər hesablarınızla:</h3>
                <div><a class="social-btn sb-linkedin mr-2 mb-2" href="#" data-toggle="tooltip"
                        title="Google+ hesabinizla"><i class="flaticon-google-plus"></i></a>
                    <a class="social-btn sb-facebook mr-2 mb-2" href="#" data-toggle="tooltip"
                        title="Facebook hesabinizla"><i class="flaticon-facebook"></i></a>
                </div>
            </div>
            <hr>
            <h3 class="h6 font-weight-semibold opacity-70 pt-4 pb-2">və ya aşağıdakı form ilə</h3>
            <c:if test="${param.error != null}">
                <div style="margin-bottom: 8px" class="invalid-feedback">İstifadəçi adı və ya şifrə yanlışdır</div>
            </c:if>
            <c:if test="${param.logout != null}">
                <div class="text-info">Siz sistemdən çıxdiniz</div>
            </c:if>
            <form action="/login" method="post">
                <div class="input-group form-group">
                    <div class="input-group-prepend"><span class="input-group-text"><i data-feather="mail"></i></span>
                    </div>
                    <input class="form-control" name="username" type="email" placeholder="E-mail">
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend"><span class="input-group-text"><i data-feather="lock"></i></span>
                    </div>
                    <input class="form-control" name="password" type="password" placeholder="Şifrə">
                </div>
                <div class="d-flex flex-wrap justify-content-between">
                    <div class="custom-control custom-checkbox">
                        <input class="custom-control-input" name="remember-me" type="checkbox" checked id="remember-me">
                        <label class="custom-control-label" for="remember-me">Yadda saxla</label>
                    </div>
                    <a class="nav-link-inline font-size-sm" href="/recover-account">Şifrəni unutmusuz?</a>
                </div>
                <hr class="mt-4">
                <div class="d-flex flex-wrap justify-content-between" style="margin-top: 12px">
                    <p style="font-size: 14px; margin-top: 8px" class="text-muted">Hesabınız yoxdur? - <a href="/register">Qeyiyyatdan keçin</a></p>
                    <div class="text-right">
                        <input type="hidden"
                               name="${_csrf.parameterName}"
                               value="${_csrf.token}"/>
                        <input class="btn btn-primary text-right" type="submit" value="Daxil ol">
                    </div>
                </div>
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
