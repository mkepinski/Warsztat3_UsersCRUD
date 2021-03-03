<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp"%>

<!-- Begin Page Content -->
<div class="container-fluid">

    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="<c:url value="/user/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i>  Show all users</a>
    </div>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Edit user</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <form method="post">
                    <div class="mb-3">
                        <label for="name" class="form-label">Name</label>
                        <input value="${user.userName}" name="name" type="text" class="form-control" id="name" aria-describedby="emailHelp">
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input value="${user.email}" name="email" type="email" class="form-control" id="email">
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password" name="password">
                    </div>
                    <input type="hidden" name="id" value="${user.id}"/>
                    <button type="submit" class="btn btn-primary">Edit user</button>
                </form>
            </div>
        </div>

        <!-- /.container-fluid -->

    </div>

</div>
<%@ include file="/footer.jsp"%>