<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <meta name="description" content="人力资源管理平台" />
   <title>人力资源管理平台</title>
   <link type="text/css" rel="stylesheet" href="../css1/css.css" />
</head>
<body>
<div class="header">
    <div class="top"> <img class="logo" src="../img1/logo.jpg" />
        <ul class="nav">
            <li><a href="/employee/toHomePage.do">首页</a></li>
            <li class="seleli"><a href="/employee/getInfo.do?id=${currentEmployee.id}">个人信息</a></li>
            <li ><a href="/employee/getWageInfo.do?id=${currentEmployee1.id}">工资查询</a></li>
        </ul>
    </div>
</div>
<div class="container">
  <div class="leftbar">
    <div class="lm01"> <img class="peptx" src="../img1/tximg.jpg" />
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
     
	<div class="userInfo">
		<form method="post"  action="/admin/employeeCorrectInfo.do">
        <p>
		   <label for="name">姓 名：</label>
		   <input type="text" name="name" id="name" value="${employeeDO.name}">
		    </p>
        <p>
		  <label for="password">密 码：</label>
		  <input type="password" name="password" id="password" value="${employeeDO.password}">
		  </p>
		<p>
		  <label for="phoneNumber">电 话：</label>
		  <input type="tel" name="phoneNumber" id="phoneNumber" value="${employeeDO.phoneNumber}"/>
		  </p>
		<p>
		  <label for="gender">性 别：</label>
		  <input type="text" name="gender" id="gender" name="gender" value="${employeeDO.gender}">
		  </p>
		<p>
		  <label for="deptId">部 门 编 号：</label>
		  <input type="text" id="deptId" name="deptId" readonly="readonly" value="${employeeDO.deptId}"/>
		  </p>
		<p>
		  <label for="positionId">职 位 编 号：</label>
		  <input type="text" id="positionId" name="positionId" readonly="readonly" value="${employeeDO.positionId}"/>
		  </p>
		<p>
		  <label for="id">工 号：</label>
		  <input type="text" id="id"  name="id" readonly="readonly" value="${employeeDO.id}"/>
		  </p>
		<p>
		  <label for="idNumber">身 份 证 号：</label>
		  <input type="text" id="idNumber" name="idNumber" value="${employeeDO.idNumber}"/>
		  </p>
		<input type="submit" value="提交">         
        <input type="reset" value="清空">
        </form>
    </div>	<!--userInfo-->	
  </div><!--info-->
   
  </div>
</div>
<div class="footer"></div>
</body>
</html>
