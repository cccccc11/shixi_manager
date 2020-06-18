
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
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
               <li><a href="/employee/getInfo.do?id=${currentEmployee.id}">个人信息</a></li>
               <li class="seleli"><a href="/employee/getWageInfo.do?id=${currentEmployee1.id}">工资查询</a></li>
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
        	<h1>工资表</h1>
    	 <table width="90%" class="salarytable">
    	 	 <thead>
            <tr>
                <th>时间</th>
                <th>工号</th>
                <th>姓名</th>
                <th>部门</th>
                <th>职位</th>
                <th>基本工资</th>
                <th>奖金</th>
                <th>罚金</th>
                <th>总计</th>
            </tr>
            </thead>
            <c:forEach var="wageInfo" items="${wageDOS}">
            <tr>
                <td>${wageInfo.time}</td>
                <td>${wageInfo.employeeId}</td>
                <td>${wageInfo.employeeName}</td>
                <td>${wageInfo.deptName}</td>
                <td>${wageInfo.position}</td>
                <td>${wageInfo.basicWage}</td>
                <td>${wageInfo.award}</td>
                <td>${wageInfo.punishMoney}</td>
                <td>${wageInfo.salary}</td>
            </tr>
            </c:forEach>

    	 </table>
    	 <a class="download" href="/employee/exportWageInfoExcel.do?id=${currentEmployee.id}">下载工资表</a>
        </div>
	    </div>
	    
  	</div>

</body>
</html>
