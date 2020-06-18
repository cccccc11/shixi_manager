<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <meta name="description" content="人力资源管理平台" />
   <title>人力资源管理平台</title>
   <link type="text/css" rel="stylesheet" href="../css1/css.css" />
    <%--<link type="text/css" rel="stylesheet" href="../css/css.css" />--%>
</head>
<body>
<div class="header">
  <div class="top"> <img class="logo" src="../img1/logo.jpg" />
    <ul class="nav">
      <li><a href="/employee/toHomePage.do">首页</a></li>
      <li class="seleli"><a href="/employee/getInfo.do?id=${currentEmployee.id}">个人信息</a></li>
      <li><a href="/employee/getWageInfo.do?id=${currentEmployee1.id}">工资查询</a></li>
    </ul>
  </div>
</div>
<div class="container">
  <div class="leftbar">
    <div class="lm01"> <img class="peptx" src="../../img1/tximg.jpg" />
      <div class="pepdet">
          <p class="pepname">${currentEmployee.name}</p>
          <p>Employee</p>
          <a href="/admin/logOff">注销</a>
      </div>
      <div class="clear"></div>
    </div>
    <div class="lm02">
      <div class="title"><img class="icon" src="../img1/dataicon.jpg" />
        <h2>日历</h2>
      </div>
      <div class="detail"> <img class="" src="../img1/kj_01.jpg" /> </div>
    </div>
    <div class="lm03">
      <div class="title"><img style="padding-right:5px;" class="icon" src="../img1/weaicon.jpg" />
        <h2>天气</h2>
      </div>
      <div class="detail"> <img class="" src="../img1/kj_02.jpg" /> </div>
    </div>
  </div>
  
  <div class="mainbody">
    <div class="info">
	    <h1>个人资料</h1>

        <!--数据列表-->
        <table id="dataList"  class="salarytable">
            <thead>
            <tr>

                <th class="sorting_asc">ID</th>
                <th class="sorting_desc">姓名</th>
                <th class="text-center">身份证号</th>
                <th class="text-center">联系方式</th>
                <th class="text-center">性别</th>
                <th class="text-center">部门名称</th>
                <th class="text-center">职位</th>
                <th class="text-center">操作</th>
            </tr>
            </thead>
            <thead>
            <td clss="text-center">${employeeVO.id}</td>
            <td clss="text-center">${employeeVO.name}</td>
            <td clss="text-center">${employeeVO.id_number}</td>
            <td clss="text-center">${employeeVO.phone_number}</td>
            <td clss="text-center">${employeeVO.gender}</td>
            <td clss="text-center">${employeeVO.dept_name}</td>
            <td clss="text-center">${employeeVO.position_name}</td>
            <td class="text-center">
                <a href="${pageContext.request.contextPath}/admin/employeeToCorrectInfo.do?id=${employeeVO.id}" class="btn bg-olive btn-xs">修改</a>
                    </td>
            </thead>
        </table>
    </div>
   
  </div>
</div>
<div class="footer"></div>
</body>
</html>