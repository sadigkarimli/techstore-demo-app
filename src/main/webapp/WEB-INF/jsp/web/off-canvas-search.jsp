<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 10/20/19
  Time: 12:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="offcanvas offcanvas-reverse" id="offcanvas-search">
    <div class="offcanvas-header d-flex justify-content-between align-items-center">
        <h3 class="offcanvas-title">Search site</h3>
        <button class="close" type="button" data-dismiss="offcanvas" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    </div>
    <div class="offcanvas-body">
        <div class="offcanvas-body-inner">
            <div class="input-group pt-3">
                <div class="input-group-prepend"><span class="input-group-text" id="search-icon"><i data-feather="search"></i></span></div>
                <input class="form-control" type="text" id="site-search" placeholder="Search site" aria-label="Search site" aria-describedby="search-icon">
            </div><small class="form-text pt-1">Type A or C to see suggestions. Powered by Easy autocomplete plugin via separate JSON file.</small>
        </div>
    </div>
</div>
