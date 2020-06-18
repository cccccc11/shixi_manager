<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="description" content="人力资源管理平台" />
	<title>人力资源管理平台</title>
	<link type="text/css" rel="stylesheet" href="../css/css1.css" />
</head>
<body >
<div class="header">
	<div class="top"> <img class="logo" src="../img1/logo.jpg" />
		<ul class="nav">
			<li ><a href="/login/toManager">首页</a></li>
			<li class="seleli"><a href="/managers/toAttendance">考勤信息</a></li>
			<li><a href="/managers/searchAllEmployeeInfo?dept_id=${currentManager.dept_id}">员工信息</a></li>
		</ul>
	</div>
</div>
<div class="container">
	<div class="leftbar">
		<div class="lm01"> <img class="peptx" src="../img/tximg.jpg" />
			<div class="pepdet">
				<p class="pepname">${currentManager.name}</p>
				<p>Manager</p>
				<p>${currentManager.dept_name}</p>
				<a href="/admin/logOff">注销</a>
			</div>
			<div class="clear"></div>
		</div>
		<div class="lm02">
			<div class="title"><img class="icon" src="../img/dataicon.jpg" />
				<h2>日历</h2>
			</div>
			<div class="detail"> <img class="" src="../img1/kj_01.jpg" /> </div>
		</div>
		<div class="lm03">
			<div class="title"><img style="padding-right:5px;" class="icon" src="../img/weaicon.jpg" />
				<h2>天气</h2>
			</div>
			<div class="detail"> <img class="" src="../img/kj_02.jpg" /> </div>
		</div>
	</div>
<div class="mainbody">
	<div class="salaryinfo">
        	<h1>考勤管理</h1>
   <div id="xingjian">
	    <br>
	    <button type="button" class="btn" title="新建"onclick="location.href='/managers/toAddAttendance'">
		   <i class="fa"></i> 新建
	    </button>
	    <button type="button" class="btn" title="导出"onclick="location.href='/managers/exportAttendance'">
		  <i class="fa"></i> 导出
	    </button>
    </div><!--xinjian-->
	<div class="correct">
	    <thead>
		<form action="" method="">
		<table border="" cellspacing="" cellpadding="" class="salarytable">
			<tr>
				<th class=""> 员工编号  </th>
				<th class="d">员工姓名  </th>
				<th class=""> 部门  </th>
				<th class=""> 职位  </th>
				<th class=""> 缺席  </th>
				<th class=""> 迟到  </th>
				<%--<th class=""> 惩罚原因  </th>--%>
				<%--<th class=""> 罚金  </th>--%>
				<%--<th class=""> 月份  </th>--%>
				<%--<th>年份</th>--%>
				<th>时间</th>
			</tr>
	    </thead>
		<c:forEach var="attendance" items="${allAttendance}">
			<tr>
				<td>${attendance.employee_id}</td>
				<td>${attendance.employee_name}</td>
				<td>${attendance.dept_name}</td>
				<td>${attendance.position}</td>
				<td>${attendance.absence}</td>
				<td>${attendance.late}</td>
				<td>${attendance.time}</td>
			</tr>
		</c:forEach>
	    </table>
		</form>					
									
	</div>
</div><!--mainbody-->
</div>
</div>
</body>
</html>
