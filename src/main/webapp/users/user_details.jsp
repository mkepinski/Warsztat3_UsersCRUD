<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp"%>


<!-- Begin Page Content -->
<div class="container-fluid">

    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="<c:url value="/user/add"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i>  Add user</a>
    </div>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">User list</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

                    <tbody>

                        <tr>
                            <td>Id</td>
                            <td>${user.id}</td>
                        </tr>
                        <tr>
                            <td>User name</td>
                            <td>${user.userName}</td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>${user.email}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->



<%@ include file="/footer.jsp"%>