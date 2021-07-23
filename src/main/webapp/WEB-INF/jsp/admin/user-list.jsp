<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 10/26/19
  Time: 4:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
<title>Admin | İstifadəçilər</title>

<!-- General CSS Files -->
<jsp:include page="css.jsp"></jsp:include>

<!-- Start GA -->
<jsp:include page="util.jsp"></jsp:include>
<!-- /END GA -->
</head>

<body>
<div id="app">
    <div class="main-wrapper main-wrapper-1">
        <jsp:include page="navbar.jsp"></jsp:include>
        <jsp:include page="sidebar.jsp"></jsp:include>

        <!-- Main Content -->
        <div class="main-content">
            <section class="section">
                <div class="section-header">
                    <h1 style="font-family: 'Droid Sans'">İstifadəçilər</h1>
                    <div class="section-header-button">
                        <a href="features-post-create.html" class="btn btn-primary">Add New</a>
                    </div>
                    <div class="section-header-breadcrumb">
                        <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
                        <div class="breadcrumb-item"><a href="#">Posts</a></div>
                        <div class="breadcrumb-item">All Posts</div>
                    </div>
                </div>

                <div class="section-body">
                    <div class="row">
                        <div class="col-12">
                            <div class="card mb-0">
                                <div class="card-body">
                                    <ul class="nav nav-pills">
                                        <li class="nav-item">
                                            <button class="nav-link active">Hamısı <span
                                                    class="badge badge-white">5</span></button>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="features-posts.html#">Gözləyən <span
                                                    class="badge badge-primary">1</span></a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="features-posts.html#">Bloklanmış <span
                                                    class="badge badge-primary">1</span></a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="features-posts.html#">Silinmiş <span
                                                    class="badge badge-primary">0</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped" id="user-table">
                                            <thead>
                                            <tr>
                                                <th class="text-center">
                                                    ID
                                                </th>
                                                <th>Ad</th>
                                                <th>Soyad</th>
                                                <th>Email</th>
                                                <th>Qeydiyyat Tarixi</th>
                                                <th>Aktivasiya Tarixi</th>
                                                <th>Status</th>
                                                <th>Seçimlər</th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <jsp:include page="footer.jsp"/>
    </div>
</div>

<!-- General JS Scripts -->
<jsp:include page="js.jsp"/>


<script>

    const baseUrl = 'http://localhost:8080/rest/';

    function confirmDelete(user_id) {
        swal({
            title: "?",
            text: "İstifadəçi silindikdən sonra bərpa etmək mümkün deyil!",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "Bəli, istifadəçini sil!",
            closeOnConfirm: false
        }, function (isConfirm) {
            if (!isConfirm) return;
            $.ajax({
                url: baseUrl + "users/" + user_id,
                type: "DELETE",
                dataType: "html",
                success: function () {
                    swal("Edildi!", user_id + "id li istifadəçi silindi!", "success");
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    swal("Xəta baş verdi!", "Zəhmət olmasa tərar cəhd edin", "error");
                }
            });
        });
    }

    function get_user_data_list() {
        $('#user-table').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": baseUrl + "user/user-list-datatable"
        });
    }

    function view_user(user_id) {
        $.ajax({
            url: baseUrl + "user/users/" + user_id,
            type: "GET",
            success: function (data) {
                $('#view-button').fireModal({
                    title: 'My Modal',
                    body: "Ad: " + data.firstName
                });
            }
        });
    }

    $(document).ready(function () {
        get_user_data_list();

    });
</script>

</body>
</html>
