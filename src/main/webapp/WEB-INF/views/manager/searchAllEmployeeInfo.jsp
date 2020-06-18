<%--
  Created by IntelliJ IDEA.
  User: ccc
  Date: 2019/6/29
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>员工信息</title>
</head>
<body>
<a class="btn btn-primary" href="">导出</a>
<div class="row clearfix">
    <div class="col-md-12 column">
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>id</th>
                <th>姓名</th>
                <th>身份证号码</th>
                <th>手机号</th>
                <th>性别</th>
                <th>部门</th>
                <th>职位</th>

            </tr>
            </thead>
            <tbody>
            <c:forEach items="${allEmployeeInfo}" var="employeeInfo">
                <tr>
                    <td>${employeeInfo.id}</td>
                    <td>${employeeInfo.name}</td>
                    <td>${employeeInfo.id_number}</td>
                    <td>${employeeInfo.phone_number}</td>
                    <td>${employeeInfo.gender}</td>
                    <td>${employeeInfo.dept_name}</td>
                    <td>${employeeInfo.position_name}</td>
                    <%--<td>--%>
                        <%--<a href="${pageContext.request.contextPath}/user/toUpdateUser?id=${userInfo.id}&username=${userInfo.username}&password=${userInfo.password}">更改</a> |--%>
                        <%--<a href="${pageContext.request.contextPath}/user/deleteUser.do/${userInfo.id}">删除</a>--%>
                    <%--</td>--%>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
