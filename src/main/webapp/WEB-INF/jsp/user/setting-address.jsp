<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 10/18/19
  Time: 8:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../web/meta.jsp"></jsp:include>
    <title>TechStore | Modern Electronic Store</title>
    <jsp:include page="../web/css.jsp"></jsp:include>
    <jsp:include page="../web/util.jsp"></jsp:include>

</head>
<!-- Body-->
<body>
<form class="needs-validation modal fade" method="post" id="open-ticket" tabindex="-1" novalidate>
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Submit new ticket</h4>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p class="text-muted">We normally respond tickets within 2 business days.</p>
                <div class="form-group">
                    <label for="ticket-subject">Subject</label>
                    <input class="form-control" type="text" id="ticket-subject" required>
                    <div class="invalid-feedback">Please fill in the subject line!</div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="ticket-type">Type</label>
                            <select class="form-control custom-select" id="ticket-type" required>
                                <option value>Choose type</option>
                                <option value="Website problem">Website problem</option>
                                <option value="Partner request">Partner request</option>
                                <option value="Complaint">Complaint</option>
                                <option value="Info inquiry">Info inquiry</option>
                            </select>
                            <div class="invalid-feedback">Please choose ticket type!</div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="ticket-priority">Priority</label>
                            <select class="form-control custom-select" id="ticket-priority" required>
                                <option value>How urgent is your issue?</option>
                                <option value="Urgent">Urgent</option>
                                <option value="High">High</option>
                                <option value="Medium">Medium</option>
                                <option value="Low">Low</option>
                            </select>
                            <div class="invalid-feedback">Please choose how urgent your ticket is!</div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="ticket-description">Describe your issue</label>
                    <textarea class="form-control" id="ticket-description" rows="8" required></textarea>
                    <div class="invalid-feedback">Please provide ticket description!</div>
                </div>
                <div class="custom-file mb-3">
                    <input class="custom-file-input" type="file" id="file-input">
                    <label class="custom-file-label" for="file-input">Choose file...</label>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary" type="submit">Submit Ticket</button>
            </div>
        </div>
    </div>
</form>

<jsp:include page="../web/header.jsp"></jsp:include>
<!-- Page Content-->
<div class="container pt-lg-3 pb-5 mb-sm-3">
    <!-- Toast notifications-->
    <div class="toast-container toast-bottom-center">
        <div class="toast mb-3" id="cart-toast" data-delay="5000" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header bg-success text-white"><i class="mr-2" data-feather="check-circle" style="width: 1.25rem; height: 1.25rem;"></i><span class="font-weight-semibold mr-auto">Added to cart!</span>
                <button class="close text-white ml-2 mb-1" type="button" data-dismiss="toast" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="toast-body">This item was added to your cart.</div>
        </div>
        <div class="toast mb-3" id="compare-toast" data-delay="5000" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header bg-info text-white"><i class="mr-2" data-feather="info" style="width: 1.25rem; height: 1.25rem;"></i><span class="font-weight-semibold mr-auto">Added to comparison!</span>
                <button class="close text-white ml-2 mb-1" type="button" data-dismiss="toast" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="toast-body">This item was added to comparison table.</div>
        </div>
        <div class="toast mb-3" id="wishlist-toast" data-delay="5000" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header bg-info text-white"><i class="mr-2" data-feather="info" style="width: 1.25rem; height: 1.25rem;"></i><span class="font-weight-semibold mr-auto">Added to wishlist!</span>
                <button class="close text-white ml-2 mb-1" type="button" data-dismiss="toast" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="toast-body">This item was added to your wishlist.</div>
        </div>
        <div class="toast mb-3" id="profile-toast" data-delay="5000" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header bg-success text-white"><i class="mr-2" data-feather="check-circle" style="width: 1.25rem; height: 1.25rem;"></i><span class="font-weight-semibold mr-auto">Updated!</span>
                <button class="close text-white ml-2 mb-1" type="button" data-dismiss="toast" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="toast-body">Your profile info updated successfuly.</div>
        </div>
        <div class="toast mb-3" id="address-toast" data-delay="5000" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header bg-success text-white"><i class="mr-2" data-feather="check-circle" style="width: 1.25rem; height: 1.25rem;"></i><span class="font-weight-semibold mr-auto">Updated!</span>
                <button class="close text-white ml-2 mb-1" type="button" data-dismiss="toast" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="toast-body">Your addresses info updated successfuly.</div>
        </div>
    </div>
    <div class="row pt-5">
        <jsp:include page="sidebar.jsp"/>

        <!-- Main content-->
        <div class="col-lg-8 offset-xl-1">
            <!-- Customer details-->
            <div class="d-flex flex-wrap justify-content-between pb-4">
                <div class="pt-3 mr-3">
                    <h3 class="mb-0">${user.firstName} ${user.lastName}</h3><span
                        class="font-size-sm text-warning">${user.email}</span>
                </div>
                <div class="pt-3">
                    <form method="post" action="/logout">
                        <input type="hidden"
                               name="${_csrf.parameterName}"
                               value="${_csrf.token}"/>

                        <div class="pt-3">
                            <button type="submit" class="btn btn-outline-primary btn-sm">
                                <i class="mr-1" data-feather="log-out"></i>Hesabdan Çıx
                            </button>
                        </div>
                    </form>
                </div>
            </div>
            <!-- Navigation (visible sm-up)-->
            <ul class="nav nav-tabs d-none d-sm-flex">
                <li class="nav-item"><a class="nav-link" href="account-orders.html"><i data-feather="shopping-bag"></i>&nbsp;My
                    orders<span class="badge badge-pill badge-secondary bg-0 border ml-2"><span
                            class="text-primary">1</span></span></a></li>
                <li class="nav-item"><a class="nav-link" href="account-wishlist.html"><i data-feather="heart"></i>&nbsp;Wishlist<span
                        class="badge badge-pill badge-secondary bg-0 border ml-2"><span
                        class="text-primary">3</span></span></a></li>
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle active" href="#"
                                                 data-toggle="dropdown"><i data-feather="settings"></i> Hesab
                    parametrləri </a>
                    <div class="dropdown-menu"><a class="dropdown-item" href="/user/">Profil məlumatları</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item active" href="/user/address-setting">Ünvanlar</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="/user/payment-methods">Ödəniş üsulları</a>
                    </div>
                </li>
            </ul>
            <!-- Navigation (visible sm-down)-->
            <div class="d-sm-none pb-4">
                <button class="btn btn-primary btn-block mb-2" type="button" data-toggle="collapse"
                        data-target="#account-menu"><i class="mr-2" data-feather="menu"></i>Menu
                </button>
                <div class="collapse" id="account-menu">
                    <div class="list-group"><a class="list-group-item list-group-item-action"
                                               href="account-orders.html"><i class="mr-2" data-feather="shopping-bag"
                                                                             style="width: 1rem; height: 1rem;"></i>My
                        orders<span class="badge badge-pill badge-secondary bg-0 border ml-2"><span
                                class="text-primary">1</span></span></a><a
                            class="list-group-item list-group-item-action" href="account-wishlist.html"><i class="mr-2"
                                                                                                           data-feather="heart"
                                                                                                           style="width: 1rem; height: 1rem;"></i>Wishlist<span
                            class="badge badge-pill badge-secondary bg-0 border ml-2"><span
                            class="text-primary">3</span></span></a><a
                            class="list-group-item list-group-item-action active" href=""><i class="mr-2"
                                                                                             data-feather="user"
                                                                                             style="width: 1rem; height: 1rem;"></i>Profile
                        info</a><a class="list-group-item list-group-item-action" href="account-address.html"><i
                            class="mr-2" data-feather="map-pin" style="width: 1rem; height: 1rem;"></i>Addresses</a><a
                            class="list-group-item list-group-item-action" href="account-payment.html"><i class="mr-2"
                                                                                                          data-feather="credit-card"
                                                                                                          style="width: 1rem; height: 1rem;"></i>Payment
                        methods</a></div>
                </div>
            </div>
            <!-- Contact address-->
            <h5 class="mb-4 pt-sm-3">Contact address</h5>
            <form class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="account-company">Company</label>
                        <input class="form-control" type="text" id="account-company" value="Bets Company Ltd.">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="account-country">Country</label>
                        <select class="form-control custom-select" id="account-country">

                        </select>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="account-city">City</label>
                        <select class="form-control custom-select" id="account-city">
                            <option value="-1">Şəhər seçin</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="account-zip">ZIP Code</label>
                        <input class="form-control" type="text" id="account-zip" value="10005" required>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="account-address1">Address 1</label>
                        <input class="form-control" type="text" id="account-address1" value="396 Lillian Blvd, Holbrook" required>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="account-address2">Address 2</label>
                        <input class="form-control" type="text" id="account-address2">
                    </div>
                </div>
            </form>
            <hr class="mt-2 pb-2">
            <!-- Shipping address-->
            <h5 class="mb-4 pt-sm-3">Shipping address</h5>
            <div class="custom-control custom-checkbox d-block">
                <input class="custom-control-input" type="checkbox" id="same_address" checked>
                <label class="custom-control-label" for="same_address">Same as Contact Address</label>
            </div>
            <hr class="mt-3 pb-3">
            <div class="text-sm-right">
                <button class="btn btn-primary" type="button" data-toggle="toast" data-target="#address-toast">Update address</button>
            </div>
            <!-- Technical support + Tickets (visible Mobile)-->
            <div class="d-lg-none bg-secondary px-3 py-4 mt-5">
                <h6 class="font-size-sm mb-3 pb-2 border-bottom">Technical support</h6>
                <ul class="list-unstyled">
                    <li class="font-size-sm mb-2"><i class="text-muted mr-2" data-feather="mail" style="width: .875rem; height: .875rem;"></i><a class="nav-link-inline" href="mailto:support@example.com">support@example.com</a></li>
                    <li class="font-size-sm mb-2"><i class="text-muted mr-2" data-feather="phone" style="width: .875rem; height: .875rem;"></i><a class="nav-link-inline" href="tel:+100331697720">+1 00 33 169 7720</a></li>
                    <li class="font-size-sm mb-2"><i class="text-muted mr-2" data-feather="clock" style="width: .875rem; height: .875rem;"></i>1-2 business days</li>
                </ul>
                <div class="pt-2"><a class="btn btn-outline-secondary btn-sm btn-block" href="account-tickets.html"><i class="mr-1" data-feather="tag"></i>My tickets (1)</a><a class="btn btn-success btn-sm btn-block" href="account-tickets.html" data-toggle="modal" data-target="#open-ticket">Submit new ticket</a></div>
            </div>
        </div>
    </div>
</div>

<!-- Footer-->
<jsp:include page="../web/footer.jsp"></jsp:include>
<!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
<jsp:include page="../web/js.jsp"></jsp:include>
<script type="application/javascript">

    const baseUrl = 'http://localhost:8080';
    function get_country_list() {
        $.ajax({
            url: baseUrl + '/rest/countries',
            method: 'GET',

            success: function (data) {
                $("#account-country").empty();
                $("#account-country").append("<option value='-1'>Ölkə seçin</option>");
                for (let i = 0; i < data.length; i++) {
                    $("#account-country").append("<option value='" + data[i].id
                        + "'>" + data[i].name + "</option>");
                }
            }
        });
    }

    function get_country_by_id(){
        $("#account-country").on("change", function () {
            var country_id = $("#account-country ").val();
            $.ajax({
                url: baseUrl + "/rest/countries/" + country_id,
                method: "GET",
                success: function (data) {
                    $("#account-city").empty()


                    for (let i = 0; i < data.length; i++) {
                        $("#account-city").append("<option value='" + data[i].id + "'>"
                            + data[i].name + "</option>");
                    }
                }
            });
        });
    }

    $(document).ready(function () {
        get_country_list();

        const country_name = $("#account-country option:selected").text();

        get_country_by_id();

    });
</script>

</body>
</html>


