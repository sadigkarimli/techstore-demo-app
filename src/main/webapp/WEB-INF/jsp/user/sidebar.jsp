<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 11/1/19
  Time: 11:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Sidebar-->
<div class="col-xl-3 col-lg-4">
    <!-- Customer picture-->
    <a class="gallery-item mb-grid-gutter mx-auto " href="#" style="max-width: 18.75rem;"><img
            style="background-color: whitesmoke; width: 80%; margin: 8px auto;"
            src="${pageContext.servletContext.contextPath}/img/account/customer.png"
            alt="${user.firstName} ${user.lastName}">
    </a>
    <!-- Technical support + Tickets (visible Desktop)-->
    <div class="d-none d-lg-block">
        <h6 class="font-size-sm mb-3 pb-2 border-bottom">Technical support</h6>
        <ul class="list-unstyled">
            <li class="font-size-sm mb-2"><i class="text-muted mr-2" data-feather="mail"
                                             style="width: .875rem; height: .875rem;"></i><a
                    class="nav-link-inline" href="mailto:support@example.com">support@example.com</a></li>
            <li class="font-size-sm mb-2"><i class="text-muted mr-2" data-feather="phone"
                                             style="width: .875rem; height: .875rem;"></i><a
                    class="nav-link-inline" href="tel:+100331697720">+1 00 33 169 7720</a></li>
            <li class="font-size-sm mb-2"><i class="text-muted mr-2" data-feather="clock"
                                             style="width: .875rem; height: .875rem;"></i>1-2 business days
            </li>
        </ul>
        <div class="pt-2"><a class="btn btn-outline-secondary btn-sm btn-block" href="account-tickets.html"><i
                class="mr-1" data-feather="tag"></i>My tickets (1)</a><a
                class="btn btn-success btn-sm btn-block" href="account-tickets.html" data-toggle="modal"
                data-target="#open-ticket">Submit new ticket</a></div>
    </div>
</div>