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
                    <thead>
                    <tr>
                        <th>Id</th>
                        <th>Username</th>
                        <th>Email</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${users}" var="user">

                        <tr>

                            <td>${user.id}</td>
                            <td>${user.userName}</td>
                            <td>${user.email}</td>
                            <td><a href='<c:url value="/user/delete?id=${user.id}"/>'>delete</a> <a href='<c:url value="/user/edit?id=${user.id}"/>'>edit</a> <a href='<c:url value="/user/show?id=${user.id}"/>'>show</a></td>

                        </tr>

                    </c:forEach>

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