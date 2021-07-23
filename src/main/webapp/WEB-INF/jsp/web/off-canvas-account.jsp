<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 10/20/19
  Time: 12:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Off-canvas account-->
<div class="offcanvas offcanvas-reverse" id="offcanvas-account">
    <div class="offcanvas-header d-flex justify-content-between align-items-center">
        <h3 class="offcanvas-title">Sign in or Create account</h3>
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
                    <form action="/login" method="post" class="needs-validation" novalidate>
                        <div class="form-group">
                            <label class="sr-only" for="signin-email">Email</label>
                            <div class="input-group">
                                <div class="input-group-prepend"><span class="input-group-text" id="signin-email-icon"><i data-feather="mail"></i></span></div>
                                <input class="form-control" type="email" id="signin-email" name="email" placeholder="Email" aria-label="Email" aria-describedby="signin-email-icon" required>
                                <div class="invalid-feedback">Please provide email address.</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="signin-password">Password</label>
                            <div class="input-group">
                                <div class="input-group-prepend"><span class="input-group-text" id="signin-password-icon"><i data-feather="lock"></i></span></div>
                                <input class="form-control" type="password" id="signin-password" name="password" placeholder="Password" aria-label="Password" aria-describedby="signin-password-icon" required>
                                <div class="invalid-feedback">Please enter a password.</div>
                            </div>
                        </div>
                        <div class="d-flex flex-wrap justify-content-between">
                            <div class="custom-control custom-checkbox mb-3">
                                <input class="custom-control-input" type="checkbox" checked="" id="remember-me" name="remember_me" value="1">
                                <label class="custom-control-label" for="remember-me">Remember me</label>
                            </div><a class="nav-link-inline font-size-sm" href="/recover-account">Forgot password?</a>
                        </div>
                        <button class="btn btn-primary btn-block" type="submit">Sign In</button>
                    </form>
                </div>
                <div class="tab-pane fade" id="signup" role="tabpanel">
                    <form action="/register" method="post" class="needs-validation" novalidate>
                        <div class="form-group">
                            <label class="sr-only" for="signup-first-name">First Name</label>
                            <input path="email" class="form-control" type="text" id="signup-first-name" name="first-name" placeholder="First Name" aria-label="First Name" required>
                            <div class="invalid-feedback">Please enter your first name.</div>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="signup-last-name">Last Name</label>
                            <input class="form-control" type="text" id="signup-last-name" name="first-name" placeholder="Last Name" aria-label="Last Name" required>
                            <div class="invalid-feedback">Please enter your last name.</div>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="signup-email">Email address</label>
                            <input class="form-control" type="email" id="signup-email" name="email" placeholder="Email address" aria-label="Email address" required>
                            <div class="invalid-feedback">Please provide a valid email address.</div>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="signup-password">Password</label>
                            <input class="form-control" type="password" id="signup-password" name="password" placeholder="Password" aria-label="Password" required>
                            <div class="invalid-feedback">Please enter a password.</div>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="signup-password-confirm">Confirm password</label>
                            <input class="form-control" type="password" id="signup-password-confirm" name="password-confirm" placeholder="Confirm password" aria-label="Confirm password" required>
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
