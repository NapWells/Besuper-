<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<html lang="en">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>QK外卖 - 后台管理系统</title>

    <!-- Bootstrap Core CSS -->
    <link href="<%=basePath%>resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<%=basePath%>resources/css/admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<%=basePath%>resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    <div id="wrapper">
	<h1><%=basePath %></h1>
        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="<%=basePath%>back/index.jsp">QK外卖 - 后台管理系统</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>${sessionScope.manager["name"]} <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="<%=basePath%>back/personal-info.jsp"><i class="fa fa-fw fa-user"></i>个人信息</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="<%=basePath%>logout.action"><i class="fa fa-fw fa-power-off"></i>退出登陆</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="<%=basePath%>back/personal-info.jsp"><i class="fa fa-fw fa-table"></i>个人信息</a>
                    </li>
                    <li>
                        <a href="<%=basePath%>back/password.jsp"><i class="fa fa-fw fa-table"></i>修改密码</a>
                    </li>
                    <li>
                        <a href="<%=basePath%>staffList.action" class="active"><i class="fa fa-fw fa-table"></i>员工管理</a>
                    </li>
                    <li>
                        <a href="<%=basePath%>merchantList.action"><i class="fa fa-fw fa-table"></i>商家管理</a>
                    </li>
                    <li>
                        <a href="<%=basePath%>riderList.action"><i class="fa fa-fw fa-table"></i>骑士管理</a>
                    </li>
                    <li>
                        <a href="<%=basePath%>userList.action"><i class="fa fa-fw fa-table"></i>消费者管理</a>
                    </li>
                    <li>
                        <a href="<%=basePath%>getOrderList.action"><i class="fa fa-fw fa-table"></i>订单管理</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            员工管理
                        </h1>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-6">

                            <table class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th class="eID">员工ID</th>
                                        <th class="eName">姓名</th>
                                        <th class="phoneNum">电话</th>
                                        <th class="email">邮箱</th>
                                        <th class="permission">员工权限</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${staffList}" var="staff" varStatus="status">
                                            <tr>
                                                <td class="eID">${staff.key.id}</td>
                                                <td class="eName">${staff.key.name}</td>
                                                <td class="phoneNum">${staff.key.phone}</td>
                                                <td class="email">${staff.key.email}</td>
                                                <td class="permission">${staff.value.name}</td>
                                                <td>
                                                    <a href="#" class="employee-modify">修改</a>
                                                    <a href="<%=basePath%>deleteStaff.action?id=${staff.key.id}"  style="float:right;color:red;">删除</a>
                                                </td>
                                            </tr>


                                    </c:forEach>
                                </tbody>
                            </table>
                            <button type="submit" id="create-employee" class="btn btn-default float-r">创建员工</button>
                    </div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-4">
                        <form id="employee-form" method="post">

                            <div class="form-group">
                                <label>员工ID</label>
                                <input class="form-control form-eID" name="id">
                            </div>

                            <div class="form-group">
                                <label>姓名</label>
                                <input class="form-control form-eName" name="name">
                            </div>

                            <div class="form-group">
                                <label>电话</label>
                                <input class="form-control form-phoneNum" name="phone">
                            </div>

                            <div class="form-group">
                                <label>邮箱</label>
                                <input class="form-control form-email" name="email">
                            </div>

                            <div class="form-group">
                                <label>员工权限</label>
                                <input class="form-control form-permission" name="permission">
                            </div>
                            <button type="submit" id="submitButton" class="btn btn-default">保存修改</button>
                        </form>
                    </div>
                </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="<%=basePath%>resources/js/jquery.js"></script>
    <script src="<%=basePath%>resources/js/admin.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%=basePath%>resources/js/bootstrap.min.js"></script>

    <script src="<%=basePath%>resources/js/employee.js"></script>

</body>

</html>
